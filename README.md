# Universe Database

## Project Overview

This project involves creating a PostgreSQL database named `universe` that models celestial objects such as galaxies, stars, planets, and moons. The database is designed to be well-structured, with proper naming conventions, data types, and relationships between tables. The goal is to create a relational database that adheres to specific requirements while demonstrating the ability to design and implement a database schema.

## Key Features

- **Database Structure**: The database consists of five tables: `galaxy`, `star`, `planet`, `moon`, and an additional custom table.
- **Data Types**: Uses a variety of data types, including `VARCHAR`, `INT`, `NUMERIC`, `TEXT`, and `BOOLEAN`, to represent different attributes of celestial objects.
- **Relationships**: The tables are related through foreign keys, ensuring that each star belongs to a galaxy, each planet orbits a star, and each moon orbits a planet.
- **Constraints**: Enforces constraints such as `NOT NULL` and `UNIQUE` to maintain data integrity.
- **Data Population**: The database is populated with a minimum number of rows to demonstrate its functionality: 6 galaxies, 6 stars, 12 planets, and 20 moons.

## Database Schema

### Tables and Relationships

#### Galaxy Table

- Stores information about galaxies.
- **Columns**: `galaxy_id` (primary key), `name` (unique), and additional attributes like `age` (`INT`) and `has_life` (`BOOLEAN`).

#### Star Table

- Stores information about stars within galaxies.
- **Columns**: `star_id` (primary key), `name`, `galaxy_id` (foreign key referencing `galaxy`), and additional attributes like `temperature` (`INT`) and `is_main_sequence` (`BOOLEAN`).

#### Planet Table

- Stores information about planets orbiting stars.
- **Columns**: `planet_id` (primary key), `name`, `star_id` (foreign key referencing `star`), and additional attributes like `mass` (`NUMERIC`) and `is_habitable` (`BOOLEAN`).

#### Moon Table

- Stores information about moons orbiting planets.
- **Columns**: `moon_id` (primary key), `name`, `planet_id` (foreign key referencing `planet`), and additional attributes like `diameter` (`INT`) and `has_atmosphere` (`BOOLEAN`).

#### Additional Table

- A custom table to extend the schema, such as a table for `comet` or `asteroid`, depending on design choice.

### Constraints and Conventions

- **Primary Keys**: Each table has a primary key following the naming convention `<table_name>_id` (e.g., `galaxy_id`, `star_id`).
- **Foreign Keys**: Relationships are established using foreign keys, ensuring referential integrity.
- **Unique and NOT NULL**: At least one column per table is unique, and at least two columns per table do not accept `NULL` values.

## How to Use the Database

### Setting Up the Database

#### Create the Database

1. Connect to PostgreSQL and create the `universe` database.
2. Use the command `\c universe` to connect to the database.

#### Create Tables

- Execute the SQL commands to create the `galaxy`, `star`, `planet`, `moon`, and additional tables.
- Define primary keys, foreign keys, and constraints as specified.

#### Populate the Database

- Insert at least 6 galaxies, 6 stars, 12 planets, and 20 moons into their respective tables.
- Ensure the data adheres to the constraints and relationships.

#### Backup the Database

Use the `pg_dump` command to create a backup of the database:

```bash
pg_dump -U username -d universe -f universe.sql
```

### Running Queries

You can query the database to explore relationships between celestial objects. Examples:

- Find all planets in a specific galaxy.
- List all moons orbiting habitable planets.
- Count the number of stars in each galaxy.

## Technologies Used

- **PostgreSQL**: For database management and querying.
- **SQL**: For defining the schema, inserting data, and querying the database.
- **Command Line**: For interacting with PostgreSQL and managing the database.

## Learning Outcomes

This project helped develop a strong understanding of relational database design, including:

- Creating and managing tables with proper constraints.
- Establishing relationships between tables using foreign keys.
- Using a variety of data types to represent different kinds of information.
- Writing SQL queries to interact with and analyze data.

The `universe` database is a foundational project that demonstrates the ability to design and implement a relational database schema. It can be extended further with additional tables, more complex queries, or integration with an application.

A project completed as part of the freeCodeCamp.org Relational Database Certification.

