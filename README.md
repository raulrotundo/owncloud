# ownCloud

ownCloud is an open-source file sync, share and content collaboration software that lets teams work on data easily from anywhere, on any device.

## Run onwCloud with Docker

1. Make a copy of mysql.env.example with the name: mysql.env within the same directory.
2. Run:
    ```
    docker-compose -f docker/docker-compose.yml up -d
    ```
3. Go to http://localhost:30033

## Deploy ownCloud on Kubernetes

1. Set on your .bashrc the following configuration:
    ```
    # ownCloud
    export OWNCLOUD_PASSWORD=your-password
    export OWNCLOUD_DATABASE=database-name
    ```

2. Create the secret configuration using the following command:

    ```
    ./kubernetes/secret.sh
    ```
   
3. Deploy your pods:

    ```
    kubectl apply -f kubernetes/
    ```

4. Go to http://localhost:30033