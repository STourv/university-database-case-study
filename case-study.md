STUDENT(StudentID PK, FirstName, LastName, EmailAddress(FirstName.LastName@students.hu.edu), DormName, DormRoomNumber, DormPhone)

FACULTY_ADVISER(FacultyID PK, FirstName, LastName, EmailAddress(FirstName.LastName@hu.edu), Department, OfficeBuildingName, OfficeBuildingRoomNumber, OfficePhone)

ALUMNUS(AlumnusID PK, FirstName, LastName, EmailAddress(FirstName.LastName@somewhere.com), HomeAddress, HomeCity, HomeState, HomeZIP, Phone)

MENTOR(MentorID PK, FirstName, LastName, EmailAddress(FirstName.LastName@companyname.com), CompanyName, CompanyAddress, CompanyCity, CompanyState, CompanyZIP, CompanyPhone)

A 2.

Relationships and Cardinalities
STUDENT — FACULTY_ADVISER

Each STUDENT is assigned exactly one FACULTY_ADVISER (1,1)

Each FACULTY_ADVISER advises zero or many STUDENTS (0,N)

Implemented by adding FacultyID as a foreign key in STUDENT

STUDENT — MENTOR

Each STUDENT may have zero or one MENTOR (0,1)

Each MENTOR mentors zero or many STUDENTS (0,N)

Implemented by adding MentorID as a foreign key in STUDENT (nullable)

MENTOR — FACULTY_ADVISER

Each MENTOR works with exactly one FACULTY_ADVISER (1,1)

Each FACULTY_ADVISER works with zero or many MENTORS (0,N)

Implemented by adding FacultyID as a foreign key in MENTOR

MENTOR — ALUMNUS

Each MENTOR may be an ALUMNUS (0,1)

Each ALUMNUS may be associated with zero or one MENTOR (0,1)

Implemented by adding AlumnusID as a foreign key in MENTOR (nullable)

[STUDENT]───(1,1)───assigned_to───(0,N)───[FACULTY_ADVISER]

[STUDENT]───(0,1)───assigned_to───(0,N)───[MENTOR]

[MENTOR]───(1,1)───works_with───(0,N)───[FACULTY_ADVISER]

[ALUMNUS]───(0,1)───may_be───(0,1)───[MENTOR]
