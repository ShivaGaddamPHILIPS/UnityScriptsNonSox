
                        -- Databricks notebook source
                        CREATE  TABLE IF NOT EXISTS prod_l2.bsik_spc
                        LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//BSIK/QVDs/BSIK_SPC'
                        COMMENT 'bsik_spc';

                        ALTER TABLE  prod_l2.foundation.bsik_spc
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