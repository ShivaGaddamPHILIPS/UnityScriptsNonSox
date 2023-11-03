
# Databricks notebook source
CREATE  TABLE IF NOT EXISTS prod_l2.foundation.skb1_mp1
LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//POCA/QVDs/SKB1_MP1'
COMMENT 'skb1_mp1';

ALTER TABLE  prod_l2.foundation.skb1_mp1
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