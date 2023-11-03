
# Databricks notebook source
CREATE  TABLE IF NOT EXISTS prod_l2.foundation.t001_spc
LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//BSID/QVDs/T001_SPC'
COMMENT 't001_spc';

ALTER TABLE  prod_l2.foundation.t001_spc
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