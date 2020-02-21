#!/bin/sh
cwd=`dirname "$0"`
expr "$0" : "/.*" > /dev/null || cwd=`(cd "$cwd" && pwd)`

echo "set enviromental variables ...."
source ${cwd}/setenv.sh

cd ${cwd}

echo "terraform init ...."
terraform init

echo "terraform plan ...."
terraform plan -out ${cwd}/tf.plan

echo "terraform apply ...."
terraform apply ${cwd}/tf.plan

echo "terraform show ...."
terraform show
