CREATE TABLE book
(
	id BIGINT PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	publication_date DATE
);

CREATE TABLE author
(
	id BIGINT PRIMARY KEY,
	full_name VARCHAR(255) NOT NULL,
	birth_date DATE NOT NULL,
	death_date DATE	
);

CREATE TABLE book_author
(
	book_id BIGINT NOT NULL,
	author_id BIGINT NOT NULL,
	PRIMARY KEY (book_id, author_id),
	FOREIGN KEY (book_id) REFERENCES book(id) ON DELETE CASCADE,
	FOREIGN KEY (author_id) REFERENCES author(id) ON DELETE CASCADE
);