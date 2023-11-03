
# Databricks notebook source
CREATE  TABLE IF NOT EXISTS prod_l2.foundation.pil_ukmbp_cms_sgm
LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//CMAR/QVDs/PIL_UKMBP_CMS_SGM'
COMMENT 'pil_ukmbp_cms_sgm';

ALTER TABLE  prod_l2.foundation.pil_ukmbp_cms_sgm
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