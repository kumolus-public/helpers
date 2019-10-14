# Kumolus Helper Scripts
> Collection of Customer On-Boarding Scripts for Kumolus Application

## About Kumolus

Kumolus is a Cloud Management Tool that supports resource and cost management on multiple cloud platforms like AWS, Azure and Net App On-Tap-Cloud. Kumolus also takes care of template automation as well as management of your backup/DR resources. 

To know more visit https://kumolus.com

## About this Repository

This repository is a collection of templates to fetch relevant metadata from your cloud accounts into Kumolus. 

## Instructions for Setting up AWS Adapters

### Prerequisites 

- You need to have an AWS Account or a set of linked AWS Organizations Accounts
- Root or Admin level permissions (one time) to configure your IAM roles, policies and to run the cloudformation template. 

### Steps to Configure

> Download/Copy the JSON or YAML to a file before proceeding. 

+ Login to your AWS Account(s) where you need to create the role 
+ Go to Cloudformation from the Services dropdown 
+ Click on Create Stack and upload the template file as per your account requirements
+ Provide the stack name and role name in the next step. Leave all other values as default. 
+ Execute the cloudformation script, you will get the IAM Role ARN as your output. 
+ Copy the role ARN and use it to configure your Kumolus adapter(s).

**Note:** *Consolidated Billing adapters will require the payer account script and normal/backup adapters require the normal account script to be run as per your AWS Account setup.* 

You can also view our helpdesk documentation for a detailed setup reference - [Kumolus Helpdesk - Setup Reference](https://kumolus.zendesk.com/hc/en-us/articles/360001118216-Setting-Up-Kumolus-for-the-first-time)
