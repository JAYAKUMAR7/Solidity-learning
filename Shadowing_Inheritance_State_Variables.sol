// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract A{
    string public name = "Contract A";

    function getName() public view returns(string memory){
        return name;
    }
}

// Shadowing is disallowed  in solidity 0.6.
// This will not compile
// Contract B is A {
//          string public name = "Contract B"'
//  }

contract C is A{
    // This is the correct way to override inherited state variables.

    constructor(){
        name = "Contract C";
    }
    
    // C.getname returns "Contract C".
}

