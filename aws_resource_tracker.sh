#!/bin/bash
######################
# Author: Neha
# Date : 23/05/2026
# Version : v1
#
# This script will report the aws resource usage
#
######################
# AWS S3
# AWS EC2 
# AWS Lambda
# AWS IAM Users

set -x
#list s3 buckets
echo "print list of s3 buckets"
aws s3 ls >> resourceTracker

#list EC2 instances
echo "print list of ec2 instances"
aws ec2 describe-instances >> resourceTracker

#list aws lambda 
echo "print list of lambda funstions"
aws lambda list-functions >> resourceTracker

#list IAM users
echo "print list of IAM users"
aws iam list-users >> resourceTracker
