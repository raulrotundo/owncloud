#!/bin/bash
# Create a secret with several keys
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Secret
metadata:
  name: owncloud-secret
type: Opaque
data:
  password: $(echo -n ${OWNCLOUD_PASSWORD} | base64 -w0)
  database: $(echo -n ${OWNCLOUD_DATABASE} | base64 -w0)
EOF
