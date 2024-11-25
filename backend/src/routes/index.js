const express = require('express');
const { mintNFT, getNFTs } = require('../controllers/nftController');
const router = express.Router();

router.post('/mint', mintNFT);
router.get('/nfts', getNFTs);

module.exports = router;
