var express = require('express');
var router = express.Router();
var db = require('');
var bodyParser = require('body-parser');

router.get('/blogs', (req, res)=>{

    db.any('SELECT * FROM blogs')
    .then((data)=>{

        res.render('blogs', {
            blogs: data
        })
    })
})

router.use(bodyParser.urlencoded({extended: false}));

router.post('/blogs', (req, res)=>{

})