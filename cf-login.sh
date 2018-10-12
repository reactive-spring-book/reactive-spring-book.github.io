#!/bin/bash
export CF_SPACE=cloud-native-java
./cf login -a $CF_API -u $CF_USER -p $CF_PASSWORD -o $CF_ORG -s $CF_SPACE
