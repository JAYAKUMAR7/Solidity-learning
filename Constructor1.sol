//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// Constructor

contract x{
    string public name;

    constructor(string memory _name){
        name = _name;
    }
}

contract y{
    string public text;
    constructor(string memory _text){
        text = _text;
    }
}

contract z is x,y{
    constructor(string memory _name, string memory _text) x(_name) y(_text){}
}


