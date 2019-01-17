DROP TABLE authors, categories, blogs, comments;

CREATE TABLE authors 
(id serial PRIMARY KEY
, fname VARCHAR(15)
, lname VARCHAR(15)
, bio VARCHAR
, imgURL VARCHAR
);

CREATE TABLE categories 
(id serial PRIMARY KEY
, name VARCHAR
);

CREATE TABLE blogs 
(id serial PRIMARY KEY
, title VARCHAR
, author_id integer REFERENCES authors (id)
, category_id integer REFERENCES categories (id)
, content TEXT
, img_url VARCHAR
, created_on DATE NOT NULL DEFAULT CURRENT_DATE
, posted_on DATE
, isPublished BOOLEAN
);

CREATE TABLE comments 
(id serial PRIMARY KEY
, handle_name integer
, blog_id integer REFERENCES blogs (id)
, comment VARCHAR
, created_on DATE NOT NULL DEFAULT CURRENT_DATE
, isPublic BOOLEAN
);

INSERT INTO authors VALUES
(DEFAULT,'Hailey', 'Douglas','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', 'https://images.pexels.com/photos/45170/kittens-cat-cat-puppy-rush-45170.jpeg?cs=srgb&dl=animals-cats-cute-45170.jpg&fm=jpg')
, (DEFAULT,'Mason', 'Weasley','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1YdhNIlN5PqquJhiInSCGiEhqw0rbBwAAQ6stCTgrpC_ZzTS4')
, (DEFAULT,'Marvin', 'Exton','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Stray_kitten_Rambo002.jpg/220px-Stray_kitten_Rambo002.jpg')
, (DEFAULT,'Bryon', 'Wooldridge','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Stray_kitten_Rambo002.jpg/220px-Stray_kitten_Rambo002.jpg')
;

INSERT INTO categories VALUES
(DEFAULT, 'Music')
, (DEFAULT, 'Fashion')
, (DEFAULT, 'Car')
, (DEFAULT, 'Beauty')
;

-- INSERT INTO blogs VALUES
-- (DEFAULT,'lorem',1,1,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-02',TRUE)
-- ,(DEFAULT,'ipsum',1,2,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-03',TRUE)
-- ,(DEFAULT,'ipsum',1,3,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-04',TRUE)
-- ,(DEFAULT,'dolor',2,4,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-05',TRUE)
-- ,(DEFAULT,'ab',2,1,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-06',TRUE)
-- ,(DEFAULT,'d',2,2,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-07',TRUE)
-- ,(DEFAULT,'dsafsdfa',3,3,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-08',TRUE)
-- ,(DEFAULT,'dasdfasdfadsgadg',3,4,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-09',FALSE)
-- ,(DEFAULT,'cvxcvn',4,1,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-12',TRUE)
-- ,(DEFAULT,'h',4,2,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-13',TRUE)
-- ;

-- ,(DEFAULT,'tyjutryj',5,3,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-14',TRUE)
-- ,(DEFAULT,'ngndth',5,4,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-15',TRUE)
-- ,(DEFAULT,'ertu',5,5,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-16',TRUE)
-- ,(DEFAULT,'l’;srtkh;l',6,6,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-17',TRUE)
-- ,(DEFAULT,';lrkthprtiosd',6,7,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-18',FALSE)
-- ,(DEFAULT,'s;efsert',6,8,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-19',TRUE)
-- ,(DEFAULT,';flgs;ldkgs',6,9,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-20',TRUE)
-- ,(DEFAULT,'dflgslkgs',6,10,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-21',TRUE)
-- ,(DEFAULT,'ipsum',6,1,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-22',TRUE)
-- ,(DEFAULT,'ipsum',8,2,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-23',TRUE)
-- ,(DEFAULT,'dolor',8,3,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-24',TRUE)
-- ,(DEFAULT,'ab',8,4,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-25',TRUE)
-- ,(DEFAULT,'d',9,5,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-26',TRUE)
-- ,(DEFAULT,'dsafsdfa',9,6,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-27',TRUE)
-- ,(DEFAULT,'dasdfasdfadsgadg',9,7,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-28',FALSE)
-- ,(DEFAULT,'rtwertw',10,8,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-29',TRUE)
-- ,(DEFAULT,'dfggfh',10,9,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-30',TRUE)
-- ,(DEFAULT,'cvxcvn',10,10,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-01-31',TRUE)
-- ,(DEFAULT,'h',1,10,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-01',TRUE)
-- ,(DEFAULT,'tyjutryj',1,9,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-02',TRUE)
-- ,(DEFAULT,'ngndth',1,8,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-03',TRUE)
-- ,(DEFAULT,'ertu',2,7,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-04',TRUE)
-- ,(DEFAULT,'l’;srtkh;l',2,6,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-05',TRUE)
-- ,(DEFAULT,';lrkthprtiosd',2,5,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-06',TRUE)
-- ,(DEFAULT,'ipsum',3,4,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-07',TRUE)
-- ,(DEFAULT,'ipsum',3,3,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-08',TRUE)
-- ,(DEFAULT,'dolor',3,2,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-09',TRUE)
-- ,(DEFAULT,'ipsum',4,1,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-10',TRUE)
-- ,(DEFAULT,'ipsum',4,10,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-11',TRUE)
-- ,(DEFAULT,'dolor',4,9,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-12',FALSE)
-- ,(DEFAULT,'ab',5,8,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-13',FALSE)
-- ,(DEFAULT,'d',5,7,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-14',TRUE)
-- ,(DEFAULT,'dsafsdfa',5,6,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-15',TRUE)
-- ,(DEFAULT,'dasdfasdfadsgadg',6,5,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-16',FALSE)
-- ,(DEFAULT,'rtwertw',6,4,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-17',TRUE)
-- ,(DEFAULT,'dfggfh',6,3,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-18',TRUE)
-- ,(DEFAULT,'cvxcvn',6,2,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-19',TRUE)
-- ,(DEFAULT,'h',6,1,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-20',TRUE)
-- ,(DEFAULT,'tyjutryj',6,10,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-21',TRUE)
-- ,(DEFAULT,'ngndth',8,9,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-22',FALSE)
-- ,(DEFAULT,'ertu',8,8,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-23',TRUE)
-- ,(DEFAULT,'l’;srtkh;l',8,7,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-24',TRUE)
-- ,(DEFAULT,';lrkthprtiosd',9,6,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-25',TRUE)
-- ,(DEFAULT,'s;efsert',9,5,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-26',TRUE)
-- ,(DEFAULT,'tyjutryj',9,4,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-27',FALSE)
-- ,(DEFAULT,'ngndth',10,3,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-02-28',TRUE)
-- ,(DEFAULT,'ertu',10,2,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-03-01',TRUE)
-- ,(DEFAULT,'l’;srtkh;l',10,1,'orem Ipsum is simply dummy text of the printing.', DEFAULT,'2018-03-02',TRUE);


