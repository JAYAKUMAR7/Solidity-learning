
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Receive_Ether{
    /*
    Which function is called, fallback() or receive()?
                
                send Ether
                    |
            msg.data is empty?
                   /  \
                yes   no
                /      \
receive() exists?     fallback()
       /     \
receive()  fallback()

*/

  // Function to receive Ether. msg.data must be empty
  receive() external payable{}

  // Fallback function is called when mes.data is not empty
  fallback() external payable{}

  function getBalance() public view returns(uint){
      return address(this).balance;
  }
  
}


contract Send_Ether{
    function sendViaTransfer(address payable _to) public payable{

        //This function is no longer recommended for sending Ether.
        _to.transfer(msg.value);
    }

    function sendViaSend(address payable _to) public payable{

        // Send returns a boolean value indicating success or failure.
        // This function  is not recommended for sending Ether.
        bool sent = _to.send(msg.value);
        require(sent,"Failed to send Ether");
    }

    function sendViaCall(address payable _to) public payable{

        // Call returns a boolean value indicating success or failure.
        // This is the current recommended method to use.
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}