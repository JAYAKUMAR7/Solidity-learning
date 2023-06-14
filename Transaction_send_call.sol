// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Transaction{
    receive() external payable{}
    function Fund(address payable _to) public {
        //_to.transfer(address(this).balance);
        _to.transfer(1 ether);
    }                                             //Address of A : 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
                                                  //Address of B : 0x617F2E2fD72FD9D5503197092aC168c91465E7f2
    function Send(address payable _to) public{
        //bool result =  (_to).send(address(this).balance);
        bool result =  (_to).send(1 ether);
        require(result,"Error in sending ether");
    }

    function call(address _to)public{
        //(bool success,) = payable (_to).call{value : address(this).balance }("");
        (bool success,) = payable (_to).call{value : 1 ether}("");
        require(success, "Error in sending ether");
    }

    function Readin() public view returns(uint){
        return address(this).balance;
    }
}