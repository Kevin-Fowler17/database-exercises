USE ymir_kevin;

CREATE TABLE qa_users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(100) NOT NULL,
    type INT UNSIGNED NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE qa_questions (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    question TEXT NOT NULL UNIQUE,
    answer CHAR(1) NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES adlister_users (id)
);

CREATE TABLE qa_quizzes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    quiz INT UNSIGNED NOT NULL,
    q1
);