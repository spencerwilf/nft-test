// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNft is ERC721 {

    uint private s_tokenCounter;
    mapping(uint => string) private s_tokenIdToUri;

    constructor() ERC721("The Dawgs", "DOG") {
        s_tokenCounter = 0;
    }

    function mintNft(string memory tokenUri) public {
        s_tokenIdToUri[s_tokenCounter] = tokenUri;
        s_tokenCounter++;
    }

    function tokenURI(uint tokenId) public view override returns(string memory) {

    }
}