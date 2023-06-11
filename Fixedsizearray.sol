// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Fixedsizearray{
    uint[] num = [0,1,2,3,4];

    function arraylen() public view returns(uint[] memory){
        return num;
    }

    function Delete(uint _index) public {
        delete num[_index];
    }

    function ReturnArray() public view returns(uint[] memory){
        return num;
    }

    function MemoryArray() public pure returns(uint[] memory){
        uint[] memory a = new uint[](7);
        a[0] = 0;
        a[1] = 1;
        a[2] = 2;
        a[3] = 3;
        a[4] = 4;
        return a;
    }
}