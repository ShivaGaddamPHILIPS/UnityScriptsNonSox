
                        -- Databricks notebook source
                        CREATE  TABLE IF NOT EXISTS prod_l2.skb1_mbp
                        LOCATION 'abfss://silver@az21p1datalakewe.dfs.core.windows.net/im/L2/Jupiter//POCA/QVDs/SKB1_MBP'
                        COMMENT 'skb1_mbp';

                        ALTER TABLE  prod_l2.foundation.skb1_mbp
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