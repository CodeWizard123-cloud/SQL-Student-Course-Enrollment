# 🎓 Student Course Enrollment - SQL Project

This mini SQL project demonstrates a **relational database system** to manage student enrollments in various courses. It showcases table creation, data insertion, and multiple complex queries using SQL.

---

## 📌 Project Description

The system handles:
- Student records
- Course details
- Enrollment tracking

It uses **foreign keys** to maintain relationships and runs various **queries** for data insights like:
- Total enrollments
- Gender-based filtering
- Monthly trends
- Multi-course enrollments

---

## 📂 Tables Structure

### 🧑 Students Table
| Column       | Type        |
|--------------|-------------|
| student_id   | INT (PK)    |
| student_name | VARCHAR(50) |
| gender       | VARCHAR(10) |
| age          | INT         |

### 📘 Courses Table
| Column         | Type         |
|----------------|--------------|
| course_id      | INT (PK)     |
| course_name    | VARCHAR(50)  |
| course_duration| VARCHAR(20)  |

### 📝 Enrollments Table
| Column          | Type        |
|------------------|-------------|
| enrollment_id    | INT (PK)    |
| student_id       | INT (FK)    |
| course_id        | INT (FK)    |
| enrollment_date  | DATE        |

---

## 🚀 Features & Queries

- 🔍 **List all enrollments with student & course names**
- 📊 **Count students per course**
- 👩‍🎓 **Filter female students in specific courses**
- 📅 **Count enrollments per month**
- 📚 **Find students enrolled in multiple courses**

---

## 📎 Tools Used

- 💾 **MySQL v8**
- 🌐 [DB Fiddle](https://www.db-fiddle.com/f/sqg2E9YC7c1f7kvuHqNeXN/0) (Online SQL playground)

---

## 📁 Files

- `schema.sql` – Table creation statements
- `queries.sql` – Data insertion + SELECT queries

---

## 💡 Output Preview

| student_name | course_name        | enrollment_date |
|--------------|--------------------|------------------|
| Ananya       | Python Programming | 2024-01-10       |
| Arjun        | Python Programming | 2024-03-15       |
| Rahul        | Data Science       | 2024-01-15       |
| Ananya       | Data Science       | 2024-02-01       |
| Pooja        | Web Development    | 2024-03-10       |

---

## 👩‍💻 Author

**Mamatha P Naik**  
GitHub: [@your-username](https://github.com/your-username)  
SQL Project - July 2025

---

## 📜 License

This project is licensed for educational use.

