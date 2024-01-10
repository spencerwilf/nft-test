// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MoodNft is ERC721 {
    uint256 private s_tokenCounter;
    mapping(uint256 => string) private s_tokenIdToUri;
    string private sadSvgImageUri;
    string private happySvgImageUri;

    constructor(string memory _sadSvg, string memory _happySvg) ERC721("Mood NFT", "MN") {
        s_tokenCounter = 0;
        happySvgImageUri = _happySvg;
        sadSvgImageUri = _sadSvg;
    }

    function mintNft() public {
        _safeMint(msg.sender, s_tokenCounter);
        s_tokenCounter++;
    }

    function tokenURI(uint tokenId) public view override returns(string memory) {

    }
}