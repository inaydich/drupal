#!/bin/bash -ex

rpm -Uvh http://yum.newrelic.com/pub/newrelic/el5/x86_64/newrelic-repo-5-3.noarch.rpm || true
yum install -y newrelic-php5 || true

export NR_INSTALL_SILENT=true
export NR_INSTALL_KEY=99b7366fc2ac98b4424af8ceb0445dc159e02321
newrelic-install install
