// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract FirstFunction{
    function A() private pure returns(string memory){
        return "Hello World!";
    }
    function B() public pure returns(string memory){
        return A();
    }
}
