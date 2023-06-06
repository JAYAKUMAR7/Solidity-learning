// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract _mapping{
    //mapping(KeyType => valueType) public mapName;

    mapping(address => uint) public balance;

    function FundMe() public payable{
        balance[msg.sender] = msg.value;
    }
}