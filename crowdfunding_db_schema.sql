-- Create category table
CREATE TABLE categories (
  category_id VARCHAR(250) PRIMARY KEY,
  category VARCHAR(250) NOT NULL
);

-- Create subcategory table
CREATE TABLE subcategories (
  subcategory_id VARCHAR(250) PRIMARY KEY,
  subcategory VARCHAR(250) NOT NULL
);

-- Create contacts table
CREATE TABLE contacts (
  contact_id INTEGER PRIMARY KEY,
  first_name VARCHAR(250),
  last_name VARCHAR(250),
  email VARCHAR(250)
);

-- Create campaign table
CREATE TABLE campaign (
  cf_id INTEGER PRIMARY KEY,
  contact_id INTEGER,
  company_name VARCHAR(250),
  description VARCHAR(250),
  goal VARCHAR(250),
  pledged VARCHAR(250),
  outcome VARCHAR(250),
  backers_count INTEGER,
  country VARCHAR(250),
  currency VARCHAR(250),
  launched_date DATE,
  end_date DATE,
  category_id VARCHAR(250),
  subcategory_id VARCHAR(250),
  FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
  FOREIGN KEY (category_id) REFERENCES categories(category_id),
  FOREIGN KEY (subcategory_id) REFERENCES subcategories(subcategory_id)
);

SELECT *
FROM categories

SELECT *
FROM subcategories

SELECT *
FROM contacts

SELECT *
FROM campaign