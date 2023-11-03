
# Databricks notebook source
CREATE  TABLE IF NOT EXISTS prod_l2.foundation.usr02_mcp
LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//MJV/QVDs/MCP/USR02_MCP'
COMMENT 'usr02_mcp';

ALTER TABLE  prod_l2.foundation.usr02_mcp
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