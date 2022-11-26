const express = require('express');
const database = require('./connection/databaseConnection');

//import express from 'express';
//import database, { execute } from './connection/databaseConnection'

const port = 8000;

const app = express();

app.get('/tipos', async (req, res) => {
    const tipos = await database.execute('SELECT * FROM tb_tipos');

    res.send(tipos);
});

app.get('/bebidas', async (req, res) => {
    const bebidas = await database.execute('SELECT * FROM tb_bebidas');

    res.send(bebidas);
});

app.listen(port, () => {
    console.log('API rodando em http://localhost:8000');
});