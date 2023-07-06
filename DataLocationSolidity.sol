// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Data_Location_Solidity{

    uint[] public arr;

    mapping(uint => address) map;

    struct Mystruct{
        uint foo;
    }

    mapping(uint => Mystruct) myStruct;

    function f() public {
        //call _f state variables
        _f(arr,map,myStruct[1]);

        //get a struct from a mapping
        Mystruct storage myStruct = myStruct[1];

        //create a struct in memory
        Mystruct memory myMemStruct = Mystruct(0);
    }

    function _f(uint[] storage _arr, mapping(uint => address) storage _map, Mystruct storage _myStruct ) internal {
        // do something with storage variables
    }

    //you can return memory variables

    function g(uint[] memory _arr) public returns(uint[] memory){
        // do something with memory array

    }

    function h(uint[] calldata _arr) external{
        // do someting wih calldata array
    }
}