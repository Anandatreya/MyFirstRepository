@echo off
REM This AWS cloudFormation script Updates an existing CloudFormation stack
REM IT needs a) stack name b) YML format resource file c) JSON format paramete file as command line parameters
@echo on
aws cloudformation update-stack --stack-name %1 --region us-west-2 --template-body file://%2 --parameters file://%3 --capabilities CAPABILITY_NAMED_IAM 