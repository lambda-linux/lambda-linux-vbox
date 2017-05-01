# Release

Build and run docker image

```
docker build -t lambda-linux-vbox-release .

docker run --rm -v `pwd`:`pwd` \
  -ti lambda-linux-vbox-release \
  /sbin/my_init -- /sbin/setuser ll-user /bin/bash -l
```

To create release, first update, commit and push `release/release.yaml`. Then

```
./release --github_security_token xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx \
  --iso ../lambda-linux-vbox.iso \
  --pre_release=1

./release --github_security_token xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx \
  --iso ../lambda-linux-vbox.iso
```
