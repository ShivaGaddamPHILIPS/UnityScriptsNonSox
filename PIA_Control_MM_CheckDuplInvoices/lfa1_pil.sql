
# Databricks notebook source
CREATE  TABLE IF NOT EXISTS prod_l2.foundation.lfa1_pil
LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//BSIK/QVDs/LFA1_PIL'
COMMENT 'lfa1_pil';

ALTER TABLE  prod_l2.foundation.lfa1_pil
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