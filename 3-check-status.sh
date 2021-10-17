#!/bin/bash
echo "\n Please add Step-id which was appeared at the end of the last command"
read step_id

aws emr describe-step --cluster-id j-151GJN5YDDCAZ --step-id $step_id
