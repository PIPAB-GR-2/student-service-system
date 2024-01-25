INSERT INTO account_type (id, name) VALUES
(1, 'Admin'),
(2, 'Teacher'),
(3, 'Student'),
(4, 'Guest');

-- Insert into account_status table
INSERT INTO account_status (id, name) VALUES
(1, 'Active'),
(2, 'Inactive'),
(3, 'Suspended'),
(4, 'Pending');

-- Insert into class_type table
INSERT INTO class_type (id, name) VALUES
(1, 'Lecture'),
(2, 'Workshop'),
(3, 'Seminar'),
(4, 'Lab');

-- Insert into student_book_status table
INSERT INTO student_book_status (id, name) VALUES
(1, 'Available'),
(2, 'Borrowed'),
(3, 'Overdue'),
(4, 'Lost');

-- Insert into payment_status table
INSERT INTO payment_status (id, name) VALUES
(1, 'Pending'),
(2, 'Unpaid'),
(3, 'Paid'),
(4, 'Canceled');

-- Insert into class table
INSERT INTO class (id, name, description, date, term, class_type_id) VALUES
(1, 'Math 101', 'Introduction to Mathematics', '2024-02-01', 1, 1),
(2, 'History 202', 'World History', '2024-02-05', 1, 2),
(3, 'Science Lab', 'Experimental Science', '2023-03-25', 3, 4),
(4, 'English Literature', 'Classic Novels', '2023-04-10', 1, 3);

-- Insert into book table
INSERT INTO book (id, name, serial_number) VALUES
(1, 'Introduction to Programming', 1234567890),
(2, 'English Literature Classics', 9876543210),
(3, 'History of the World', 2345678901),
(4, 'Chemistry Basics', 3456789012);

-- Insert into account table
INSERT INTO account (id, login, password, email, account_type_id, account_status_id) VALUES
(1, 'admin', 'admin123', 'admin@example.com', 1, 1),
(2, 'teacher1', 'teacherpass', 'teacher1@example.com', 2, 1),
(3, 'student1', 'studentpass', 'student1@example.com', 3, 1),
(4, 'student2', 'studentpass2', 'student2@example.com', 3, 1);

-- Insert into student table
INSERT INTO student (id, account_id, name, surname, birthday_date, index_number, pesel_number) VALUES
(1, 3, 'John', 'Doe', '2000-05-15', 123456789, 12345678901),
(2, 4, 'Alice', 'Smith', '2001-08-22', 987654321, 91011121314);

-- Insert into student_class table
INSERT INTO student_class (id, student_id, class_id) VALUES
(1, 1, 1),
(2, 2, 3);

-- Insert into mark table
INSERT INTO mark (id, name, value, date, student_class_id) VALUES
(1, 'Midterm Exam', 5.0, '2024-03-01', 1),
(2, 'Science', 5.0, '2023-03-10', 2);


-- Insert into student_book table
INSERT INTO student_book (id, student_id, book_id, student_book_status_id, borrow_date, return_date) VALUES
(1, 1, 1, 1, '2024-02-10', NULL),
(2, 2, 2, 2, '2024-02-15', NULL),
(3, 1, 4, 3, '2024-03-25', NULL),
(4, 2, 3, 1, '2024-05-05', NULL);

-- Insert into payment table
INSERT INTO payment (id, name, amount, bank_account_number, due_date, student_id, status_id) VALUES
(1, 'Tuition Fee', 5000.00, '123-456-789', '2024-02-15', 1, 1),
(2, 'Library Late Fee', 10.50, '234-567-890', '2023-03-15', 2, 2),
(3, 'Semester Registration', 500.00, '123-456-789', '2023-04-30', 1, 1);
