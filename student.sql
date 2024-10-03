---------------------------------------------------------DDL (Data Definition Language) Operations--------------------------
--- CREATION OF TABLES 
---- DDL (Data Definition Language) Operations
DDL commands are used to define or modify database structures.------
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    StudentAddress VARCHAR(255),
    StudentPhoneNo VARCHAR(15),
    DateOfBirth DATE
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    CourseCredits INT
);

CREATE TABLE StudentCourse (
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    PRIMARY KEY (StudentID, CourseID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

CREATE TABLE Grades (
    GradeID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Grade CHAR(2),  -- e.g., A, B, C, D, F
    GradeDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    AttendanceDate DATE,
    Status VARCHAR(50),  -- e.g., Present, Absent
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

CREATE TABLE Fees (
    FeeID INT PRIMARY KEY,
    StudentID INT,
    AmountPaid FLOAT,
    PaymentDate DATE,
    TransactionDetails VARCHAR(255),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

CREATE TABLE Scholarship (
    ScholarshipID INT PRIMARY KEY,
    StudentID INT,
    ScholarshipName VARCHAR(100),
    ScholarshipAmount FLOAT,
    AwardDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);
-- Insert Students
INSERT INTO Students (StudentID, StudentName, StudentAddress, StudentPhoneNo, DateOfBirth) 
VALUES (3, 'John Doe', '123 Main St', '555-1234', TO_DATE('2000-01-15', 'YYYY-MM-DD'));

INSERT INTO Students (StudentID, StudentName, StudentAddress, StudentPhoneNo, DateOfBirth) 
VALUES (4, 'Jane Smith', '456 Oak St', '555-5678', TO_DATE('1999-11-21', 'YYYY-MM-DD'));

INSERT INTO Students (StudentID, StudentName, StudentAddress, StudentPhoneNo, DateOfBirth) 
VALUES (5, 'Michael Johnson', '789 Pine St', '555-9101', TO_DATE('2001-05-10', 'YYYY-MM-DD'));

-- Insert Courses
INSERT INTO Courses (CourseID, CourseName, CourseCredits) 
VALUES (101, 'Mathematics', 3);

INSERT INTO Courses (CourseID, CourseName, CourseCredits) 
VALUES (102, 'Physics', 4);

INSERT INTO Courses (CourseID, CourseName, CourseCredits) 
VALUES (103, 'Chemistry', 3);

INSERT INTO Courses (CourseID, CourseName, CourseCredits) 
VALUES (104, 'Biology', 3);

-- Insert into StudentCourse (Enrollment)

INSERT INTO StudentCourse (StudentID, CourseID, EnrollmentDate) 
VALUES (3, 102, TO_DATE('2023-09-01', 'YYYY-MM-DD'));

INSERT INTO StudentCourse (StudentID, CourseID, EnrollmentDate) 
VALUES (4, 103, TO_DATE('2023-09-01', 'YYYY-MM-DD'));

INSERT INTO StudentCourse (StudentID, CourseID, EnrollmentDate) 
VALUES (5, 101, TO_DATE('2023-09-01', 'YYYY-MM-DD'));

INSERT INTO StudentCourse (StudentID, CourseID, EnrollmentDate) 
VALUES (5, 104, TO_DATE('2023-09-01', 'YYYY-MM-DD'));

-- Insert Grades
INSERT INTO Grades (GradeID, StudentID, CourseID, Grade, GradeDate)
VALUES (1, 4, 101, 'A', TO_DATE('2024-01-10', 'YYYY-MM-DD'));

INSERT INTO Grades (GradeID, StudentID, CourseID, Grade, GradeDate)
VALUES (2, 3, 102, 'B', TO_DATE('2024-01-10', 'YYYY-MM-DD'));

INSERT INTO Grades (GradeID, StudentID, CourseID, Grade, GradeDate)
VALUES (3, 5, 103, 'A', TO_DATE('2024-01-10', 'YYYY-MM-DD'));

-- Insert Attendance
INSERT INTO Attendance (AttendanceID, StudentID, CourseID, AttendanceDate, Status) 
VALUES (1, 4, 101, TO_DATE('2023-10-01', 'YYYY-MM-DD'), 'Present');

INSERT INTO Attendance (AttendanceID, StudentID, CourseID, AttendanceDate, Status) 
VALUES (2, 5, 102, TO_DATE('2023-10-01', 'YYYY-MM-DD'), 'Absent');

INSERT INTO Attendance (AttendanceID, StudentID, CourseID, AttendanceDate, Status) 
VALUES (3, 4, 103, TO_DATE('2023-10-01', 'YYYY-MM-DD'), 'Present');

INSERT INTO Attendance (AttendanceID, StudentID, CourseID, AttendanceDate, Status) 
VALUES (4, 3, 101, TO_DATE('2023-10-01', 'YYYY-MM-DD'), 'Present');

INSERT INTO Attendance (AttendanceID, StudentID, CourseID, AttendanceDate, Status) 
VALUES (5, 3, 104, TO_DATE('2023-10-01', 'YYYY-MM-DD'), 'Absent');


-- Insert Fees
INSERT INTO Fees (FeeID, StudentID, AmountPaid, PaymentDate, TransactionDetails) 
VALUES (1, 3, 500.00, TO_DATE('2023-08-15', 'YYYY-MM-DD'), 'Bank Transfer');

INSERT INTO Fees (FeeID, StudentID, AmountPaid, PaymentDate, TransactionDetails) 
VALUES (2, 4, 450.00, TO_DATE('2023-08-15', 'YYYY-MM-DD'), 'Cash Payment');

INSERT INTO Fees (FeeID, StudentID, AmountPaid, PaymentDate, TransactionDetails) 
VALUES (3, 5, 400.00, TO_DATE('2023-08-15', 'YYYY-MM-DD'), 'Card Payment');


-- Insert Scholarship
INSERT INTO Scholarship (ScholarshipID, StudentID, ScholarshipName, ScholarshipAmount, AwardDate) 
VALUES (1, 3, 'Merit Scholarship', 1000.00, TO_DATE('2023-09-01', 'YYYY-MM-DD'));

INSERT INTO Scholarship (ScholarshipID, StudentID, ScholarshipName, ScholarshipAmount, AwardDate) 
VALUES (2, 4, 'Need-Based Scholarship', 800.00, TO_DATE('2023-09-01', 'YYYY-MM-DD'));

--------------------------------------------------------------Insert, Update, and Delete Data (DML - Data Manipulation Language)----------------------------

-- Insert new students into the Students table
INSERT INTO Students (StudentID, StudentName, StudentAddress, StudentPhoneNo, DateOfBirth)
VALUES (7, 'Sarah Adams', '321 Elm St', '555-9876', TO_DATE('2000-10-10', 'YYYY-MM-DD'));

-- Insert new courses into the Courses table
INSERT INTO Courses (CourseID, CourseName, CourseCredits)
VALUES (105, 'Computer Science', 4);

-- Insert new enrollments into StudentCourse table
INSERT INTO StudentCourse (StudentID, CourseID, EnrollmentDate)
VALUES (7, 105, '2023-09-01');



-- Update a student's address
UPDATE Students SET StudentAddress = '654 Oak St'
WHERE StudentID = 7;



-- Update course credits
UPDATE Courses
SET CourseCredits = 5
WHERE CourseID = 102;

-- This command deletes the scholarship with ScholarshipID = 1
DELETE FROM Scholarship
WHERE ScholarshipID = 1;

-- Add an Email column to the Students table
ALTER TABLE Students
ADD Email VARCHAR(100) NULL;

-- Add an Email column to the Students table
ALTER TABLE Students
ADD Email VARCHAR(100) NULL;

-- Rename StudentPhoneNo to PhoneNumber
ALTER TABLE Students
RENAME COLUMN StudentPhoneNo TO PhoneNumber;

-- Drop the StudentAddress column
ALTER TABLE Students
DROP COLUMN StudentAddress;

-- Add a unique constraint to the Email column
ALTER TABLE Students
ADD CONSTRAINT Unique_Email UNIQUE (Email);

--Grant
GRANT SELECT ON STUDENTS TO DIP;

-- Revoke
REVOKE SELECT ON STUDENTS FROM DIP;


------------------------------------------------------------TCL (Transaction Control Language) Operations-------------------------------------
TCL (Transaction Control Language) Operations
TCL commands manage the changes made by DML statements.

---Commit---
----To save the changes made:----


COMMIT;


----Rollback----
-----To undo the last changes if needed:-----


ROLLBACK;


---Inner join------------------------------------------------------------------
SELECT s.StudentID, s.StudentName, c.CourseName, g.Grade
FROM Students s
INNER JOIN StudentCourse sc ON s.StudentID = sc.StudentID
INNER JOIN Courses c ON sc.CourseID = c.CourseID
INNER JOIN Grades g ON s.StudentID = g.StudentID AND c.CourseID = g.CourseID;

-------------------------------------------LEFT JOIN--------------------------

SELECT s.StudentID, s.StudentName, c.CourseName
FROM Students s
LEFT JOIN StudentCourse sc ON s.StudentID = sc.StudentID
LEFT JOIN Courses c ON sc.CourseID = c.CourseID;



----------------------------------------SUBQUERY EXAMPLE------------------------------

-- Find students who have not made any payments----
SELECT StudentName
FROM Students
WHERE StudentID NOT IN (
    SELECT StudentID
    FROM Fees
);




 



