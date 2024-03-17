-- database creation
CREATE DATABASE redfin
-- creation of tables
CREATE TABLE bank (
    id SERIAL,
    bank_name TEXT NOT NULL,
    loan_type TEXT NOT NULL,
    loan_amount MONEY NOT NULL,
    house_sold BOOLEAN,
    PRIMARY KEY(id)
);

CREATE TABLE buyers (
    id SERIAL,
    email TEXT NOT NULL,
    password TEXT NOT NULL UNIQUE,
    PRIMARY KEY(id)
);

CREATE TABLE house (
    id SERIAL,
    selling_price MONEY NOT NULL,
    year_built INT NOT NULL,
    house_address CHAR NOT NULL UNIQUE,
    region_id INT,
    PRIMARY KEY(id)
);

CREATE TABLE real_estate_agent (
    id SERIAL,
    email TEXT NOT NULL,
    password CHAR NOT NULL UNIQUE,
    PRIMARY KEY(id)
);

CREATE TABLE sellers (
    id SERIAL,
    email TEXT NOT NULL,
    password TEXT NOT NULL UNIQUE,
    PRIMARY KEY(id)
)

--add table data/ alter table data
INSERT INTO bank(bank_name, loan_type, loan_amount, house_sold)
VALUES ('bank of america', 'mortgage', 300000, 'yes');

INSERT INTO bank(bank_name, loan_type, loan_amount, house_sold)
VALUES ('Sound Credit', 'mortgage', 1000000, 'yes');

INSERT INTO buyers(email, password)
VALUES ('buyer@email.com', 'wordpass!@#@sbfelaskbf');

INSERT INTO house(selling_price, year_built, house_address, region_id)
VALUES (960000, 2004, '55432 kent ave, washington, 98093', 302);

ALTER TABLE house
ALTER house_address TYPE TEXT;