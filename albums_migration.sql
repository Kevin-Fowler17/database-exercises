USE ymir_kevin;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(255),
    name VARCHAR(255),
    release_data YEAR(4),
    sales FLOAT,
    genre VARCHAR(255),
    PRIMARY KEY (id)
);

