#!/bin/bash

rm -rf public_html/*
cp -r template_public_html/* public_html/*
pushd public_html
wget https://jenkins.open-scap.org/job/static_openscap_docs/lastSuccessfulBuild/artifact/static.open-scap.org.zip
unzip static.open-scap.org.zip
rm static.open-scap.org.zip
popd

exec /usr/libexec/s2i/run
