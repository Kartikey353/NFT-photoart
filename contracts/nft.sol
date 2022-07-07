// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";  
import "@openzeppelin/contracts/utils/Counters.sol"; 
import "@openzeppelin/contracts/access/Ownable.sol"; 
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";  

contract  Nft is ERC721URIStorage , Ownable {

    using Counters for Counters.Counter; 

    Counters.Counter private _tokenIds;

    constructor() ERC721("KWIIK","KWI"){}
    function mintNFT(address recipent,string memory tokenURI) public onlyOwner returns(uint){
           _tokenIds.increment(); 
           
           uint newitemid=_tokenIds.current();
           _mint(recipent,newitemid);
           _setTokenURI(newitemid, tokenURI); 

           return newitemid;
    }
}