USE codeup_test_db;
CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL,
    release_date INT UNSIGNED DEFAULT NULL,
    sales FLOAT,
    genre VARCHAR(255),
    PRIMARY KEY (id)
);