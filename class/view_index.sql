insert into student (student_name,class,secction)
values('jim','10','A'),
('Reen','9','B'),
('arjun','11','C'),
('Surya','10','B'),
('Diya','9','A'),
('Priya','11','B'),
('Sneha','10','C'),
('Sarah','9','A'),
('Sam','11','A'),
('April','10','B');
create table student_grade(
    id serial primary key,
    student_id integer references student(id),
    sudject varchar(50)not null,
    grade varchar(2)not null
);
 insert into student_grade (student_id,sudject,grade)
 values()


 insert into student_grade(student_id,sudject,grade)
  values (1,'chemistry','A'), 
  (1,'physics','B'),       
  (1,'biology','F'),       
  (2,'chemistry','B'),     
  (2,'biology','C'),       
  (2,'physics','B'),       
  (3,'chemistry','A'),     
  (3,'physics','A'),       
  (3,'biology','A'),       
  (4,'chemistry','B'),        
  (4,'physics','F'),      
  (4,'biology','B'),      
  (5,'chemistry','C'),     
  (5,'physics','F'),()
  (5,'biology','A'),
  (6,'chemistry','B'),
  (6,'physics','B'),
  (6,'biology','B'),
  (7,'chemistry','C'),
  (7,'physics','A'),
  (7,'biology','A'),
  (8,'chemistry','F'),
  (8,'physics','B'),
  (8,'biology','A'),
  (9,'chemistry','F'),
  (9,'physics','B'),
  (9,'biology','A'),
  (10,'chemistry','F'),
  (10,'physics','A'),
  (10,'biology','B');

  create view physics_failed as
select student.student_name,student.class,student_grade.grade
from student
inner join student_grade on student.id = student_grade.student_id
where student_grade.subject = 'physics' and student_grade.grade = 'F';

 select * from physics_failed;
 student_name | class | grade
--------------+-------+-------
 Surya        | 10    | F
 Diya         | 9     | F

 create view physics_failed as
select student.student_name,student.class,student_grade.grade
from student
inner join student_grade on student.id = student_grade.student_id
where student_grade.subject = 'physics' and student_grade.grade = 'F';


alter table student_grade insert column marks integer;




insert into student_grade(marks)
values(95) ,
(85),
(10),
(80),
(71),
(86),
(96),
(98),
(93),
(82),
(22),
(88),
(76),
(33),
(96),
(82),
(85),
(87),
(77),
(99),
(91),
(44),
(86),
(92),
(21),
(86),
(93),
(11),
(97),
(86);



CREATE TABLE employees(
  pk_emp_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(50),
  gender VARCHAR(20),
  phone VARCHAR(20),
  dob DATE,
  place VARCHAR(50)
);

  insert into employees values
  (1,'adithya','ev','adi@gamil.com','female','9645517517','2002-10-10','calicut'),
  (2,'dhaya','er','dhaya@gamil.com','female','8645517517','2001-10-10','wayanad'),
  (3,'adithya','k','adithya@gamil.com','female','9645517519','2003-10-10','calicut'),
  (4,'samad','m','samad@gamil.com','male','9685517517','2002-12-05','malapuram'),
  (5,'athira','m','athira@gamil.com','female','7645517517','2009-10-8','calicut'),
  (6,'baansha','o','baansha@gamil.com','female','9640017517','2002-10-04','calicut'),
  (7,'hadi','ek','hadi@gmail.com','male','1234567890','2005-10-23','malappuram') ,
  (8,'ameen','ek','ami@gmail.com','male','1234589067','2003-01-25','malappuram')  ,
  (9,'ilyas','k','illu@gmail.com','male','1456723890','2005-12-26','malappuram'),
  (10,'amal','ek','amal@gmail.com','male','1238904567','2005-11-13','malappuram');  


 select * from employees where email = 'samad@gamil.com';
 pk_emp_id | first_name | last_name |      email      | gender |   phone    |    dob     |   place
-----------+------------+-----------+-----------------+--------+------------+------------+-----------
         4 | samad      | m         | samad@gamil.com | male   | 9685517517 | 2002-12-05 | malapuram



create index employees_email_idx on employees(email);