// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract While_Loop{
    uint256[] data;
    uint8 k ;

    function get(uint8 _num) public  {
        k = _num;
    }

    function loop() public returns(uint256[] memory){
        while(k<15){
            k++;
            data.push(k);
        }
        return data;
    }
}