# Highline University Mentor Program Database Case Study

This repository contains a database design for the Highline University Mentor Program Information System (MPIS). 

The MPIS tracks students, alumni, faculty advisers, and mentors, along with their relationships, to support mentorship activities at the university.

## Purpose

This project demonstrates:
- Relational database design
- Entity-relationship modeling (Crow's Foot notation)
- Cardinalities and relationships
- SQL implementation of schema

## Entities
- **STUDENT** – Tracks students’ personal and dorm information.
- **FACULTY_ADVISER** – Tracks advisers’ contact info and department.
- **ALUMNUS** – Tracks alumni contact info.
- **MENTOR** – Tracks mentor contact info and company details.

## Relationships
- Each student is assigned exactly one faculty adviser (1:N).
- Each student may have zero or one mentor (0..1:N).
- Each mentor works with exactly one faculty adviser (1:N).
- A mentor may be an alumnus (0..1:0..1).

## Getting Started

1. Clone this repository:
```bash
git clone https://github.com/STourv/university-database-case-study.git

