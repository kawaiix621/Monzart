const NFT = require('../models/NFT');

// Mint NFT
exports.mintNFT = async (req, res) => {
    try {
        const { tokenId, metadataUrl, artistAddress } = req.body;

        const nft = new NFT({ tokenId, metadataUrl, artistAddress });
        await nft.save();

        res.status(201).json({ success: true, nft });
    } catch (error) {
        res.status(500).json({ success: false, error: error.message });
    }
};

// Fetch NFTs
exports.getNFTs = async (req, res) => {
    try {
        const nfts = await NFT.find();
        res.status(200).json({ success: true, nfts });
    } catch (error) {
        res.status(500).json({ success: false, error: error.message });
    }
};
