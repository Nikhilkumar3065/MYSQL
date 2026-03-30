CREATE DATABASE join_practice;
USE join_practice;

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100),
    city VARCHAR(100)
);


CREATE TABLE posts (
    post_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    caption VARCHAR(255),
    foreign key (user_id) references users(user_id)
);



INSERT INTO users (username, city) VALUES
('rahul', 'Hyderabad'),
('sneha', 'Bangalore'),
('arjun', 'Chennai'),
('meena', 'Mumbai'),
('kiran', 'Delhi'),
('anita', 'Pune'),
('vikram', 'Kolkata'),
('divya', 'Jaipur'),
('rohit', 'Ahmedabad'),
('pooja', 'Lucknow');

select * from users;



INSERT INTO posts (user_id, caption) VALUES
(1, 'Morning workout'),
(2, 'Learning SQL joins'),
(3, 'Data analytics journey'),
(1, 'Weekend trip'),
(4, 'Office presentation'),
(5, 'Startup ideas'),
(10, 'Test post without valid user'),
(3, 'Python practice'),
(7, 'Cloud computing basics'),
(7, 'Another invalid user post');

select * from posts;

/*
t1={1,2,3,4,5,6}
t2={3,4,5,6,7,8,9}

inner = {3,4,5,6}
left = {1,2,3,4,5,6}
right = {3,4,5,6,7,8,9}
full join = {1,2,3,4,5,6,7,8,9}
*/

-- select column from table1 inner join table2 condition;  (inner join)
select users.username,posts.caption from users inner join posts on users.user_id = posts.user_id;

-- where (equi join)
select users.username,posts.caption from users,posts where users.user_id = posts.user_id;
-- <>(non equi)

-- without condition it joins (natural join)
select * from users natural join posts;

-- left join 
select users.username,posts.caption from users left join posts on users.user_id = posts.user_id;

-- right join
select users.username,posts.caption from users right join posts on users.user_id = posts.user_id;

-- union
select users.username,posts.caption from users left join posts on users.user_id = posts.user_id
union
select users.username,posts.caption from users right join posts on users.user_id = posts.user_id;








