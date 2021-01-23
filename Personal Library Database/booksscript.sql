CREATE TABLE books (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, author TEXT, genre TEXT, pages INTEGER);

/*Inserting books into the books table*/
BEGIN TRANSACTION;
INSERT INTO books (title, author, genre, pages) VALUES ('discrete mathematics and its applications', 'Rosen Kenneth', 'education', 678);
INSERT INTO books (title, author, genre, pages) VALUES ('discrete mathematics and its applications', 'Rosen Kenneth', 'education', 678);
INSERT INTO books (title, author, genre, pages) VALUES ('Amulet: The Stonekeeper', 'Kazu Kibuishi', 'fantasy', 192);
INSERT INTO books (title, author, genre, pages) VALUES ('Amulet: The Stonekeeper', 'Kazu Kibuishi', 'fantasy', 192);
INSERT INTO books (title, author, genre, pages) VALUES ('Amulet: The Stonekeepers Curse', 'Kazu Kibuishi', 'fantasy', 224);
INSERT INTO books (title, author, genre, pages) VALUES ('Amulet: The Stonekeepers Curse', 'Kazu Kibuishi', 'fantasy', 224);
INSERT INTO books (title, author, genre, pages) VALUES ('Amulet: The Cloud Searchers', 'Kazu Kibuishi', 'fantasy', 210);
INSERT INTO books (title, author, genre, pages) VALUES ('Amulet: The Cloud Searchers', 'Kazu Kibuishi', 'fantasy', 210);
INSERT INTO books (title, author, genre, pages) VALUES ('Amulet: The Last Council', 'Kazu Kibuishi', 'fantasy', 226);
INSERT INTO books (title, author, genre, pages) VALUES ('Amulet: The Last Council', 'Kazu Kibuishi', 'fantasy', 226);
INSERT INTO books (title, author, genre, pages) VALUES ('Amulet: Prince of the elves', 'Kazu Kibuishi', 'fantasy', 210);
INSERT INTO books (title, author, genre, pages) VALUES ('Amulet: Prince of the elves', 'Kazu Kibuishi', 'fantasy', 210);
INSERT INTO books (title, author, genre, pages) VALUES ('Amulet: escape from lucien', 'Kazu Kibuishi', 'fantasy', 224);
INSERT INTO books (title, author, genre, pages) VALUES ('Amulet: escape from lucien', 'Kazu Kibuishi', 'fantasy', 224);
INSERT INTO books (title, author, genre, pages) VALUES ('Amulet: FireLight', 'Kazu Kibuishi', 'fantasy', 204);
INSERT INTO books (title, author, genre, pages) VALUES ('Amulet: FireLight', 'Kazu Kibuishi', 'fantasy', 204);
INSERT INTO books (title, author, genre, pages) VALUES ('Amulet: supernova', 'Kazu Kibuishi', 'fantasy', 208);
INSERT INTO books (title, author, genre, pages) VALUES ('Amulet: supernova', 'Kazu Kibuishi', 'fantasy', 208);
END TRANSACTION;

SELECT * FROM books;

/* INSERT A TWO ROWS and DELETE THEM */
INSERT INTO books(title) VALUES ('this is not a book');
INSERT INTO books(title) VALUES ('this is not a book');

/* DELETE the two book's that has title this is not a book */
DELETE FROM books WHERE title = 'this is not a book';

/*UPDATE book pages for Amulet: The Cloud Searchers because it has 208 pages not 210*/
UPDATE books set pages = '208' WHERE title = 'Amulet: The Cloud Searchers';

/* Display the unqiue books for books table*/
SELECT DISTINCT title AS Title, author AS Author, genre AS Genre, pages AS Pages FROM books;

/*Drops table for books*/
DROP TABLE IF EXISTS books;