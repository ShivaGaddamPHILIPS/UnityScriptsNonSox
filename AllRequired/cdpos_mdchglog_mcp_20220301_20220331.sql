
# Databricks notebook source
CREATE  TABLE IF NOT EXISTS prod_l2.foundation.cdpos_mdchglog_mcp_20220301_20220331
LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//ICS_Ctrls/QVDs/CDPOS_MDCHGLOG_MCP_20220301_20220331'
COMMENT 'cdpos_mdchglog_mcp_20220301_20220331';

ALTER TABLE  prod_l2.foundation.cdpos_mdchglog_mcp_20220301_20220331
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