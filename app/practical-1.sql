CREATE TABLE Department(
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL,
    Location VARCHAR(100)
);

CREATE TABLE Professor (
    ProfName VARCHAR(100),
    ProfID INT PRIMARY KEY AUTO_INCREMENT,
    Email VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY(DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE course (
    courseID INT PRIMARY KEY,
    courseName VARCHAR(100),
    credits INT,
    Description TEXT,
    DepartmentID INT,
    ProfessorID INT,
    FOREIGN KEY(DepartmentID) REFERENCES Department(DepartmentID),
    FOREIGN KEY(ProfessorID) REFERENCES Professor(ProfessorID)
);