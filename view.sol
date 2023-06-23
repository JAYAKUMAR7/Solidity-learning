// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Local_Variable{
    uint num1 = 2;
    uint num2 = 7;

    //USING VIEW TO CHECK THE STATE VARIABLE 



    function Getting() public view returns(uint , uint){
        return (num1 , num2);
    }

    function getResult() public view returns(uint ,uint){
        //uint num1 = num1 ;
        //uint num2 = num2 ;

        uint product = num1 * num2;
        uint total = num1 + num2;
        return (product , total);
    }


}