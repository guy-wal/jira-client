# openapi jira-client

## Client Generation Instructions

1. `npmrc` file must include:

```
@wised:registry=https://wised.jfrog.io/artifactory/api/npm/wised-npm-repo/
//wised.jfrog.io/artifactory/api/npm/wised-npm-repo/:_authToken=${WISED_PRIVATE_REPOSITORY_ACCESS_TOKEN}
```

> **_NOTE:_** your env must contain `WISED_PRIVATE_REPOSITORY_ACCESS_TOKEN` env var

2. run `chmod +x generate-client.sh`
3. run `./generate-client.sh`
