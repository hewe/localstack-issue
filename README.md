Code sample to reproduce issue captured under ticket:
https://github.com/localstack/localstack/issues/3157

Commands used to reproduce error:
```shell script
gradle clean build shadowJar

bash reproduceError.sh
```