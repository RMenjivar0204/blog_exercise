var express = require('express');
var router = express.Router();
var db = require('../models/database.js');
var bodyParser = require('body-parser');

router.get('/blogs', (req, res)=>{
    db.any('SELECT * FROM blogs')
    .then((data)=>{
        res.render('blogs', {
            blogs: data
        })
    })
})

router.get('/', (req, res)=>{
    db.multi('SELECT * FROM authors; SELECT * FROM categories')
    .then((data)=>{
        res.render('index', {
            authors: data[0],
            categories:data[1]
        })
    })
    
    
//        res.render('index')
})

router.use(bodyParser.urlencoded({extended: false}));

router.post('/', (req, res)=>{

    var title = req.body.title;
    var name = req.body.name;
    var category = req.body.category;
    var content = req.body.content;
    // var date = req.body.date;
    var imageURL = req.body.myUpload;

    // select user id from author table and put it in variable
    // db.one('SELECT * FROM authors WHERE name = '+name+"'")

    // select category id from category table adn put it in variable

    db.none("INSERT INTO blogs (title, author_id, category_id, content, img_url) VALUES($1, $2, $3, $4, $5)", 
    [title, name, category, content, imageURL])
    .then((data)=>{
        db.any('SELECT * FROM blogs')
        .then((results)=>{
            res.render('blogs', {
                blogs: results
            })
        })
    })
});

module.exports = router;