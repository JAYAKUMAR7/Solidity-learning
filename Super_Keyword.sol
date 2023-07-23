// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/* Inheritance
        A
      /   \
     B     C
      \   /
        D

*/

contract A{
    // This is called an event. You can emit events from your function.
    // and they are Logged into the transaction Log.
    // In our case, this will be useful for tracing function calls.

    event Log(string message);

    function foo() public virtual{
        emit Log("A.foo Called");
    }

    function bar() public virtual{
        emit Log("A.bar Called");
    }
}


contract B is A{
    function foo() public virtual override {
        emit Log("B.foo Called");
        A.foo();
    }
    function bar() public virtual override{
        emit Log("B.bar Called");
        super.bar();
    }
}

contract C is A{
    function foo() public virtual override {
        emit Log("C.foo Called");
        A.foo();
    }
    function bar() public virtual override{
        emit Log("C.bar Called");
        super.bar();
    }
}

contract D is B, C{

    // Try:
    // - Call D.foo and check the transaction Logs.
    //   Although D inherits A, B and C, it only called C and then A.
    // - Call D.bar and checks the transaction Logs.
    //   D called C, then B, and finally A.
    //   Although super was called twice (by B and C) it only called A once.

    function foo() public virtual override(B, C){
        super.foo();
    }
    function bar() public virtual override(B, C){
        super.bar();
    }
}
