// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import"@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

import"@openzeppelin/contracts/access/Ownable.sol";

contract IdentityNFT is ERC721Enumerable, Ownable{
    mapping (uint256=> string) private 
    _identityinformation;

    constructor (string memory name, string memory symbol, string memory baseTokenURI) ERC721 (name,symbol){
        _baseTokenURI= baseTokenURI;
    
    functionsetBaseURI(string memory baseTokenURI) 
    onlyOwner;
        _baseTokenURI=baseTokenURI;
    };
    
    function _baseURI()internal view override returns (string memory){
        return _baseTokenURI;
    }

    function  mindtidentity(address to,uint256 tokenid, string memory identityinformation external onlyOwner {
        require(bytes(identityinformation).length>0,"Invalid identity information");
        _mint(to,tokenid);
        _identityinformation[tokenid]=identityinformation;
    }

    function verifyidentity(uint256 tokenid,string memory identityinformationToVerify) external  view returns (bool){
        return keccak256(bytes(_identityinformation[tokenid]))==keccak256((bytes(identityinformationToVerify));
    }
        
    }

}