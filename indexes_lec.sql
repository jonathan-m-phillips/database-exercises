use codeup_test_db;

SELECT * FROM albums WHERE artist = 'The Eagles';

use employees;

SELECT * FROM employees where last_name = 'Bamford';



use codeup_test_db;

CREATE TABLE cars (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    make VARCHAR(100) NOT NULL,
    model VARCHAR(100) NOT NULL,
    primary key (id),
    unique (model)
);

INSERT INTO cars (make, model) VALUES ('Chevrolet', 'Corvette'), ('Nissan', 'Sentra');