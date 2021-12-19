#!/bin/bash
mvn -f ./pom.xml clean install -U -Dcucumber.options="--tags @imDB"