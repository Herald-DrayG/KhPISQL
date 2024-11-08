create table Categories (
    category_id int primary key auto_increment,
    name varchar(100) not null
);

create table Posts (
    post_id int primary key auto_increment,
    title varchar(255) not null,
    content text not null,
    pubdate datetime default current_timestamp,
    category_id int,
    foreign key (category_id) references Categories(category_id) on delete set null
);

create table Comments (
    comment_id int primary key auto_increment,
    post_id int,
    comText text not null,
    comDate datetime default current_timestamp,
    user_ip varchar(45),
    foreign key (post_id) references Posts(post_id) on delete cascade 
);

create table Ratings (
    rating_id int primary key auto_increment,
    post_id int,
    user_ip varchar(45),
    rating int check (rating between 1 and 5),
    rating_date datetime default current_timestamp,
    foreign key (post_id) references Posts(post_id) on delete cascade,
    unique (post_id, user_ip)
);