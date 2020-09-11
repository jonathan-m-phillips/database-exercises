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
