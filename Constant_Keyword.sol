// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Constant_Keyword{

    address public  my_address = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; //execution cost : 71666 

    //address public constant /* should be capital */ My_ADDRESS = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; //execution cost : 47099

    function getConstant() public view returns(address){
        return my_address;
    }
//execution cost : 90684

//execution cost : 59911


}