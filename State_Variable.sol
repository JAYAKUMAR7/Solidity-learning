// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract State_Variable{
    //     State variables:
    

    /*string public defaultText = "Hey Default Text";
    uint public defaultNum = 5;

    bytes public Bytes_ = "jayakumar";



    uint[] public Arr;*/

    string public myState;
    uint public myNum;

    /*constructor(string memory _n1, uint _n2)  {
        myState = _n1;
        myNum = _n2;
    }*/

    function getFunc(string memory _n1, uint _n2) public{
        myState = _n1;
        myNum = _n2;
    }
}