const NFT = require('../models/NFT');

exports.createNFT = async (data) => {
    const nft = new NFT(data);
    return await nft.save();
};

exports.getAllNFTs = async () => {
    return await NFT.find();
};
