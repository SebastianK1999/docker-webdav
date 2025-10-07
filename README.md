# docker-webdav
My (base) docker configuration for localhost webdav  

## Useful commands
* Adding user requires modyfing `./config/000-default.conf` file and creating user's drive folder. After it is done container can be built from the compose config.
```
docker compose up --build -d
```
After the container builds, we can create a user with a password. To do that it's needed to login to container's shell.
```
docker exec -it webdav /bin/bash
```
Inside the container user can be created with command below.
```
htpasswd -c /etc/apache2/.secret/webdav_user_file <my_user>
```
OR to add another
```
htpasswd /etc/apache2/.secret/webdav_user_file <my_user>
```
* While creating a folder, you need to add permisions to `www-data` user or group. For my private usecase, is better to just add it to group
```
chown -R www-data </path/to/directory>
```
