
# Databricks notebook source
CREATE  TABLE IF NOT EXISTS prod_l2.foundation.bljv_docs2_p_2023
LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//ODW/QVDs/BLJV_Docs2_P_2023'
COMMENT 'bljv_docs2_p_2023';

ALTER TABLE  prod_l2.foundation.bljv_docs2_p_2023
SET TBLPROPERTIES (
  'delta.autoOptimize.optimizeWrite' = 'true',
  'delta.autoOptimize.autoCompact' = 'false',
  'delta.enableChangeDataFeed' = 'true',
  'delta.tuneFileSizesForRewrites' = 'true',
  'certified' = 'no',
  'pii_data'='no', 
  'primary_source' = 'yes',
  'sox_compliance' = 'no'
); 