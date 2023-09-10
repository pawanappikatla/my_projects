#!/bin/bash

################
# Author : PawanAppikatla
# Date   : 10/09/2023
# Version: v1
#
# This script will report the Aws resource usage 
##################

# Aws s3
# Aws Ec2
# Aws Lambda
# Aws IAM Users

set -x

# list s3 buckets
echo "print list of s3 buckets"
aws s3 ls > resource

# list Ec2 Instances
echo "print list of Ec2"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda
echo "print list of lambda "
aws lambda list-functions >> resource

# list IAM Users

aws iam list-users 
