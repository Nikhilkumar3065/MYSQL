create database codegnan;
use codegnan;
create table students(
	stud_id int primary key auto_increment,
    name varchar(30),
    email varchar(50) unique,
    password varchar(30),
    course varchar(30),
    phoneno varchar(15),
    address varchar(50),
    parent_name varchar(30),
    parent_phno varchar(15),
    attendance decimal(3,2),
    job_applied int,
    exam_reports text
 );
 
 alter table students
 modify attendance int;
 
 insert into students values
 (1,'saaketh','saaketh@gmail.com','s@123','PFS','123456789','xxxx','abc','09876544567',72.12,3,'good'),
 (2,'nikhil','nikhil@gmail.com','N@333','JFS','648264857','yyyy','bbd','920387454',84.12,4,'better'),
 (3,'shanmuk','shanmuk@gmail.com','S$%23','JFS','567887654','ttt','erty','2234344334',74.14,3,'good'),
 (4,'praveen','praveen@gmail.com','P@#123','DA','33567890498764','fgh','abc','77456537353',62.12,3,'good'),
 (5,'kittu','kittu@gmail.com','K*123','DS','745745446','dfghj','fghj','654747456',70.12,3,'good');
 
 select * from students;
 
 create view trainer_view as
 select name,email,course,attendance,exam_reports from students;
 
 create view program_manager_view as
 select name,email,course,phoneno,parent_name,parent_phno,attendance from students;
 
 create view placements_view as
 select stud_id,name,email,course,attendance,job_applied,exam_reports from students;
 
 select * from trainer_view;
 select * from program_manager_view;
 select * from placements_view;
 
 
 