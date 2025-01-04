use practice;

create table student(
 student_id int primary key ,
 student_name varchar(255) not null ,
 grade varchar(50) not null 
);

Insert into student(student_id,student_name,grade) values(1,"Ram","6th");
Insert into student(student_id,student_name,grade) values(2,"Shyam","7th");
Insert into student(student_id,student_name,grade) values(3,"Ritu","6th");

select * from student;

create table activity(
 acitivity_id int primary key , 
 activity_name varchar(50) not null unique
);

Insert into activity(acitivity_id,activity_name) values(1,"chess");
Insert into activity(acitivity_id,activity_name) values(2,"football");
Insert into activity(acitivity_id,activity_name) values(3,"badminton");
Insert into activity(acitivity_id,activity_name) values(4,"volleyball");

select * from activity;

create table student_activity(
 student_id int not null,
 acitivity_id int not null,
 primary key(student_id,acitivity_id),
 -- foreign key
 foreign key(student_id) references student(student_id),
 foreign key(acitivity_id) references activity(acitivity_id)
);

Insert into student_activity(student_id,acitivity_id) values(1,3);
Insert into student_activity(student_id,acitivity_id) values(4,2); -- Error beacuse student_id - 4 doesn't exist 
Insert into student_activity(student_id,acitivity_id) values(1,7); -- Error because acitivity_id - 7 doesn't exist 
Insert into student_activity(student_id,acitivity_id) values(1,3); -- Error because primary key( not unique values )
Insert into student_activity(student_id,acitivity_id) values(2,4);
Insert into student_activity(student_id,acitivity_id) values(3,2);
 
select * from student_activity;