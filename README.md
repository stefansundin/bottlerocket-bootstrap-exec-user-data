This is a bootstrap container for Bottlerocket that you can use to easily run arbitrary scripts. It executes whatever you put in the user-data so you don't have to make a custom docker image for every particular thing.

The docker image is [super](Dockerfile) [simple](main.sh) and based on `debian:bullseye-slim`.

Here's an example of how to use it in your Bottlerocket user data:

```toml
[settings.bootstrap-containers.hello]
source = "public.ecr.aws/stefansundin/bottlerocket-bootstrap-exec-user-data:latest"
mode = "always"
essential = false
user-data = "IyEvYmluL2Jhc2gKZWNobyAiSGVsbG8gV29ybGQhIgo="
```

The `user-data` contains the data of file to execute (usually a bash script), encoded using base64. You can generate it like this:

```shell
cat << 'EOF' | base64
#!/bin/bash
echo "Hello World!"
EOF
```
