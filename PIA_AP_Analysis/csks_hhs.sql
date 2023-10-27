
                        -- Databricks notebook source
                        CREATE  TABLE IF NOT EXISTS prod_l2.csks_hhs
                        LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//POCA/QVDs/CSKS_HHS'
                        COMMENT 'csks_hhs';

                        ALTER TABLE  prod_l2.foundation.csks_hhs
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