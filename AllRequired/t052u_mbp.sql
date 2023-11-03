
# Databricks notebook source
CREATE  TABLE IF NOT EXISTS prod_l2.foundation.t052u_mbp
LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//BSID/QVDs/T052U_MBP'
COMMENT 't052u_mbp';

ALTER TABLE  prod_l2.foundation.t052u_mbp
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