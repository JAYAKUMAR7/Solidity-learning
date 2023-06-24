// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract If_Else{
    uint public mynum ;
    string public myString;

    /*function get(uint _num) public returns(string memory, uint){
        if(_num == 5){
            myString = "Hey the myNum is 5 he gave..";
            mynum += _num;
        }
        else if(_num == 4){
            myString = "Not 5 ";
            mynum += _num;
        }
        else{
            myString = "Worst";
        } */

        function get(uint _num) public returns(string memory){
            
            return _num == 5 ? myString = "gta"  : myString = "waste";
            
        }

        
    }
