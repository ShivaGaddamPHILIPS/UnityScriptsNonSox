
# Databricks notebook source
CREATE  TABLE IF NOT EXISTS prod_l2.foundation.kna1_pr1
LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//BSID/QVDs/KNA1_PR1'
COMMENT 'kna1_pr1';

ALTER TABLE  prod_l2.foundation.kna1_pr1
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