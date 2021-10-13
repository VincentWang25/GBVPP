import pandas as pd


def add_features(df):
    df['area'] = df['time_step'] * df['u_in']
    df['area'] = df.groupby('breath_id')['area'].cumsum()

    df['u_in_cumsum'] = (df['u_in']).groupby(df['breath_id']).cumsum()

    # for shift in range(1, 5):
    #     df[f'u_in_lag{shift}'] = df.groupby('breath_id')['u_in'].shift(shift)
    #     df[f'u_out_lag{shift}'] = df.groupby('breath_id')['u_out'].shift(shift)
    #     df[f'u_in_lag_back{shift}'] = df.groupby('breath_id')['u_in'].shift(-shift)
    #     df[f'u_out_lag_back{shift}'] = df.groupby('breath_id')['u_out'].shift(-shift)
    #     df[f'u_in_diff{shift}'] = df['u_in'] - df[f'u_in_lag{shift}']
    #     df[f'u_out_diff{shift}'] = df['u_out'] - df[f'u_out_lag{shift}']

    df['u_in_lag2'] = df['u_in'].shift(2).fillna(0)
    df['u_in_lag4'] = df['u_in'].shift(4).fillna(0)
    df['R'] = df['R'].astype(str)
    df['C'] = df['C'].astype(str)
    df = pd.get_dummies(df)

    g = df.groupby('breath_id')['u_in']
    df['ewm_u_in_mean'] = g.ewm(halflife=10).mean()\
                           .reset_index(level=0, drop=True)
    df['ewm_u_in_std'] = g.ewm(halflife=10).std()\
                          .reset_index(level=0, drop=True)
    df['ewm_u_in_corr'] = g.ewm(halflife=10).corr()\
                           .reset_index(level=0, drop=True)

    df['rolling_10_mean'] = g.rolling(window=10, min_periods=1).mean()\
                             .reset_index(level=0, drop=True)
    df['rolling_10_max'] = g.rolling(window=10, min_periods=1).max()\
                            .reset_index(level=0, drop=True)
    df['rolling_10_std'] = g.rolling(window=10, min_periods=1).std()\
                            .reset_index(level=0, drop=True)

    df['expand_mean'] = g.expanding(2).mean()\
                         .reset_index(level=0, drop=True)
    df['expand_max'] = g.expanding(2).max()\
                        .reset_index(level=0, drop=True)
    df['expand_std'] = g.expanding(2).std()\
                        .reset_index(level=0, drop=True)
    df = df.fillna(0)
    # df['breath_id__u_in__max'] = df.groupby(['breath_id'])['u_in'].transform('max')
    # df['breath_id__u_in__mean'] = df.groupby(['breath_id'])['u_in'].transform('mean')
    # df['breath_id__u_out__mean'] = df.groupby(['breath_id'])['u_out'].transform('mean')
    #
    # df['breath_id__u_in__diffmax'] = df['breath_id__u_in__max'] - df['u_in']
    # df['breath_id__u_in__diffmean'] = df['breath_id__u_in__mean'] - df['u_in']
    #
    # df['cross'] = df['u_in'] * (1 - df['u_out'])
    # df['cross2'] = df['time_step'] * (1 - df['u_out'])
    #
    # df['R'] = df['R'].astype(str)
    # df['C'] = df['C'].astype(str)
    # df['R__C'] = df["R"].astype(str) + '__' + df["C"].astype(str)
    # df = pd.get_dummies(df)
    return df