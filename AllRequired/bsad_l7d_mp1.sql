
# Databricks notebook source
CREATE  TABLE IF NOT EXISTS prod_l2.foundation.bsad_l7d_mp1
LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//BSID/QVDs/BSAD_L7D_MP1'
COMMENT 'bsad_l7d_mp1';

ALTER TABLE  prod_l2.foundation.bsad_l7d_mp1
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