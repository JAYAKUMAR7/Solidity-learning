// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Mapping{

        //mapping(keyType => valueType) public mapping_name ;

    mapping(address => uint) public myMap;

    function get(address _address) public view returns(uint){
        // mapping always return a value.
        // If the value is never set, it will return the default value.

        return myMap[_address];
    }

    function set(address _address, uint _num) public{
        // Update the value at this address.

        myMap[_address] = _num;
    }

    function remove(address _address) public{
        //Reset the value to the default value.

        delete myMap[_address];
    }
}


contract NestedMapping{
    // nested mapping (mapping from adress to another mapping)

    mapping(address => mapping(uint => bool)) public nestedMap;

    function get(address _address, uint _num) public view returns(bool){
        // You can get value from nested mapping.
        //Even when it is not initialized.

        return nestedMap[_address][_num];
    }

    function set(address _address, uint _num, bool _bool) public {
        nestedMap[_address][_num] = _bool;
    }

    function remove(address _address, uint _num) public{
        delete nestedMap[_address][_num];
    }
}