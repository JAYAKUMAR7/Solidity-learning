// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract A {
    uint number;

    function UpdateInfo(uint _number) public {
        number = _number;
    }

    function ReadInfo() public view returns(uint){
        return number;
    }
}

contract B{
    A a = new A();

    function UpdateAInfo(uint _number) public {
        a.UpdateInfo(_number);
    }

    function ReadAInfo() public view returns(uint){
        return a.ReadInfo();
    }
}
