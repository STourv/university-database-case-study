CREATE TABLE FacultyAdviser (
    FacultyID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    EmailAddress VARCHAR(100),
    Department VARCHAR(100),
    OfficeBuildingName VARCHAR(50),
    OfficeBuildingRoomNumber VARCHAR(10),
    OfficePhone VARCHAR(20)
);

CREATE TABLE Mentor (
    MentorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    EmailAddress VARCHAR(100),
    CompanyName VARCHAR(100),
    CompanyAddress VARCHAR(100),
    CompanyCity VARCHAR(50),
    CompanyState CHAR(2),
    CompanyZIP VARCHAR(10),
    CompanyPhone VARCHAR(20),
    FacultyID INT NOT NULL,
    AlumnusID INT,
    FOREIGN KEY (FacultyID) REFERENCES FacultyAdviser(FacultyID),
    FOREIGN KEY (AlumnusID) REFERENCES Alumnus(AlumnusID)
);

CREATE TABLE Alumnus (
    AlumnusID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    EmailAddress VARCHAR(100),
    HomeAddress VARCHAR(100),
    HomeCity VARCHAR(50),
    HomeState CHAR(2),
    HomeZIP VARCHAR(10),
    Phone VARCHAR(20)
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    EmailAddress VARCHAR(100),
    DormName VARCHAR(50),
    DormRoomNumber VARCHAR(10),
    DormPhone VARCHAR(20),
    FacultyID INT NOT NULL,
    MentorID INT,
    FOREIGN KEY (FacultyID) REFERENCES FacultyAdviser(FacultyID),
    FOREIGN KEY (MentorID) REFERENCES Mentor(MentorID)
);
