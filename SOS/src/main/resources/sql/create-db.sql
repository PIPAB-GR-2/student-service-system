drop schema public cascade;

drop table account if exists;
drop table mark if exists;
drop table account_type if exists;
drop table account_status if exists;
drop table student if exists;
drop table student_class if exists;
drop table class if exists;
drop table class_type if exists;
drop table student_book if exists;
drop table student_book_status if exists;
drop table book if exists;
drop table payment if exists;
drop table payment_status if exists;


CREATE TABLE account (
  id BIGINT PRIMARY KEY,
  login VARCHAR(20) UNIQUE,
  password VARCHAR(30),
  email VARCHAR(30) UNIQUE,
  account_type_id BIGINT,
  account_status_id BIGINT
);

CREATE TABLE mark (
  id BIGINT PRIMARY KEY,
  name VARCHAR(50),
  value DOUBLE,
  date DATE,
  student_class_id BIGINT
);

CREATE TABLE account_type (
  id BIGINT PRIMARY KEY,
  name VARCHAR(50) UNIQUE
);

CREATE TABLE account_status (
  id BIGINT PRIMARY KEY,
  name VARCHAR(50) UNIQUE
);

CREATE TABLE student (
  id BIGINT PRIMARY KEY,
  account_id BIGINT,
  name VARCHAR(50),
  surname VARCHAR(50),
  birthday_date DATE,
  index_number BIGINT UNIQUE,
  pesel_number BIGINT UNIQUE
);

CREATE TABLE student_class (
  id BIGINT PRIMARY KEY,
  student_id BIGINT,
  class_id BIGINT
);

CREATE TABLE class (
  id BIGINT PRIMARY KEY,
  name VARCHAR(100) UNIQUE,
  description VARCHAR(255),
  date DATE,
  term INT,
  class_type_id BIGINT
);

CREATE TABLE class_type (
  id BIGINT PRIMARY KEY,
  name VARCHAR(50) UNIQUE
);

CREATE TABLE student_book (
  id BIGINT PRIMARY KEY,
  student_id BIGINT,
  book_id BIGINT,
  student_book_status_id BIGINT,
  borrow_date DATE,
  return_date DATE
);

CREATE TABLE student_book_status (
  id BIGINT PRIMARY KEY,
  name VARCHAR(50) UNIQUE
);

CREATE TABLE book (
  id BIGINT PRIMARY KEY,
  name VARCHAR(100),
  serial_number BIGINT UNIQUE
);

CREATE TABLE payment (
  id BIGINT PRIMARY KEY,
  name VARCHAR(100),
  amount DECIMAL(9,2),
  bank_account_number VARCHAR(100),
  due_date DATE,
  student_id BIGINT,
  status_id BIGINT
);

CREATE TABLE payment_status (
  id BIGINT PRIMARY KEY,
  name VARCHAR(30) UNIQUE
);

CREATE UNIQUE INDEX student_class_index ON student_class (student_id, class_id);

ALTER TABLE account ADD FOREIGN KEY (account_type_id) REFERENCES account_type (id);
ALTER TABLE account ADD FOREIGN KEY (account_status_id) REFERENCES account_status (id);
ALTER TABLE mark ADD FOREIGN KEY (student_class_id) REFERENCES student_class (id);
ALTER TABLE student ADD FOREIGN KEY (account_id) REFERENCES account (id);
ALTER TABLE student_class ADD FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE student_class ADD FOREIGN KEY (class_id) REFERENCES class (id);
ALTER TABLE class ADD FOREIGN KEY (class_type_id) REFERENCES class_type (id);
ALTER TABLE student_book ADD FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE student_book ADD FOREIGN KEY (book_id) REFERENCES book (id);
ALTER TABLE student_book ADD FOREIGN KEY (student_book_status_id) REFERENCES student_book_status (id);
ALTER TABLE payment ADD FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE payment ADD FOREIGN KEY (status_id) REFERENCES payment_status (id);
