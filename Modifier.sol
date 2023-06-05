//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract Modifier{
    address owner;

    constructor(){
        owner = msg.sender;
    }

    modifier Onlyowner{
        require(msg.sender == owner , "You are not a owner of this account");
        _;
    }
    function func() public view Onlyowner returns(string memory){
        return "Welcome to the JK World";
    }
}