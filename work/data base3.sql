create database school ;

create table classes (
    pk_class_id serial primary key,
    class_name varchar(100)
);

create table subjects (
    pk_subject_id serial primary key,
    subject_name varchar(100)
);

create table student (
    pk_student_id serial primary key,
    student_name varchar(100),
    dob date,
    contact varchar(20),
    name_of_guardian varchar(100),
    fk_class_id  int,
    foreign key (fk_class_id)references classes (pk_class_id)on delete cascade on update cascade
);
create table teachers (
    pk_teacher_id serial primary key,
    teacher_name varchar(100),
    fk_subject_id  int,
    foreign key(fk_subject_id)references subjects(pk_subject_id) on delete cascade on update cascade
);

create table examination (
    pk_exam_id serial primary key,
    exam_name varchar(100),
    date date,
    fk_subject_id int ,
    foreign key(fk_subject_id)references subjects(pk_subject_id) on delete cascade on update cascade
);




insert into classes values(1,'10 a');
insert into classes values(2,'10 b');
insert into classes values(3,'10 c');

insert into subjects values(1,'mal');
insert into subjects values(2,'eng');
insert into subjects values(3,'arb');

insert into student values(1,'joju','2004-10-21','123456789','antony',2);
insert into student values(2,'lijo','2004-10-21','123456789','antony',3);
insert into student values(3,'loki','2004-10-21','123456789','antony',1);

insert into teachers values (1,'ani',3);
insert into teachers values (2,'jisha',2);
insert into teachers values (3,'jeny',1);

insert into examination values (1,'mal','2020-05-09',3);
insert into examination values (2,'eng','2020-05-10',1);
insert into examination values (3,'arb','2020-05-11',2);


-- classes
school=# select * from classes;
 pk_class_id | class_name
-------------+------------
           1 | 10 a
           2 | 10 b
           3 | 10 c

-- subjects
 pk_subject_id | subject_name
---------------+--------------
             1 | mal
             2 | eng
             3 | arb

-- student
 pk_student_id | student_name |    dob     |  contact  | name_of_guardian | fk_class_id
---------------+--------------+------------+-----------+------------------+-------------
             1 | joju         | 2004-10-21 | 123456789 | antony           |           2
             2 | lijo         | 2004-10-21 | 123456789 | antony           |           3
             3 | loki         | 2004-10-21 | 123456789 | antony           |           1

--  teachers
 pk_teacher_id | teacher_name | fk_subject_id
---------------+--------------+---------------
             1 | ani          |             3
             2 | jisha        |             2
             3 | jeny         |             1

-- examination
 pk_exam_id | exam_name |    date    | fk_subject_id
------------+-----------+------------+---------------
          1 | mal       | 2020-05-09 |             3
          2 | eng       | 2020-05-10 |             1
          3 | arb       | 2020-05-11 |             2



school=# select * from student limit 3;
 pk_student_id | student_name |    dob     |  contact  | name_of_guardian | fk_class_id
---------------+--------------+------------+-----------+------------------+-------------
             1 | joju         | 2004-10-21 | 123456789 | antony           |           2
             2 | lijo         | 2004-10-21 | 123456789 | antony           |           3
             3 | loki         | 2004-10-21 | 123456789 | antony           |           1


  CREATE TABLE student_marks(
   pk_mark_id SERIAL PRIMARY KEY,
   fk_student_id INT,
   fk_exam_id INT,
   marks_obtained INT,
   FOREIGN KEY(fk_student_id) REFERENCES student(pk_student_id) ON DELETE CASCADE ON UPDATE CASCADE,
   FOREIGN KEY(fk_exam_id) REFERENCES examination(pk_exam_id) ON DELETE CASCADE ON UPDATE CASCADE
  );

  INSERT INTO student_marks VALUES
   (1,1,1,50),
   (2,2,1,45),
   (3,3,2,60);

school=# select * from student_marks;
 pk_mark_id | fk_student_id | fk_exam_id | marks_obtained
------------+---------------+------------+----------------
          1 |             1 |          1 |             50
          2 |             2 |          1 |             45
          3 |             3 |          2 |             60
(3 rows)


