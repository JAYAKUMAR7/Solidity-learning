// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./A.sol";

contract B{
    //A a = new A()  {or else};
    A public a = A(0xaE036c65C649172b43ef7156b009c6221B596B8b);
    function UpdateAInfo(uint _number) public{
        a.UpdateNo(_number);
    }

    function ReadAInfo() public view returns(uint){
        return a.ReadNo();
    }
}