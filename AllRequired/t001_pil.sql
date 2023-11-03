
# Databricks notebook source
CREATE  TABLE IF NOT EXISTS prod_l2.foundation.t001_pil
LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//POCA/QVDs/T001_PIL'
COMMENT 't001_pil';

ALTER TABLE  prod_l2.foundation.t001_pil
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