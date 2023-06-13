// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./A.sol";

contract B{
    //A a = new A()  {or else};
    A[] public aArr;
    A public a = A(0x93f8dddd876c7dBE3323723500e83E202A7C96CC);

    function pushArr() public{
        aArr.push(a);
    }

    function UpdateAInfo(uint _number) public{
        aArr[0].UpdateNo(_number);
    }

    function ReadAInfo() public view returns(uint){
        return aArr[0].ReadNo();
    }
}