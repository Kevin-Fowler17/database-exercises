USE ymir_kevin;

CREATE TABLE adlister_users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    password CHAR(10) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO adlister_users(email, password) VALUES
    ('kevin@test.com', 'Kevin12345'),
    ('tonya@test.com', 'Tonya12345'),
    ('emily@test.com', 'Emily67890'),
    ('madison@test.com', 'Madis67890'),
    ('olivia@test.com', 'Olivi67890');

CREATE TABLE adlister_ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES adlister_users (id)
);

INSERT INTO adlister_ads(title, description, user_id) VALUES
    ('Take this stuff',	                   'Stuff, stuff, and more stuff',        1),
    ('Pool repairs needed',	               'Need new light installed',            1),
    ('Car for sale',	                   '2015 Chevy Traverse',                 1),
    ('Need landscaping',	               'Need lawn mowed and garden weeded',   2),
    ('Dance instructor needed',	           'Ballet all day, every day',           3),
    ('Looking for Stranger Things things', 'I will but anything Stranger Things', 4),
    ('Barbies for sale',	               'Some body parts missing',             5);

CREATE TABLE adlister_categories (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO adlister_categories(name) VALUES
    ('Automobiles'),
    ('Collectables'),
    ('Dance'),
    ('Furniture'),
    ('Gardening'),
    ('Giveaway'),
    ('Help wanted'),
    ('Toys');

CREATE TABLE adlister_ad_category (
ad_id INTEGER UNSIGNED NOT NULL,
category_id INTEGER UNSIGNED NOT NULL,
FOREIGN KEY (ad_id) REFERENCES adlister_ads(id),
FOREIGN KEY (category_id) REFERENCES adlister_categories(id)
);

INSERT INTO adlister_ad_category(ad_id, category_id) VALUES
    (1, 6),
    (1, 1),
    (1, 8),
    (2, 7),
    (3, 1),
    (4, 7),
    (4, 5),
    (5, 7),
    (5, 3),
    (6, 2),
    (7, 8);

SELECT a.title as 'Ad', u.email as 'Email'
FROM adlister_ads a
INNER JOIN adlister_users u on a.user_id = u.id
WHERE a.id = 1;

SELECT a.title as Ad, c.name as Category
FROM adlister_ads a
INNER JOIN adlister_ad_category ac on a.id = ac.ad_id
INNER JOIN adlister_categories c on ac.category_id = c.id
WHERE a.id = 1;

SELECT c.name as 'Category', a.title as Ad
FROM adlister_categories c
INNER JOIN adlister_ad_category ac on c.id = ac.category_id
INNER JOIN adlister_ads a on ac.ad_id = a.id
WHERE c.id = 7
ORDER BY c.name;

SELECT u.email as 'User', a.title as 'Ad'
FROM adlister_users u
INNER JOIN adlister_ads a on u.id = a.user_id
WHERE u.id = 1;

SELECT u.id as 'User ID',
       u.email as 'Email',
       u.password as 'Password',
       a.title as 'Ad',
       a.description as 'Description',
       c.name as 'Category'
FROM adlister_users u
INNER JOIN adlister_ads a on u.id = a.user_id
INNER JOIN adlister_ad_category ac on a.id = ac.ad_id
INNER JOIN adlister_categories c on ac.category_id = c.id;