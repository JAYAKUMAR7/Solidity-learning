// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Require_Error_Handling{

    function requre_error_hand(uint8 _num) public pure returns(string memory){
        require(_num >=0, "Invalid uint8");
        require(_num <= 255, "Invalid uint8");
    
    return "Enter the unit8";
    }

    function Odd(uint256 _input) public pure returns(bool){
        require(_input %2!=0);
        return true;
    }
}