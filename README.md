# ArmyDB 🇱🇧

ArmyDB is a relational database project designed to manage and organize data for a military personnel system. It was built using SQL and showcases various features of database design including entity-relationship modeling, normalization, data integrity, and advanced query handling.

## 📁 Project Structure

- `createTables.sql`: Contains all DDL commands to create the tables of the database.
- `insertset.sql`: Includes all the INSERT statements to populate the database with sample data.
- `VIEWS.sql`: Contains SQL code to define useful views over the data for easier access and reporting.
- `EasyQueries.sql`: Contains beginner-level SELECT queries to retrieve specific data.
- `MeduimQueries.sql`: Contains intermediate-level queries involving joins, aggregations, etc.
- `HardQueries.sql`: Contains advanced queries involving nested subqueries, set operations, and more.
- `README.md`: You're reading it :)
- `.gitignore`: Standard ignore file for SQL-based development.

## 📌 Description

This database system was created as part of a course project involving database design, ER diagram modeling, and SQL implementation. The design reflects a military structure with entities such as `Personnel`, `Units`, `Missions`, `Trainings`, `Medical_Records`, `Leaves`, and more. 

Key features of the project:
- Clear division between administrative and management functions
- Use of composite keys, weak entities, and participation constraints
- Conversion from ER model to relational model
- Realistic dataset and multiple query levels for practice

## 📊 ER Diagram

The ER diagram was designed using [chartDB] and includes all major entities, relationships, and constraints. It covers:
- Personnel management: `Units`, `Bases`, `Ranks`, `Equipment`
- Administrative processes: `Medical_Records`, `Leaves`, `Disciplinary_Actions`, `Awards`
- Operations and training: `Missions`, `Trainings`, with associative entities like `Personnel_Missions` and `Personnel_Trainings`

## ✅ Technologies

- SQL (Oracle-style)
- ChartDB (for ERD)
- GitHub for version control

## ⚠️ Notes

- Relational Algebra is **not required** at this stage of the project.
- Focus was on DDL, DML, constraint handling, ER modeling, and relational conversion.

---

Feel free to clone, explore, and run the SQL scripts in your preferred database environment!

