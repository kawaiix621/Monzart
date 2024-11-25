// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
//import "@openzeppelin/contracts/access/Ownable.sol";

/* contract Marketplace is Ownable {
    struct Listing {
        uint256 tokenId;
        address seller;
        uint256 price;
    }

    IERC721 public nftContract;
    uint256 public listingCounter = 0;

    mapping(uint256 => Listing) public listings;

    event NFTListed(uint256 indexed listingId, uint256 tokenId, address seller, uint256 price);
    event NFTSold(uint256 indexed listingId, uint256 tokenId, address buyer);

    constructor(address _nftContract) {
        nftContract = IERC721(_nftContract);
    }

    function listNFT(uint256 tokenId, uint256 price) public {
        require(price > 0, "Price must be greater than zero");
        require(nftContract.ownerOf(tokenId) == msg.sender, "You do not own this NFT");

        nftContract.transferFrom(msg.sender, address(this), tokenId);

        listings[listingCounter] = Listing(tokenId, msg.sender, price);
        emit NFTListed(listingCounter, tokenId, msg.sender, price);
        listingCounter++;
    }

    function buyNFT(uint256 listingId) public payable {
        Listing memory listing = listings[listingId];
        require(msg.value >= listing.price, "Insufficient payment");

        nftContract.transferFrom(address(this), msg.sender, listing.tokenId);
        payable(listing.seller).transfer(listing.price);

        emit NFTSold(listingId, listing.tokenId, msg.sender);

        delete listings[listingId];
    }
}


*/
