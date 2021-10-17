#!/bin/bash

echo " \n Please input Cluster_ID which received with terraform Apply "
read clust_id

## Below Command will bring cluster name
## aws emr list-clusters --cluster-states WAITING

aws emr add-steps --cluster-id $clust_id  --steps Type=Spark,Name="DevOps-Test",ActionOnFailure=CONTINUE,Args=s3://devops-test-results-1122/health_violations.py,--data_source,s3://devops-test-results-1122/food_establishment_data.csv,--output_uri,s3://devops-test-results-1122/emr-cluster-logs/

