
# Databricks notebook source
CREATE  TABLE IF NOT EXISTS prod_l2.foundation.pil_ukmcomm_typest
LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//CMAR/QVDs/PIL_UKMCOMM_TYPEST'
COMMENT 'pil_ukmcomm_typest';

ALTER TABLE  prod_l2.foundation.pil_ukmcomm_typest
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