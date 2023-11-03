
# Databricks notebook source
CREATE  TABLE IF NOT EXISTS prod_l2.foundation.pil_knkk_fscm
LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//CMAR/QVDs/PIL_KNKK_FSCM'
COMMENT 'pil_knkk_fscm';

ALTER TABLE  prod_l2.foundation.pil_knkk_fscm
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