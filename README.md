# ownCloud

ownCloud is an open-source file sync, share and content collaboration software that lets teams work on data easily from anywhere, on any device.

## Run onwCloud with Docker

1. Make a copy of mysql.env.example with the name: mysql.env within the same directory.
2. Run:
  ```
  docker-compose -f docker/docker-compose.yml up -d
  ```
3. Go to http://localhost:30033
