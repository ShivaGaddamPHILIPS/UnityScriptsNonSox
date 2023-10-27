
                        -- Databricks notebook source
                        CREATE  TABLE IF NOT EXISTS prod_l2.lfbk_mcp
                        LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//BSIK/QVDs/LFBK_MCP'
                        COMMENT 'lfbk_mcp';

                        ALTER TABLE  prod_l2.foundation.lfbk_mcp
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