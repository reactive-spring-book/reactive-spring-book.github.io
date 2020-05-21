#!/bin/bash

platform='unknown'
unamestr=$(uname)
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'FreeBSD' ]]; then
   platform='freebsd'
elif [[ "$unamestr" == 'Darwin' ]]; then
    platform='osx'
fi

ce_dir=$(cd $(dirname $0) && pwd)
ce_bin_dir=${ce_dir}/bin/${platform}
export PATH=$PATH:$ce_bin_dir

cf login -a $CF_API -u $CF_USER -p $CF_PASSWORD -o $CF_ORG -s $CF_SPACE
cf push -f manifest.yml


