const express = require('express');
const router = express.Router();
const authController = require('../controller/authController');
const { requireLogin } = require('../middleware/authMiddleware');

router.get('/login', authController.showLogin);
router.post('/login', authController.login);
router.get('/logout', authController.logout);

router.get('/cadastro', authController.showCadastro);
router.post('/cadastro', authController.cadastro);

router.get('/home', requireLogin, authController.showHome);

module.exports = router;
