CREATE TABLE Students (
    student_id serial PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15),
    address TEXT
);

-- Insert sample data into the Students table
INSERT INTO Students (first_name, last_name, date_of_birth, email, phone_number, address)
VALUES
    ('John', 'Smith', '1995-03-15', 'john.smith@example.com', '123-456-7890', '123 Main St, Anytown, USA'),
    ('Jane', 'Doe', '1997-09-20', 'jane.doe@example.com', '987-654-3210', '456 Elm St, Othertown, USA'),
    ('Alice', 'Johnson', '1996-12-10', 'alice@example.com', '555-123-4567', '789 Oak St, Anycity, USA');


CREATE TABLE Courses (
    course_id serial PRIMARY KEY,
    course_name VARCHAR(100),
    course_description TEXT
);

-- Insert sample data into the Courses table
INSERT INTO Courses (course_name, course_description)
VALUES
    ('Mathematics', 'Introduction to Mathematics'),
    ('History', 'World History and Civilizations'),
    ('Physics', 'Physics for Beginners'),
    ('Computer Sci', 'Introduction to Computer Science'),
    ('English', 'English Language and Literature');



hw=# select  * from students;
 student_id | first_name | last_name | date_of_birth |         email          | phone_number |          address
------------+------------+-----------+---------------+------------------------+--------------+----------------------------
          1 | John       | Smith     | 1995-03-15    | john.smith@example.com | 123-456-7890 | 123 Main St, Anytown, USA
          2 | Jane       | Doe       | 1997-09-20    | jane.doe@example.com   | 987-654-3210 | 456 Elm St, Othertown, USA
          3 | Alice      | Johnson   | 1996-12-10    | alice@example.com      | 555-123-4567 | 789 Oak St, Anycity, USA
(3 rows)


hw=# select * from Courses;
 course_id | course_name  |        course_description
-----------+--------------+----------------------------------
         1 | Mathematics  | Introduction to Mathematics
         2 | History      | World History and Civilizations
         3 | Physics      | Physics for Beginners
         4 | Computer Sci | Introduction to Computer Science
         5 | English      | English Language and Literature