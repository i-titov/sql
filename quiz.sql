--Creation of db
CREATE DATABASE quiz;

--Creation of users in an app
CREATE TABLE `user`(
`id` int(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
`name` varchar(255) NOT NULL,
`email` varchar(500) NOT NULL,
`pwd` varchar(255) NOT NULL,
`fk_result_id` int(11) DEFAULT NULL,
`created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--Creation of questions in an app
CREATE TABLE `question`(
    `id` int(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `question` varchar(500) NOT NULL,
    `created_at`timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--Creation of answers in an app
CREATE TABLE  `answer`(
    `id` int(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `answer` varchar(500) NOT NULL,
    `is_right` int(2) NOT NULL,
    `fk_question_id` int NOT NULL,
    `created_at`timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (fk_question_id) REFERENCES question(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--Creation of results in an app
CREATE TABLE  `result`(
      `id` int(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
      `fk_user_id` int NOT NULL,
      `fk_answer_id` int NOT NULL,
      `created_at`timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
      FOREIGN KEY (fk_answer_id) REFERENCES answer(id),
      FOREIGN KEY (fk_user_id) REFERENCES user(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--ADD FOREIGN KEY for table user
ALTER TABLE `user`
    ADD FOREIGN KEY (fk_result_id) REFERENCES result(id);