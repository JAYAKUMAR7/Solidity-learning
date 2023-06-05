// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Addition{
    uint a = 2;
    uint b = 2;
    uint c = a + b;

    function jk() public view returns(uint){
        return c;
    }
}