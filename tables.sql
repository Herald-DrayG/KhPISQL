create table Projects (
id int auto_increment primary key,
title varchar(100) not null,
description text not null
);

create table Users (
id int auto_increment primary key,
name varchar(100) not null,
email varchar(100) not null
);

create table ProjectUsers (
id int auto_increment primary key,
project_id int not null,
user_id int not null unique,
foreign key (project_id) references Projects(id),
foreign key (user_id) references Users(id)
);

create table Tasks (
id int auto_increment primary key,
title varchar(100) not null,
description text not null,
project_id int not null,
author_id int not null,
foreign key (project_id) references Projects(id),
foreign key (author_id) references ProjectUsers(user_id)
);

create table TasksPerformers (
id int auto_increment primary key,
task_id int not null,
performer_id int not null,
foreign key (task_id) references Tasks(id),
foreign key (performer_id) references ProjectUsers(user_id)
);

create table Statuses (
id int auto_increment primary key,
task_id int not null,
status ENUM('TO DO', 'IN PROCESS', 'DONE'),
foreign key (task_id) references Tasks(id)
);

create table Files (
id int auto_increment primary key,
name varchar(100) not null,
url varchar(100) not null,
project_id int not null,
task_id int,
foreign key (project_id) references Projects(id),
foreign key (task_id) references Tasks(id)
);