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