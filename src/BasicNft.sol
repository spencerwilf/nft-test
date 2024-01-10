// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNft is ERC721 {

    uint private s_tokenCounter;

    constructor() ERC721("The Dawgs", "DOG") {
        s_tokenCounter = 0;
    }

    function mintNft() public {

    }

    function tokenURI(uint tokenId) public view override returns(string memory) {

    }
}