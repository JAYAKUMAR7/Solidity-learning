// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Comparision_operator{
    //comparition operators ( ==,!=, < , > , <= , >= )

    uint a = 5;
    uint b = 6;
    function isequalto() public view returns(bool){
    bool result = a==b;
    return result;
    }

    function notequalto() public view returns(bool){
    bool result = a!=b;
    return result;
    }

    function lessthan() public view returns(bool){
    bool result = a<b;
    return result;
    }

    function greaterthan() public view returns(bool){
    bool result = a>b;
    return result;
    }

    function lessthanorequalto() public view returns(bool){
    bool result = a<=b;
    return result;
    }

    function greaterthanorequalto() public view returns(bool){
    bool result = a>=b;
    return result;
    }
}