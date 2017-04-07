#!/usr/bin/env bash

# Configure logging to print line numbers
export PS4='+(${BASH_SOURCE}:${LINENO}): ${FUNCNAME[0]:+${FUNCNAME[0]}(): }'

# Set colours
GREEN="\e[32m"
WHITE="\e[0m"

if [ ! -f "$HOME/.m2/repository/org/apache/activemq/activemq-artemis/2.0.0/activemq-artemis-2.0.0-bin.zip" ]; then
    curl -L https://www.apache.org/dist/activemq/activemq-artemis/2.0.0/apache-artemis-2.0.0-bin.zip -o apache-artemis-2.0.0-bin.zip
    mvn install:install-file -Dfile=apache-artemis-2.0.0-bin.zip -DgroupId=org.apache.activemq -DartifactId=activemq-artemis -Dversion=2.0.0 -Dpackaging=zip -Dclassifier=bin
fi

ls -lrt "$HOME/.m2/repository/org/apache/activemq/activemq-artemis/2.0.0/activemq-artemis-2.0.0-bin.zip"