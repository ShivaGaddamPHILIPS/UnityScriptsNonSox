
# Databricks notebook source
CREATE  TABLE IF NOT EXISTS prod_l2.foundation.bkpf_mp1_2022
LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//MJV/QVDs/MP1/BKPF_MP1_2022'
COMMENT 'bkpf_mp1_2022';

ALTER TABLE  prod_l2.foundation.bkpf_mp1_2022
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