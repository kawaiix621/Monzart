/*

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MonzartNFT is ERC721URIStorage, Ownable {
    uint256 private _tokenIdCounter;
    mapping(uint256 => uint256) public royalties;

    constructor() ERC721("MonzartNFT", "MART") {}

    function mintNFT(address recipient, string memory tokenURI, uint256 royalty) public onlyOwner {
        uint256 tokenId = _tokenIdCounter;
        _tokenIdCounter++;

        _safeMint(recipient, tokenId);
        _setTokenURI(tokenId, tokenURI);
        royalties[tokenId] = royalty;
    }

    function getRoyaltyInfo(uint256 tokenId) public view returns (uint256) {
        return royalties[tokenId];
    }
}

*/
