// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Fallback{

    event Log(string func, uint gas);

    // Fallback function must be declared as external.

    fallback() external payable{
        //send / transfer (forwards 2300 gas to this fallback function)
        // call (forwards all of the gas)

        emit Log("fallback", gasleft());
    }

    // Receive is a varaint of fallback that is triggered when msg.data is empty
    receive() external payable{
        emit Log("Receive", gasleft());
    }

    // Helper function to  check the balance of this contract{
        function getBalance() public view returns(uint){
            return address(this).balance;
        }
}

contract sendToFallback{

    function transferToFallback(address payable _to) public payable{
        _to.transfer(msg.value);
    }

    function callFallback(address payable _to) public payable{
        (bool sent, ) = _to.call{value: msg.value} ("");
        require(sent, "failed to send Ether");
    }
}