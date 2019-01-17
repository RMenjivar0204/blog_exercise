var express = require('express');

const initOptions = {
    promiseLib: promise
}

const config = {
    host: 'localhost',
    port: 5432,
    database: 'blog_exercise',
    user: 'postgres',
}

module.exports = db;