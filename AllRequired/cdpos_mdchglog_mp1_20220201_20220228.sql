
# Databricks notebook source
CREATE  TABLE IF NOT EXISTS prod_l2.foundation.cdpos_mdchglog_mp1_20220201_20220228
LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//ICS_Ctrls/QVDs/CDPOS_MDCHGLOG_MP1_20220201_20220228'
COMMENT 'cdpos_mdchglog_mp1_20220201_20220228';

ALTER TABLE  prod_l2.foundation.cdpos_mdchglog_mp1_20220201_20220228
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