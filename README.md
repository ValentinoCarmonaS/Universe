# Universe Database Project  
*A PostgreSQL database modeling celestial objects for freeCodeCamp.org*

This project involves creating a structured relational database named `universe` to catalog galaxies, stars, planets, moons, and cosmic events. The database adheres to strict naming conventions, data type usage, and relational integrity, demonstrating proficiency in SQL and database design.

---

## **Project Overview**  
The `universe` database organizes celestial data into interconnected tables, enabling queries about cosmic relationships and events. Key features include:  
- **5 Tables**: `galaxy`, `star`, `planet`, `moon`, and `space_events` (additional table for astronomical phenomena).  
- **Relational Structure**: Hierarchical foreign key relationships (e.g., stars belong to galaxies, planets orbit stars).  
- **Data Integrity**: Constraints like `UNIQUE`, `NOT NULL`, and `BOOLEAN` flags enforce valid data.  
- **Scalability**: Auto-incrementing primary keys (`galaxy_id`, `star_id`, etc.) and flexible schema design.  

---

## **Database Schema**  

### **Tables & Relationships**  
| Table          | Columns (Key Examples)                                                                 | Relationships                              |  
|----------------|---------------------------------------------------------------------------------------|--------------------------------------------|  
| `galaxy`       | `galaxy_id` (PK), `name` (UNIQUE), `age_in_millions_of_years` (INT), `description` (TEXT) | Linked to `star` via `galaxy_id` (FK)      |  
| `star`         | `star_id` (PK), `galaxy_id` (FK), `age_in_millions_of_years` (INT)                    | Parent of `planet`                         |  
| `planet`       | `planet_id` (PK), `star_id` (FK), `has_life` (BOOLEAN), `can_have_life` (BOOLEAN)     | Parent of `moon`                           |  
| `moon`         | `moon_id` (PK), `planet_id` (FK), `mass_in_kg` (NUMERIC)                              | Child of `planet`                          |  
| `space_events` | `space_events_id` (PK), `event_type` (VARCHAR), `planet_id` (FK), `date` (DATE)       | Optional links to `planet`, `star`, `moon` |  

### **Key Constraints**  
- **Primary Keys**: All tables use `<table>_id` (e.g., `moon_id`).  
- **Foreign Keys**: Ensure referential integrity (e.g., `star.galaxy_id` references `galaxy.galaxy_id`).  
- **Uniqueness**: `name` columns in `galaxy`, `star`, `planet`, and `moon` are unique.  
- **Data Types**:  
  - `NUMERIC` for precise values (e.g., moon mass).  
  - `BOOLEAN` for flags like `has_life`.  
  - `TEXT` for descriptions.  

---

## **Setup & Usage**  

### **Restore the Database**  
1. Download the `universe.sql` file.  
2. Run:  
   ```bash  
   psql -U [username] -d postgres -f universe.sql  
   ```  

### **Example Queries**  
1. Find all moons orbiting planets with potential life:  
   ```sql  
   SELECT m.name, p.name AS planet  
   FROM moon m  
   JOIN planet p ON m.planet_id = p.planet_id  
   WHERE p.can_have_life = TRUE;  
   ```  
2. List stars in the "Andromeda" galaxy:  
   ```sql  
   SELECT s.name, s.age_in_millions_of_years  
   FROM star s  
   JOIN galaxy g ON s.galaxy_id = g.galaxy_id  
   WHERE g.name = 'Andromeda';  
   ```  

---

## **Technologies Used**  
- **PostgreSQL**: Database management.  
- **SQL**: Schema design, constraints, and queries.  
- **pg_dump**: Database backup/restore.  

---

This project demonstrates a strong grasp of relational database principles, including normalization, constraints, and hierarchical relationships. The inclusion of an additional `space_events` table highlights creativity in extending functionality beyond core requirements.  

A project completed as part of the freeCodeCamp.org Relational Database Certification.

