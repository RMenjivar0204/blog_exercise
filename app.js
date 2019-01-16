var express = require('express');
var app = express();
var bluebird = require('bluebird');
const fileUpload = require('express-fileupload');



app.set('views engine', 'ejs');
app.set('views', 'views' )

app.use(express.static('public'));

app.get('/', (req, res)=>{

    res.send('Home')
})

app.get('/upload',  (req, res)=>{

    res.render('upload');
})

app.use(fileUpload());
app.post('/upload/', ()=>{
    var ourFile = req.files.myUpload;

    console.log(req.files.myUpload);

    ourFile.mv("public/images/" + req.files.myUpload.name, (err)=>{

        if(err)
        return res.status(500).send(err);

        res.send('successful')
    })
})



app.listen(3000, ()=>{
    console.log("Listening on port 3000")
})
