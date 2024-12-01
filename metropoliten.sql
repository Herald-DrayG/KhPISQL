create table Cities (
    id int primary key auto_increment,
    city varchar(100) not null,
    country varchar(100) not null
);

create table Metrolines (
    id int primary key auto_increment,
    city_id int not null,
    line varchar(100) not null,
    color varchar(100) not null,
    foreign key (city_id) references Cities(id)
);

create table Stations (
    id int primary key auto_increment,
    line_id int not null,
    name varchar(100) not null,
    station_order int not null,
    latitude float,
    longitude float,
    foreign key (line_id) references Metrolines(id)
);

create table Connections (
    id int primary key auto_increment,
    from_station_id int not null,
    to_station_id int not null,
    connection_type varchar(50),
    travel_minutes int not null,
    foreign key (from_station_id) references Stations(id),
    foreign key (to_station_id) references Stations(id)
);

insert into Cities 
values (null, 'Харків', 'Україна'), (null, 'Київ', 'Україна');

insert into Metrolines 
values (null, 1, 'Синя лінія', 'blue'), (null, 1, 'Зелена лінія', 'green'), (null, 2, 'Червона лінія', 'red');

insert into Stations 
values (null, 1, 'Майдан Незалежності', 1, null, null), (null, 1, 'Хрещатик', 2, null, null);

insert into Connections
values (null, 1, 2, 'Прямий', 3);