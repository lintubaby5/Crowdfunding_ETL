-- Creating table schema

--Drop Table Statements

DROP TABLE category;
DROP TABLE subcategory;
DROP TABLE contacts;
DROP TABLE campaign;

-- Create table category

CREATE TABLE category (
  category_id VARCHAR(30) NOT NULL,
  category VARCHAR(50) NOT NULL,
  PRIMARY KEY (category_id)
);

-- Create table subcategory

CREATE TABLE category (
  subcategory_id VARCHAR(30) NOT NULL,
  subcategory VARCHAR(50) NOT NULL,
  PRIMARY KEY (subcategory_id)
);

-- Create table contacts

CREATE TABLE contacts (
  contact_id INT NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  email VARCHAR(50) NOT NULL
  PRIMARY KEY (contact_id)
);

-- Create table campaign

CREATE TABLE campaign (
  cf_id INT NOT NULL,
  contact_id INT NOT NULL,
  company_name VARCHAR(50) NOT NULL,
  description VARCHAR(80) NOT NULL,
  goal NUMERIC NOT NULL,
  pledged NUMERIC NOT NULL,	
  outcome VARCHAR(30) NOT NULL,
  backers_count INT NOT NULL,
  country VARCHAR(20) NOT NULL,
  currency VARCHAR(20) NOT NULL,
  launched_date DATE NOT NULL,
  end_date DATE NOT NULL,
  category_id VARCHAR(30) NOT NULL,
  subcategory_id VARCHAR(30) NOT NULL,
  FOREIGN KEY (category_id) REFERENCES category(category_id),
  FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
  FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
  PRIMARY KEY (cf_id)
);

--Select Statements

select * from category;
select * from subcategory;
select * from contacts;
select * from campaign;