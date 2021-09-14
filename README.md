# Run a SFTP server with IBM CLOUD Object storage in Kubernetes




## Run in Kubernetes
```
export COS_ACCESS_KEY_ID=xxxxx
export COS_SECRET_ACCESS_KEY=xxxx
export SFTP_USER=admin
export SFTP_PASSWORD=password
export SSH_KEY=~/.ssh/id_rsa.pub
export S3_BUCKET=mybucket
export S3_KEY=/
make
```

details http://blog.bonesoul.com/sftp-s3-kubernetes/