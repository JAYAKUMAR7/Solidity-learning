// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Base{

    // Private function can only be called
    // - inside this contract.
    // Contracts that inherit this contract cannot call this function.

    function privateFunc() private pure returns(string memory){
        return "Private function called";
    }

    function testPrivateFunc() public pure returns(string memory){
        return privateFunc();
    }

    // Internal function can be called.
    // - inside this contract.
    // - inside contracts that inherit this contract

    function internalFunc() internal pure returns(string memory){
        return "internal function called";
    }

    function testInternalFunc() public virtual pure returns(string memory){
        return internalFunc();
    }

    // Public functions can be called.
    // - inside this contract.
    // - inside contracts that inherit this contract.
    // - by other contracts and accounts.

    function publicFunc() public pure returns(string memory){
        return "Public function called";
    }

    // External functions can only be called.
    // - by other contracts and accounts.

    function externalFunc() external pure returns(string memory){
        return "External function called";
    }

    // This function will not compile since we're trying to call.
    // an external function here.
    // function tesExternalFunc() public pure function(string memory){
    //    return externalFunc();
    // }

    // State variables

    string private privateVar = "my private variable";
    string internal internalVar = "my internal variable";
    string public publicVar = "my public variable";

    // State variables cannot be external so this code won't compile.
    // string external externlaVar = "my external variable";


}

contract child is Base{
    // Internal function call be called inside child contracts.

    function testInternalFunc() public pure override returns(string memory){
        return internalFunc();
    }
}