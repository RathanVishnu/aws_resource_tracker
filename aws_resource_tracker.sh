#!/bin/bash

########################
#Author: rathan
#Date: 07th-june
#
#version:v1
#
#this script will report the aws resource usage
########################

#to show it int the debug mode we use the below command
set -x
#AWS s3
#AWS ec2
#AWS Lambda
#AWS IAM users

# list s3 buckets
echo "print list of s3 buckets"
aws s3 ls

# list ec2 instances
echo "print list of ec2 buckets"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


#list lambda
echo "print list of lambda buckets"
aws lambda list-functions

#list Iam users
echo "print list of IAM Users buckets"
aws iam list-users
