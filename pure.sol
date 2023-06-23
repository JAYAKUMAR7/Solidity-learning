// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Pure{
    uint public num1 = 4;
    uint public num2 = 10;

    function GetResult() public pure returns(uint, uint){
        uint numi1 = 30;
        uint numi2 = 50;

        uint product = numi1 * numi2;
        uint total = numi1 + numi2;
        return (product,total);
    }
}