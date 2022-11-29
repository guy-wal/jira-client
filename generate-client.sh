#!/usr/bin/env bash
AXIOS_PACKAGE_NAME=jira-cloud-client-ts-axios
mkdir $AXIOS_PACKAGE_NAME
cd $AXIOS_PACKAGE_NAME
npx @openapitools/openapi-generator-cli generate \
-i https://developer.atlassian.com/cloud/jira/platform/swagger-v3.v3.json \
--enable-post-process-file -g typescript-axios -o . --additional-properties=npmName=@wised/$AXIOS_PACKAGE_NAME,npmRepository=https://wised.jfrog.io/artifactory/api/npm/wised-npm-repo/,paramNaming=original,enumPropertyNaming=original --skip-validate-spec

npm install
npm run build
npm publish
