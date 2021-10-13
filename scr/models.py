from torch import nn


class Model(nn.Module):
    def __init__(self, input_size, config, act=nn.SiLU(inplace=False)):
        super().__init__()
        hidden = config.hidden
        use_bi = config.bidirectional
        self.lstms = nn.ModuleList([
            nn.LSTM((1+use_bi) * hidden[i-1], hidden[i], batch_first=True, bidirectional=use_bi)
            if i > 0 else nn.LSTM(input_size, hidden[0], batch_first=True, bidirectional=use_bi)
            for i in range(len(config.hidden))
        ])
        self.head = nn.Sequential(
            nn.Linear(hidden[-1] * 2, config.nh), nn.BatchNorm1d(config.nh), nn.Dropout(config.do_prob), act,
            nn.Linear(config.nh, config.nh), nn.BatchNorm1d(config.nh), nn.Dropout(config.do_prob), act,
            nn.Linear(config.nh, 1),
        )
        self._reinitialize()

    def _reinitialize(self):
        """
        Tensorflow/Keras-like initialization
        """
        for name, p in self.named_parameters():
            if 'lstm' in name:
                if 'weight_ih' in name:
                    nn.init.xavier_uniform_(p.data)
                elif 'weight_hh' in name:
                    nn.init.orthogonal_(p.data)
                elif 'bias_ih' in name:
                    p.data.fill_(0)
                    # Set forget-gate bias to 1
                    n = p.size(0)
                    p.data[(n // 4):(n // 2)].fill_(1)
                elif 'bias_hh' in name:
                    p.data.fill_(0)
            # elif 'head' in name:
            #     if 'weight' in name:
            #         nn.init.xavier_uniform_(p.data)
            #     elif 'bias' in name:
            #         p.data.fill_(0)

    def forward(self, x):
        for i in range(len(self.lstms)):
            x, _ = self.lstms[i](x)
        x = x.reshape(x.shape[0] * x.shape[1], -1)
        x = self.head(x)
        x = x.reshape(-1, 80, 1)
        return x
