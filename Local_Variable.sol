// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Local_Variable{

    uint public myNumber ;
    //local variable is decleared inside a function

    function local() public returns(address,uint,uint){
        uint myNum = 23;
        myNumber = myNum;

        myNum += 45;
        address  myAddress = address(1);
        return (myAddress ,myNumber,myNum);
    }
}