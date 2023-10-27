
                        -- Databricks notebook source
                        CREATE  TABLE IF NOT EXISTS prod_l2.tcurx_chp
                        LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//BSIK/QVDs/TCURX_CHP'
                        COMMENT 'tcurx_chp';

                        ALTER TABLE  prod_l2.foundation.tcurx_chp
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