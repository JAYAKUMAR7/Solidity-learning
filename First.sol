// SPDX-License-Identifier: GPL-3.0

pragma solidity ^ 0.8.0;

contract First{
    uint public gaslimit = block.gaslimit;
    address public InteractContracter = msg.sender;
    uint public EthValue = msg.value;
    uint public BlockNo = block.number;
    uint public ChainID = block.chainid;
    uint public TimeStamp = block.timestamp;
}