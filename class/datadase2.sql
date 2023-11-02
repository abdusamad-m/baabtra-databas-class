 insert into employe values (2,'staff','thomas','shelby','xxxxxxxxx@gmail.com','1234567890','m','1987,04,10','villaey');
 insert into employe values (3,'staff','loki','asgard','xxxxxxxxx@gmail.com','1234567890','m','1987,04,10','villaey');
 insert into employe values (4,'staff','paul','walker','xxxxxxxxx@gmail.com','1234567890','m','1987,04,10','villaey');
 insert into employe values (5,'staff','rider','kannapi','xxxxxxxxx@gmail.com','1234567890','m','1987,04,10','villaey');

 create table class(
    pk_class_id serial primary key,
    class_name varchar(100)

  );
create table stdnt (
    pk_student_id serial primary key,
    student_name varchar(100),
    dob date,
    contact varchar(20),
    fk_student_id int
    foreign key (fk_student_id) references class (pk_class_id) on delete cascade on update cascade
);ayudi ayak