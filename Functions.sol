/*Functions has two types:
    1.Declearing function.
    2.Non - Declearing function.
    */



// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Functions{
    //uint public hey;
    uint256  hey;

    function getInfo() public view returns(uint){
        return hey;
    }

    function UpdateData(uint _hey) public{
        hey = _hey;
    }

    function get(uint _n1, uint _n2) public returns(uint){
        uint Nw = _n1 + _n2 ;
        hey = Nw;
        return hey;
    }

    

}
