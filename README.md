# circleci-docker-machine-node-aws

General purpose container aimed at docker builds and testing on circleci.
NOTE: This is intended for running CI tests, not for running in production.

# Build

Simply run

```
docker build . --tag keyco/circleci-docker-machine-node-aws:1.0
```

# Publish to Dockerhub

Note: This will publish the image to Dockerhub with **public** visibility! 

```
# Follow the prompts and provide our shared Dockerhub creds.
docker login

docker push keyco/circleci-docker-machine-node-aws:1.0
```
