const mongoose = require('mongoose');

const NFTSchema = new mongoose.Schema({
    tokenId: { type: String, required: true },
    metadataUrl: { type: String, required: true },
    artistAddress: { type: String, required: true },
});

module.exports = mongoose.model('NFT', NFTSchema);
