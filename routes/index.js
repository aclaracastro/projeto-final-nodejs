var express = require('express');
var router = express.Router();
const db = require('../config/db');

router.get('/', async function (req, res, next) {
  let verificacao = false;

  try {
    await db.query('SELECT 1'); 
    verificacao = true;
  } catch (error) {
    console.error('Erro ao conectar ao banco de dados:', error);
  }

  res.render('index', { title: 'Home', verificacao });
});

module.exports = router;