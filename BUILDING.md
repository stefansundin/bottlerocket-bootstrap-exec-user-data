You can build the docker image by running:

```shell
# Simple build for your current architecture:
docker build --pull --progress plain -t bottlerocket-bootstrap-exec-user-data .
```

To build a multi-arch docker image you can run:

```shell
# Use buildx to build multi-arch images:
docker buildx create --use --name multiarch --node multiarch0

# You probably want to change the tag name if you are not me:
docker buildx build --pull --push --progress plain --platform linux/arm64,linux/amd64 -t public.ecr.aws/stefansundin/bottlerocket-bootstrap-exec-user-data:v0.2.0 .

# If the new version is stable then update latest:
docker buildx imagetools create -t public.ecr.aws/stefansundin/bottlerocket-bootstrap-exec-user-data:latest public.ecr.aws/stefansundin/bottlerocket-bootstrap-exec-user-data:v0.2.0
```
