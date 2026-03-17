create database instagramDB;
show databases;
use instagramDB;



create table users(
	user_id int primary key ,
	username varchar(50) unique,
	email varchar(50),
	password varchar(50) not null,
	bio text,
	createdat datetime default current_timestamp

);
insert into users
value(1,'saaketh12','saaketh@gmail.com','s@1234','dbms','2026-03-17 11:34:54');

insert into users(user_id,username,email,password)
value(4,'abhi','abhi@gmail.com','g@1122');

insert into users values 
(2,'nikhil','nikhill@gmail.com','s@2233','dbms','2026-03-17 11:14:54'),
(3,'shanmuk','shanmuk@gmail.com','s@0011','dbms','2026-03-17 11:24:54');

alter table users
add column isVerified boolean;

alter table users
modify column email varchar(60);

alter table users
change column isVerified verify_status boolean;

alter table users
drop column verify_status;

alter table user_data
rename to users;

create TABLE posts(
	PostID INT PRIMARY KEY,
	User_id int not null,
	caption text,
	imageurl varchar(225) not null,
	likescount int default 0,
	createdat timestamp default current_timestamp,
	foreign key (user_id) references users(user_id)
);
create TABLE comments(
	commentID INT PRIMARY KEY,
	postID int not null,
	user_id int not null,
	commentText VARCHAR(225) not null,
	createdat datetime default current_timestamp,
	foreign key (postID) references posts(postID),
	foreign key (user_id) references users(user_id)
);
create TABLE likes(
	likeID int primary key,
    PostID int not null,
    userID int not null,
    LikedAT datetime default current_timestamp,
    foreign key (postID) references posts(postID),
    foreign key (userID) references users(user_ID)
);
show tables;

update users
set bio = 'reels'
where user_id=1;

set sql_safe_updates = 0;
select @@sql_safe_updates;

update users
set password = 'j@345678'
where email = 'abhi@gmail.com';

delete from users
where user_id = 4;

delete from users
where username = 'saaketh12';

select * from users;

