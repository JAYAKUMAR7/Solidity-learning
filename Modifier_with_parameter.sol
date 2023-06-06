// SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract Modifier_with_parameter{
    uint Price = 1;

    modifier FundMe(uint price){
        require(msg.value >= price , "Insufficient Balance");
        _;
    }
    function fund() public payable FundMe(Price){

    }
}