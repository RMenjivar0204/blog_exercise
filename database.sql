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
, (DEFAULT,'Joy', 'Ainsworth','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Stray_kitten_Rambo002.jpg/220px-Stray_kitten_Rambo002.jpg')
, (DEFAULT,'Joy', 'Ainsworth','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', 'https://nebula.wsimg.com/e8024660cb548bddbb224edf8d1562a5?AccessKeyId=9DD764826094D9D7EB58&disposition=0&alloworigin=1')
, (DEFAULT,'Mason', 'Squire','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', 'https://www.horniman.ac.uk/media/w650h650/img-2628.jpg')
, (DEFAULT,'Doug', 'Bennett','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', 'https://www.sciencenews.org/sites/default/files/2018/03/main/articles/041418_reviews_animals_main.jpg')
, (DEFAULT,'Mark', 'Redwood','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', 'https://www.sciencenews.org/sites/default/files/2018/03/main/articles/041418_reviews_animals_main.jpg')
, (DEFAULT,'Leah', 'Wilde','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', 'https://media.mnn.com/assets/images/2016/01/adorabletanuki.jpg.696x0_q80_crop-smart.jpg')
, (DEFAULT,'Harvey', 'Patel','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', 'https://www.peta2.com/wp-content/uploads/2018/08/brown-bear-858720_960_720-400x298.jpg')
, (DEFAULT,'Harry', 'Potter','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', 'https://www.peta2.com/wp-content/uploads/2018/08/brown-bear-858720_960_720-400x298.jpg')
;

INSERT INTO categories VALUES
(DEFAULT, 'Music')
, (DEFAULT, 'Fashion')
, (DEFAULT, 'Car')
, (DEFAULT, 'Real Estate')
, (DEFAULT, 'Beauty')
, (DEFAULT, 'Travel')
, (DEFAULT, 'Design')
, (DEFAULT, 'Food')
, (DEFAULT, 'Movie')
, (DEFAULT, 'Education')
;