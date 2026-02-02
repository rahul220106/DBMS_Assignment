-- DB Lab 1 Solution


-- PART A: DDL

CREATE TABLE Student (
    RollNo INT,
    Name VARCHAR2(50),
    Dept VARCHAR2(20),
    Age INT,
    Phone VARCHAR2(15)
);

CREATE TABLE Course (
    CourseID INT,
    CourseName VARCHAR2(50),
    Credits INT
);

ALTER TABLE Student ADD City VARCHAR2(30);
ALTER TABLE Student ADD Semester INT;
ALTER TABLE Student RENAME COLUMN Phone TO MobileNo;

DROP TABLE Course;

-- PART B: DML

INSERT INTO Student VALUES (101, 'Rahul', 'CSE', 20, '8476392639', 'Delhi', 4);
INSERT INTO Student VALUES (102, 'Farhan', 'ECE', 21, '8367298376', 'Patna', 5);
INSERT INTO Student VALUES (103, 'Rajesh', 'CSE', 22, '5638267836', 'Kolkata', 6);
INSERT INTO Student VALUES (104, 'Sneha', 'ME', 19, '5739394927', 'Gaya', 3);
INSERT INTO Student VALUES (105, 'Rehqn', 'CSE', 23, '8236819734', 'Ahmedabad', 7);



SELECT * FROM Student;
SELECT RollNo, Name FROM Student;
SELECT * FROM Student WHERE Dept = 'CSE';
SELECT * FROM Student WHERE Age > 20;

UPDATE Student SET Dept = 'ECE' WHERE RollNo = 101;
UPDATE Student SET City = 'Patna' WHERE Name = 'Rahul';
UPDATE Student SET Age = Age + 1;

DELETE FROM Student WHERE RollNo = 105;
DELETE FROM Student;




