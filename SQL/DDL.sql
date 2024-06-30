--todo -- --- --CREATE  Statement -- -- -- -- -- -- -- -- -- -- -- 

-- CREATE TABLE (data_name data_type constraint);

CREATE TABLE address_details (
    address_id INT PRIMARY KEY,
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100)
);


CREATE TABLE school (
    school_id INT PRIMARY KEY,
    school_name VARCHAR(255),
    board VARCHAR(100),
    address_id INT,
    FOREIGN KEY (address_id) REFERENCES address_details(address_id)
);


CREATE TABLE staff (
    staff_id INT PRIMARY KEY,
    school_id INT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    age INT,
    dob DATE,
    gender CHAR(1) CHECK (gender IN ('m', 'f')),
    address_id INT,
    FOREIGN KEY (school_id) REFERENCES school(school_id),
    FOREIGN KEY (address_id) REFERENCES address_details(address_id)
);

CREATE TABLE data_type_1
(
  student_id SERIAL ,
  isMarried BOOLEAN NOT NULL,
  class_section CHAR(2) NOT NULL,
  full_name VARCHAR(40) NOT NULL,
  city TEXT NOT NULL
);


CREATE Table tables(id SERIAL, name TEXT);


-- * Below two tables are created using Constraints
CREATE Table table_constraints_1 (
    userid VARCHAR(10) PRIMARY KEY,
    username VARCHAR(10) NOT NULL,
    model VARCHAR(10) UNIQUE NOT NULL,
    price numeric CHECK (price > 0)
);

CREATE TABLE table_constraints_2(
    modelid INT PRIMARY KEY,
    userid VARCHAR(10) REFERENCES table_constraints_1(userid)    
);

-- product_no integer REFERENCES products (product_no),

--todo -- --- --ATLER  Statement -- -- -- -- -- -- -- -- -- -- -- 



ALTER TABLE tables RENAME TO new_tables;

ALTER TABLE new_tables
ADD gender BOOLEAN;

ALTER TABLE new_tables
ALTER COLUMN gender SET DATA TYPE CHAR(2);

ALTER TABLE new_tables
RENAME COLUMN gender TO category;

ALTER TABLE new_tables
ADD CONSTRAINT table_id PRIMARY KEY (id);


ALTER TABLE new_tables
ADD CONSTRAINT category CHECK (category IN ('M' , 'F'));


--todo -- --- --DROP  Statement -- -- -- -- -- -- -- -- -- -- -- 

DROP TABLE school;
DROP Table tables;
