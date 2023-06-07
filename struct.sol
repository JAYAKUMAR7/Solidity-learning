// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Struct{
    struct Person{
        string Name;
        uint Age;
    }

    Person /* Variable */ public person;

    function UpdateDetails(string memory _name , uint _age) public {
        person = Person(_name , _age);
        // (or else) person = Person({Name :_name , Age : _age});
    }

}