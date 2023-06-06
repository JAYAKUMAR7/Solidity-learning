// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Array{
    uint[] num;

    function Push(uint _num) public {
        num.push(_num);
    }

    function pop() public {
        num.pop();
    }

    function arrayLen() public view returns(uint){
        return(num.length);
    }

    function Delete(uint _index) public {
        delete num[_index];
    } 

    function ReturnArray() public view returns(uint[] memory){
        return num;
    }

    function Remove(uint _index) public {
    num[_index] = num[num.length - 1];
    num.pop();
    }

}