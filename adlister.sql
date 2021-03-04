USE adlister_db;

CREATE TABLE users (
    user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR(50),
    password  VARCHAR(50) NOT NULL,
    PRIMARY KEY (user_id)
);
INSERT INTO users(email, password) VALUES
('badboy@yahoo.com', 'gangsta'),
 ('athleteguy@yahoo.com', 'gosports');

CREATE TABLE Ad(
    ad_id         INT UNSIGNED NOT NULL AUTO_INCREMENT,
    description   text,
    user_id       INT UNSIGNED NOT NULL,
    PRIMARY KEY (ad_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id)
);

ALTER TABLE Ad MODIFY COLUMN categories_id INT UNSIGNED;


    CREATE TABLE Ads(
    ad_id         INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id       INT UNSIGNED NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (ad_id) REFERENCES Ad (ad_id)


);



CREATE TABLE Categories(
    category_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    category varchar(50) NOT NULL,
    PRIMARY KEY(category_id)
);

INSERT INTO Categories(category) VALUES
# ('furniture'),
# ('electronics'),
# ('sports'),
# ('appliances'),
# ('black market'),
 ('giveaway');



CREATE table Ad_Categories(
    ad_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    category_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (category_id) REFERENCES Categories(CATEGORY_ID),
    FOREIGN KEY (ad_id) REFERENCES Ad (ad_id)
);
INSERT INTO Ad(user_id, description) VALUES
(2, 'ping pong table');

INSERT INTO Ad_Categories(ad_id, category_id) VALUES
    (5, 7);

SELECT users.email AS 'email', Ad.description as 'Description', c.category
from users
join Ad on users.user_id = Ad.user_id
join Ad_Categories AC on Ad.ad_id = AC.ad_id
join categories c on c.category_id=ac.category_id;

SELECT Ad.ad_id as 'Ad Number',Ad.description as 'Description', c.category
from Ad
         join Ad_Categories AC on Ad.ad_id = AC.ad_id
         join categories c on c.category_id=ac.category_id
WHERE Ad.ad_id=2;

SELECT Ad.ad_id as 'Ad Number',Ad.description as 'Description', c.category
from Ad
         join Ad_Categories AC on Ad.ad_id = AC.ad_id
         join categories c on c.category_id=ac.category_id
WHERE c.category_id=6;

SELECT Ad.ad_id as 'Ad Number',users.email AS 'email', Ad.description as 'Description'
from users
         join Ad on users.user_id = Ad.user_id
WHERE users.user_id=1





