var express = require('express');
var promise = require('bluebird')

const initOptions = {
    promiseLib: promise
}

const config = {
    host: 'localhost',
    port: 5432,
    database: 'blog_exercise',
    user: 'postgres',
};

const pgp = require('pg-promise')(initOptions);
const db = pgp(config);

module.exports = db;