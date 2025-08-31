# Highline University Mentor Program Case Study

## Background
Highline University’s Mentor Program recruits business professionals as mentors to work with students and faculty advisers. The program also tracks alumni as potential mentors.

## Entities

### STUDENT
- Attributes: StudentID (PK), FirstName, LastName, EmailAddress, DormName, DormRoomNumber, DormPhone

### FACULTY_ADVISER
- Attributes: FacultyID (PK), FirstName, LastName, EmailAddress, Department, OfficeBuildingName, OfficeBuildingRoomNumber, OfficePhone

### ALUMNUS
- Attributes: AlumnusID (PK), FirstName, LastName, EmailAddress, HomeAddress, HomeCity, HomeState, HomeZIP, Phone

### MENTOR
- Attributes: MentorID (PK), FirstName, LastName, EmailAddress, CompanyName, CompanyAddress, CompanyCity, CompanyState, CompanyZIP, CompanyPhone, FacultyID (FK), AlumnusID (FK, optional)

## Relationships & Cardinalities

1. **STUDENT — FACULTY_ADVISER**
   - Each student is assigned exactly one adviser (1,1)
   - Each faculty adviser advises zero or many students (0,N)
   - Implemented with `FacultyID` as a foreign key in `STUDENT`.

2. **STUDENT — MENTOR**
   - Each student may have zero or one mentor (0,1)
   - Each mentor mentors zero or many students (0,N)
   - Implemented with `MentorID` as a nullable foreign key in `STUDENT`.

3. **MENTOR — FACULTY_ADVISER**
   - Each mentor works with exactly one faculty adviser (1,1)
   - Each faculty adviser may work with zero or many mentors (0,N)
   - Implemented with `FacultyID` as a foreign key in `MENTOR`.

4. **MENTOR — ALUMNUS**
   - Each mentor may be an alumnus (0,1)
   - Each alumnus may be associated with zero or one mentor (0,1)
   - Implemented with `AlumnusID` as a nullable foreign key in `MENTOR`.

## ER Diagram
See `docs/relationships.png` for the Crow’s Foot E-R diagram.

