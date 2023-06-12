// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract A{
    uint number;

    function UpdateNo(uint _number) public{
        number = _number;
    }

    function ReadNo() public view returns(uint){
        return number;
    }
}