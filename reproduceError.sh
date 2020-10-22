aws --endpoint-url=http://localhost:4566 lambda create-function \
    --region us-east-1 \
    --function-name localstack-issue \
    --runtime java11 \
    --handler localstack.issue.Handler \
    --memory-size 512 \
    --zip-file fileb://build/libs/localstack-issue-all.jar \
    --timeout 60 \
    --role arn:aws:iam::123456:role/irrelevant

aws --endpoint-url=http://localhost:4566 lambda invoke \
    --function-name localstack-issue \
    --cli-binary-format raw-in-base64-out --payload file://input.json response.json

cat response.json

aws --endpoint-url=http://localhost:4566 logs tail /aws/lambda/localstack-issue