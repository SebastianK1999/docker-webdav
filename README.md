# docker-webdav
My (basic) docker configuration for localhost webdav  

## Useful commands
* Adding user requires modyfing `./config/000-default.conf` file and creating user's drive folder. After it is done, you need to rebuild to apply changes and add user with password.
```
docker compose up --build -d
docker -it webdav /bin/bash
htpasswd /etc/apache2/.secret/webdav_user_file <my_user>
```
