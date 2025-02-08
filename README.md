![Docker Logo](https://upload.wikimedia.org/wikipedia/commons/7/79/Docker_%28container_engine%29_logo.png)

# Docker configuration for PHP development

This configuration has these software tools:

1. Web server Nginx
2. Programing language Php 8.2.2
3. Database Mysql 9.0.1
4. UI Manager PhpMyAdmin

You can use this configuration by following these steps

1. Clone this repository.
2. You can change the versions, ports and password for root user of mysql in .env file.
3. You can configure domains for php projects in nginx/conf.d/
4. You can start the environment with:

    ~~~bash
    docker compose up -d
    ~~~

5. You can finish the environment with:

    ~~~bash
    docker compose down
    ~~~

6. If you want to enter to a some container you have to use any of the following commands:

    ~~~bash
    docker exec -it nginx bin/sh
    ~~~

    ~~~bash
    docker exec -it php-fpm bash
    ~~~

    ~~~bash
    docker exec -it mysql bash
    ~~~

    ~~~bash
    docker exec -it phpmyadmin bash
    ~~~

7. For using in the browser go to:

    - Localhost: [http://localhost](http://localhost)
    - Phpmyadmin: [http://localhost:8080/](http://localhost:8080/)
