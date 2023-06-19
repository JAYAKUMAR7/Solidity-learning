// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract hello{
    string x = "Hello world!";

    function jk() public view returns(string memory){
        return x;
    }
}