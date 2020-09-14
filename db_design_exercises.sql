USE ad_list;


CREATE TABLE advertisement(
    id int UNSIGNED NOT NULL AUTO_INCREMENT,
    title CHAR(50),
    body TEXT,
    imgName CHAR(25),
    category TINYINT UNSIGNED NOT NULL,
    ad_date DATE,
    PRIMARY KEY (id),
    FOREIGN KEY (category) REFERENCES category(cat_no)
);


CREATE TABLE category(
    cat_no TINYINT UNSIGNED NOT NULL,
    cat_name CHAR(25)
) ENGINE=InnoDB AUTO_INCREMENT=10;


CREATE TABLE users(
    id int UNSIGNED NOT NULL AUTO_INCREMENT,
    user_name CHAR(25),
    email CHAR(75),
    password CHAR(50),
    PRIMARY KEY(id)
);


CREATE TABLE user_ad_history(
    ad_id INTEGER UNSIGNED NOT NULL,
    user_id INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY (ad_id) REFERENCES advertisement(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

SELECT email
FROM users
JOIN user_ad_history uah on users.id = uah.user_id
JOIN advertisement a on a.id = uah.ad_id

