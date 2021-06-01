import pandas as pd

def set_df_col_names(df, new_col_names):
    """Set the column names of given dataframe."""
    df.columns = new_col_names
    return df

def flatten_cols(df):
    """Flatten multi-index column names into single column name."""
    df.columns = df.columns.to_flat_index()
    return df

def strip_col_whitespace(df):
    """Strip whitespace at both ends of column names."""
    df.columns = df.columns.str.strip()
    return df