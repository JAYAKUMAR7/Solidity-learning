// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Local_Variable{

    address public owner;
    address public Myblockhash;
    uint public difficulty;
    uint public gasLimit;
    uint public number;
    uint public timestamp;
    uint public value;
    uint public nowOn;
    address public origin;
    uint public gasprice;
    bytes public callData;
    bytes4 public Firstfour;

    constructor() {
        owner = msg.sender;  // 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
                             // 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
        
        Myblockhash = block.coinbase;
        difficulty = block.difficulty;
        gasLimit = block.gaslimit;
        number = block.number;
        timestamp = block.timestamp;
        gasprice = tx.gasprice;
        origin = tx.origin;
        callData = msg.data;


    }



}