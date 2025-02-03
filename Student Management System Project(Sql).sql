create database studentdb
use studentdb

select * from students

create table students (StudentId int Primary Key, Name Varchar(100),Age int, Gender Varchar(50), Email Varchar (100) unique)
insert  into students values(101,'Ayush Khanna',20,'Male','aayush@gmail.com')
insert  into students values(102,'Kanika Basra',22,'Female','kanik@gmail.com')
insert  into students values(103,'Swati Kapoor',24,'Female','swati@gmail.com')
insert  into students values(104,'Yash Arora',26,'Male','ashy@gmail.com')
insert  into students values(105,'Kapil Singh',24,'Male','singh@gmail.com')
insert  into students values(106,'Anshul Rai',47,'Male','anshu@gmail.com')
insert  into students values(107,'Kritika Malik',24,'Female','rithik@gmail.com')
insert  into students values(108,'Payal Kapoor',20,'Female','payal@gmail.com')
insert  into students values(109,'Yashmeet Singh',22,'Male','meet@gmail.com')
insert  into students values(110,'Akshay Goyal',25,'Male','akshay@gmail.com')
insert  into students values(111,'Yogita Chola',25,'Female','ccholayogita@gmail.com')
insert  into students values(112,'Vansh Patil',35,'Male','vanshpatil@gmail.com')
insert  into students values(113,'Puneet Sachdeva',27,'Male','sachdevapunn@gmail.com')
insert  into students values(114,'Chanchal Narang',24,'Female','narangchanchal@gmail.com')
insert  into students values(115,'Naman Goyal',20,'Male','namangoyal@gmail.com')




select * from courses


create table courses(CourseId int Primary key, Coursename varchar(50), Instructor Varchar(50))
insert into courses values(1,'Mathematics','Mr.Arun')
insert into courses values(2,'Physics','Mr.Kamalpreet')
insert into courses values(3,'Computer Science','Mr.Yash')
insert into courses values(4,'Mathematics','Mr.Arun')
insert into courses values(5,'Physics','Mr.Kamalpreet')
insert into courses values(6,'Computer Science','Mr.Yash')
insert into courses values(7,'Mathematics','Mr.Arun')
insert into courses values(8,'Physics','Mr.Kamalpreet')
insert into courses values(9,'Computer Science','Mr.Yash')
insert into courses values(10,'Mathematics','Mr.Arun')
insert into courses values(11,'Physics','Mr.Kamalpreet')
insert into courses values(12,'ComputerScience','Mr.Yash')
insert into courses values(13,'Mathematics','Mr.Arun')
insert into courses values(14,'Physics','Mr.Kamalpreet')
insert into courses values(15,'Computer Science','Mr.Yash')

Select * from enrollments

Create table enrollments (Enrollmentid int primary key, Studentid int, Courseid int, Grade char(2), 
 Foreign key(StudentId) REFERENCES students (StudentId),  
Foreign key (Courseid) REFERENCES courses(courseid))

insert into enrollments values(1,101,1,'A')
insert into enrollments values(2,102,2,'A')
insert into enrollments values(3,103,3,'B')
insert into enrollments values(4,104,4,'C')
insert into enrollments values(5,105,5,'A')
insert into enrollments values(6,106,6,'A')
insert into enrollments values(7,107,7,'B')
insert into enrollments values(8,108,8,'D')
insert into enrollments values(9,109,9,'A')
insert into enrollments values(10,110,10,'B')
insert into enrollments values(11,111,11,'C')
insert into enrollments values(12,112,12,'A')
insert into enrollments values(13,113,13,'B')
insert into enrollments values(14,114,14,'A')
insert into enrollments values(15,115,15,'A')


Select s.Name, c.CourseName, e.Grade FROM Enrollments e
JOIN students s ON e.StudentId = s.StudentId  
JOIN Courses c ON e.courseid = c.Courseid    
WHERE c.CourseName = 'Computer Science'


Select s.Name, e.Grade 
FROM Enrollments e
JOIN Students s ON e.StudentId = s.StudentId
WHERE e.Grade = 'A'








