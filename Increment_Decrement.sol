//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract NFTCount{
    uint public NFTcount =0;

    function NFTtotalcount() public view returns(uint){
        return NFTcount;
    }

    function addNFT() public{
        NFTcount+=1;
    } 

    function deleteNFT() public {
        NFTcount-=1;
    }

    
}