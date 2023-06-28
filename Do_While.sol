// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Do_While{

    //SYNTAX

    //do{
        // block of code
    //}

    uint256[] data;
    uint8 x;

    function get(uint8 _x) public {
        x = _x;
    }

    function loop() public returns(uint256[] memory){
        do{
            x++;
            data.push(x);
        }while(x<20);
        return data;
    }



}