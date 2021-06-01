import pandas as pd
import os
import re

def extract_table_to_df(tablename, db_connection):
    """Extract table from database into python dataframe."""
    return pd.read_sql_query(f"SELECT * FROM {tablename}", db_connection)

def extract_xlabtxt_to_df(filename):
    """Extract XLab txt file into python dataframe."""
    df = pd.read_csv(filename, skiprows=[0,1], delimiter = "\t")
    df.columns = df.columns.str.strip()
    df = df.set_index('material_uid').T
    return df

def extract_xlabtxts_to_df(measurement_type, directory):
    """Extract directory of XLab txt files into single python dataframe."""
    df_list = []
    for filename in os.listdir(directory):
        if re.match(measurement_type, filename):
            df = extract_xlabtxt_to_df(f'{directory}/{filename}')
            df_list.append(df)
    return pd.concat(df_list)

