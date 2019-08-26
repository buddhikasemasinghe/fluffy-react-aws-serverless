echo "Deploying from Travis CI to S3"

docker run $(printenv | grep -E '^AWS' | sed 's/AWS_/-e /g' | sed 's/-e /-e AWS_/g') fluffy-react-aws