
                        -- Databricks notebook source
                        CREATE  TABLE IF NOT EXISTS prod_l2.bkpf_rmkp_cep
                        LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//BSIK/QVDs/BKPF_RMKP_CEP'
                        COMMENT 'bkpf_rmkp_cep';

                        ALTER TABLE  prod_l2.foundation.bkpf_rmkp_cep
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