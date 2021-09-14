all: build-secrets deploy-secrets deploy-s3fs

build-secrets:
	sed  "s#COS_ACCESS_KEY_ID#`printf ${COS_ACCESS_KEY_ID} |base64`#;	\
	s#COS_SECRET_ACCESS_KEY#`printf ${COS_SECRET_ACCESS_KEY} |base64`#; \
	s#SFTP_USER#`printf ${SFTP_USER} |base64`#; \
	s#SFTP_PASSWORD#`printf ${SFTP_PASSWORD} |base64`#; \
	s#S3_BUCKET#`printf ${S3_BUCKET} |base64`#; \
	s#SSH_KEY#`cat ${SSH_KEY} |base64`#;" \
	s3fs-secret.yaml.tmpl > s3fs-secret.yaml

deploy-secrets:
	kubectl create -f ./s3fs-secret.yaml
deploy-s3fs:
	kubectl create -f ./s3fs-kubernetes.yaml
