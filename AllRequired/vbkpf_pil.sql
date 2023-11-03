
# Databricks notebook source
CREATE  TABLE IF NOT EXISTS prod_l2.foundation.vbkpf_pil
LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//BSIK/QVDs/VBKPF_PIL'
COMMENT 'vbkpf_pil';

ALTER TABLE  prod_l2.foundation.vbkpf_pil
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