
USE CourseRegistrationDB;
GO

CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    name NVARCHAR(100) NOT NULL
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name NVARCHAR(100) NOT NULL
);

CREATE TABLE Registrations (
    registration_id INT PRIMARY KEY,
    member_id INT NOT NULL,
    course_id INT NOT NULL,

    FOREIGN KEY (member_id)
        REFERENCES Members(member_id),

    FOREIGN KEY (course_id)
        REFERENCES Courses(course_id)
);
GO

USE CourseRegistrationDB;
GO

-- Them thanh vien
INSERT INTO Members (member_id, name)
VALUES
    (1, N'Nguyen An'),
    (2, N'Tran Binh'),
    (3, N'Le Minh');

-- Them khoa hoc
INSERT INTO Courses (course_id, course_name)
VALUES
    (10, N'Python'),
    (11, N'Java'),
    (12, N'SQL');

-- Them dang ky
INSERT INTO Registrations
    (registration_id, member_id, course_id)
VALUES
    (101, 1, 10),
    (102, 2, 10),
    (103, 1, 11);
GO
