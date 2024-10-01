CREATE DATABASE students;
USE students;
CREATE TABLE student (
    usn SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT CHECK (age > 0),
    major VARCHAR(100),
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    genre VARCHAR(100),
    read_status BOOLEAN DEFAULT FALSE,
    added_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    usn INT,
    FOREIGN KEY (usn) REFERENCES student(usn)
);
INSERT INTO student (name, age, major)
VALUES 
    (1,'Giridhar', 20, 'Nothing'),
    (2,'Alex', 20, 'Nothing');
    (3,'Ragini', 20, 'Nothing');
    (4,'Rihiiya', 20, 'Nothing');



INSERT INTO books (title, author, genre, read_status, usn)
VALUES 
    ('Devil On Earth', 'Giridhar', 'Kolegara', TRUE, 1),
    ('Mockingbird', 'Harper Lee', 'Fiction', FALSE, 1),
    ('The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', TRUE, 2);

-- SELECT * FROM books;
-- SELECT * FROM books WHERE read_status = FALSE;
-- SELECT * FROM books WHERE author = 'Giridhar';
-- UPDATE books SET read_status = TRUE WHERE id = 2;
-- DELETE FROM books WHERE id = 1;  
-- \q