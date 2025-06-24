const express = require('express');
const router = express.Router();
const vendaController = require('../controller/vendaController');
const { requireLogin } = require('../middleware/authMiddleware');

router.use(requireLogin);

router.get('/', vendaController.formVenda);
router.post('/', vendaController.registrarVenda);
router.get('/listar', vendaController.listarVendas);

module.exports = router;
