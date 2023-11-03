
# Databricks notebook source
CREATE  TABLE IF NOT EXISTS prod_l2.foundation.bkpf_cep_2023
LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//MJV/QVDs/CEP/BKPF_CEP_2023'
COMMENT 'bkpf_cep_2023';

ALTER TABLE  prod_l2.foundation.bkpf_cep_2023
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