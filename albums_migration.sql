USE ymir_kevin;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name VARCHAR(100) DEFAULT 'NONE',
    release_data DATE NOT NULL,
    sales FLOAT NOT NULL,
    genre VARCHAR(50) DEFAULT 'NONE',
    PRIMARY KEY (id)
);
