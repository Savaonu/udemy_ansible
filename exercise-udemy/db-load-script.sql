CREATE DATABASE todos;
CREATE USER 'todos-user'@'http://192.168.56.108/' IDENTIFIED BY 'dummytodos';
GRANT ALL PRIVILEGES ON *.* TO 'todos-user'@'http://192.168.56.108/';

create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
create table todo (id integer not null, description varchar(255), is_done bit not null, target_date datetime(6), user varchar(255), primary key (id)) engine=InnoDB