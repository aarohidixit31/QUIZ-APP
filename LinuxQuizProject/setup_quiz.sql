CREATE DATABASE IF NOT EXISTS quizdb;
USE quizdb;

CREATE TABLE IF NOT EXISTS questions (
  id INT AUTO_INCREMENT PRIMARY KEY,
  question_text TEXT NOT NULL,
  option1 VARCHAR(255),
  option2 VARCHAR(255),
  option3 VARCHAR(255),
  option4 VARCHAR(255),
  correct_option INT
);
