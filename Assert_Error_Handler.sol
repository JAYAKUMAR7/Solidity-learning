// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Assert_Error_Handler{
    bool public result;

    function assertError(uint256 _num1, uint256 _num2) public{
        uint256 sum = _num1 + _num2;
        assert(sum <=255);
        result = true;

    }

    function getResult() public view returns(string memory){
        if(result == true){
            return "Not overflow";
        }
        else{
            return "Overflow";
        }
    }
}