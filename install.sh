#!/bin/bash

set -ex

NODE_VERSION=10.x

curl -sL https://rpm.nodesource.com/setup_${NODE_VERSION} | bash -

yum -y install nodejs

yum clean all -y

npm install -g @angular/cli@9.x