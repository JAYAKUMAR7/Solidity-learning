// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract For_Loop{

    /*SYNTAX

    for(initialization ; test condition ; iteration statement){
        block of code statements
    }
    */


    uint256[] data;
    function loop() public returns(uint256[] memory){
        for(uint256 i=1; i<=10 ;i++){
            data.push(i);
        }
        return data;
    }
}