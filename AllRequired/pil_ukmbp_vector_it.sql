
# Databricks notebook source
CREATE  TABLE IF NOT EXISTS prod_l2.foundation.pil_ukmbp_vector_it
LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//CMAR/QVDs/PIL_UKMBP_VECTOR_IT'
COMMENT 'pil_ukmbp_vector_it';

ALTER TABLE  prod_l2.foundation.pil_ukmbp_vector_it
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