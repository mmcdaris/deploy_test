#!/bin/sh
# See http://help.airbrake.io/kb/api-2/deploy-tracking for details

API_KEY=$2
ENVIRONMENT=$1
REPO=git://github.com/mmcdaris/deploy_test
REVISION=`git log -n 1 --pretty=format:'%h' master`

curl -d "api_key=${API_KEY}&deploy[rails_env]=${ENVIRONMENT}&deploy[scm_repository]=${REPO}&deploy[scm_revision]=${REVISION}&deploy[local_username]=${USER}" http://airbrake.io/deploys
