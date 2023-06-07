// SPDX-License-Identifier: GPL - 3.0

pragma solidity ^0.8.0;

contract Struct_mapping{
    struct book{
        string name;
        uint amount;
    }
    //mapping(KeyType => valueType) public mapName;

    mapping(string => book) public books;

    function fundMe(string memory _author , string memory _bookname, uint _amount) public{
        books[_author] = book({name : _bookname , amount : _amount});
    }
}