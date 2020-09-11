CREATE TABLE authors (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(100),
    PRIMARY KEY (id),
    UNIQUE (first_name, last_name)
);

INSERT INTO authors(first_name, last_name) VALUES
    ('Douglas', 'Adams'),
    ('Mark', 'Twain');

DROP TABLE IF EXISTS quotes;

CREATE TABLE quotes (
    id INT NOT NULL AUTO_INCREMENT,
    content TEXT NOT NULL,
    author_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (author_id) REFERENCES authors(id)
#     UNIQUE (content, author_id)
);

INSERT INTO quotes (author_id, content) VALUES
    (1, 'Time is an illusions'),
    (2, 'Clothes make the man'),
    (1, 'Don''t panic.');

SELECT content FROM quotes
WHERE author_id = 1;

SELECT CONCAT(a.first_name, ' ', a.last_name) AS 'Author', content AS 'Quote' FROM quotes AS q
JOIN authors a on q.author_id = a.id
WHERE a.last_name LIKE '%t%';

CREATE DATABASE IF NOT EXISTS events;
USE events;

CREATE TABLE attendees (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO attendees (id, name) VALUES
(1, 'Diana Prince'),
(2, 'Tony STark'),
(3, 'Bruce Banner'),
(4, 'NAtalia Alianovia');

CREATE TABLE presentations (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    location VARCHAR(255),
    presentation_time DATETIME,
    PRIMARY KEY (id)
);

INSERT INTO presentations (id, name, location, presentation_time) VALUES
    (1, 'Test-Driven Develp', 'Conference room A', TIME('09:00:00')),
    (2, 'Intro To management', 'Conference room B', TIME('09:00:00')),
    (3, 'Java Design PAtterns', 'Conference room A', TIME('10:30:00')),
    (4, 'Development Methods', 'Conferecne room B', TIME('10:30:00'));

CREATE TABLE attendees_presentations (
    attendee_id INT UNSIGNED NOT NULL,
    presentation_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (attendee_id) REFERENCES attendees(id),
    FOREIGN KEY (presentation_id) REFERENCES presentations(id)
);