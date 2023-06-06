//  SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Arithmetic_operator{
    //Arithmetic operators
    //Comparision operators
    //Logical operators
    //Assignment operators
    //Conditional operators

    uint a = 10;
    uint b = 10;

    function add() public view returns(uint){
        return a+b;
    }

    function sub() public view returns(uint){
        return a-b;
    }

    function mul() public view returns(uint){
        return a*b;
    }

    function div() public view returns(uint){
        return a/b;
    }

    function increment() public returns(uint){
        return a++;
    }

    function decrement() public returns(uint){
        return a--;
    }

}