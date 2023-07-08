// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/* Graph of inheritance

       A
     /   \
    B     C
   / \   / 
  F   D,E    

  */   

contract A{
    function foo() public pure virtual returns(string memory){
        return "A";
    }

}

// Contracts inherit other contracts by using keyword 'is' .

contract B is A{
    // Override A.foo()

    function foo() public pure virtual override returns(string memory){
        return "B";
    }

}

contract C is A{
    // Override A.fool()

    function foo() public pure virtual override returns(string memory){
        return "C"; 
    }
}

// Contracts can inherit from multiple parent contracts.
// When a function is called that is defined multiple times in
// Different contracts, parent contracts are searched from
// right to left, and in depth-first manner.

contract D is B, C{
    // Override B.foo().
    // Since C is the right most parent contract with function foo().

    function foo() public pure override(B,C) returns(string memory){
        return super.foo();
    }

}

contract E is C, B{
    // Override B.foo().
    // Since B is the right most parent contract with function foo().

    function foo() public pure override(C, B) returns(string memory){
        return super.foo();
    }

}

// Inheritance must be ordered from "most base-Like" to "most derived".
// Swapping the order of A and B will thorw a compliation error.

contract F is A, B{
    // Override B.foo().
    // Since B is the right most parent contract with function foo().

    function foo() public pure override(A, B) returns(string memory){
        return super.foo();
    }

}