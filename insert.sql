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