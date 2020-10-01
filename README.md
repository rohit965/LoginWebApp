###https://www.javawebtutor.com/articles/maven/maven_simple_login_application.php




docker container run -d -p 3306:3306  \
-e MYSQL_ROOT_USER=root \
-e MYSQL_ROOT_PASSWORD=mukesh \
--name mysql mysql:5.7.21


create table USER(first_name VARCHAR(20), last_name VARCHAR(20), email VARCHAR(20), username VARCHAR(10), password VARCHAR(10), regdate DATE)
