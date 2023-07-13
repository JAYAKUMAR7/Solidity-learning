// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Enum{
    //enum - enumerable.

    //Enum representing shipping status.
    enum Status{
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    //Default value is the first element listed in
    //Definition of the type, In this case "Pending".

    Status public status;

    // Returns uint
    // Pending  - 0
    // Shipped  - 1
    // Accepted - 2
    // rejected - 3
    // Canceled - 4

    function get() public view returns(Status){
        return status;
    }

    // Update the status by passing uint into input

    function set(Status _status) public{
        status = _status;
    }

    function cancel() public{
        status = Status.Canceled;
    }

    function reset() public{
        delete status;
    }

}