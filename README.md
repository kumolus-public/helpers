# CSMP Helper Scripts
> Collection of Customer On-Boarding Scripts for CSMP Application

## About CSMP

CSMP (Cost and Security Management Platform) is CloudBolt Cost and Security Management platform that supports resource and cost management on multiple cloud platforms like AWS, Azure, GCP, VMWare. CSMP also takes care of template automation as well as management of your backup/DR resources. 

To know more visit https://docs.cloudbolt.io/articles/#!cloudbolt-csmp-latest/introduction

## About this Repository

This repository is a collection of templates to fetch relevant metadata from your cloud accounts into CSMP. 

## Instructions for Setting up AWS Adapters

### Prerequisites 

- You need to have an AWS Account or a set of linked AWS Organizations Accounts
- Root or Admin level permissions (one time) to configure your IAM roles, policies and to run the cloudformation template. 

### Steps to Configure

> Download/Copy the JSON or YAML to a file as per your use case. 

### For CSMP Billing Adapter

| Policies Require  				| Folder Prefix 	| CloudFormation File Name 					 |
| --------------------------------- | ----------------- | ------------------------------------------ |
| Cost & Billing Read Only  		| billing-adapter/ 	| CSMP-billing-credentials-ro.json  		 |
| Cost & Billing Read & Configure  	| billing-adapter/ 	| CSMP-billing-credentials-rw.json  		 |

### For CSMP Normal / Backup Adapter

| Policies Require  	| Folder Prefix 			| CloudFormation File Name 					 |
| ----------------------| ------------------------- | ------------------------------------------ |
| Inventory Read Only  	| normal-or-backup-adapter/ | csmp-normal-read-only-credentials.json  |
| Inventory Automation  | normal-or-backup-adapter/ | csmp-normal-automation-credentials.json |
| Inventory Provision  	| normal-or-backup-adapter/ | csmp-normal-provision-credentials.json  |

+ Login to your AWS Account(s) where you need to create the role 
+ Go to Cloudformation from the Services dropdown 
+ Click on Create Stack and upload the template file as per your account requirements
+ Provide the stack name and role name in the next step. Leave all other values as default. 
+ Execute the cloudformation script, you will get the IAM Role ARN as your output. 
+ Copy the role ARN and use it to configure your CSMP adapter(s).


You can also view our helpdesk documentation for a detailed setup reference - [CSMP Helpdesk - Setup Reference](https://docs.cloudbolt.io/articles/#!cloudbolt-csmp-latest/getting-started)
