
                        -- Databricks notebook source
                        CREATE  TABLE IF NOT EXISTS prod_l2.bkpf_rmkp_mp1
                        LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//BSIK/QVDs/BKPF_RMKP_MP1'
                        COMMENT 'bkpf_rmkp_mp1';

                        ALTER TABLE  prod_l2.foundation.bkpf_rmkp_mp1
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