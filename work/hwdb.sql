create database student;
create table students(
    std_id serial primary key,
    first_name varchar(100),
    last_name varchar(100),
    dob date,
    email varchar(400),
    phone varchar(50),
    address varchar(400)
)
create table courses(
    course_id serial primary key,
    course_name varchar(50),
    course_description varchar(100)
);
create table enrollments(
    enrollments_id serial primary key,
    student_id int references students(sdt_id),
    course_id int references courses(course_id),
    enrollment_date date

);