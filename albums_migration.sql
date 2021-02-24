USE codeup_test_db;
DROP TABLE if EXISTS albums;
CREATE TABLE albums(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist varchar(50),
  name varchar(100),
  release_date INT,
  sales  DOUBLE(5,2),
  genre varchar(50),
  PRIMARY KEY (id)
);