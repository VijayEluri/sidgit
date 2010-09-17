#!/bin/bash

DATA=$1

AUTH=`cat auth-token`

# encode model name
model=`echo $DATA | perl -pe 's:/:%2F:'`

# get model meta-data
curl -k \
-H "Authorization: GoogleLogin auth=$AUTH" \
"https://www.googleapis.com/prediction/v1.1/training/$model"
echo