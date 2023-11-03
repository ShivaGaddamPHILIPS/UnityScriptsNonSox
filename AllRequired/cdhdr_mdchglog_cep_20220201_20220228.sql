
# Databricks notebook source
CREATE  TABLE IF NOT EXISTS prod_l2.foundation.cdhdr_mdchglog_cep_20220201_20220228
LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//ICS_Ctrls/QVDs/CDHDR_MDCHGLOG_CEP_20220201_20220228'
COMMENT 'cdhdr_mdchglog_cep_20220201_20220228';

ALTER TABLE  prod_l2.foundation.cdhdr_mdchglog_cep_20220201_20220228
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