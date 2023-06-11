// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract nested_mapping{
    mapping(string => mapping(string => uint)) public BookPrice;

    function BookInfo(string memory _author , string memory _bookname , uint _amount) public{
        BookPrice[_author] [_bookname] = _amount;
    }
// If we need we can use below step or else leave it [note : use the below step you have to remove public in mapping step]...

    /*function GetPrice(string memory _author, string memory _bookname) public view returns(uint){
        return BookPrice[_author] [_bookname] ;
    }*/
}