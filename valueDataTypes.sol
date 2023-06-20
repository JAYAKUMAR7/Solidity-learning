/*value data type:
    1.Boolean
    2.Bytes and string
    3.integer
    4.fixed point numbers
    5.enums
    6.address
    */



// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract DataTypes{
    bool public x; //default false
    bool public y = true;

    /*uint8 // range 0-2**8-1//255
    //uint16 // range 0-2**16-1//65535
    //uint256 // range 0-2**256-1//1.1579209e+77

    //uint // default uint256 */


    /* int256 ranges from -2**255 -1 to 2** 256 -1 = 5.7896045e+76, -5.7896045e+76
       int128 ranges from -2**127 to 2** 128 -1 = 5.7896045e+76, -5.7896045e+76
        */

        int8 public a = -1;
        int public i256 = 456;

        //now you can add min and max int

        int public minInt = type(int).min;
        int public maxInt =type(int).max;

        //address data type
        address public defaultaddress ;    //0x00000000000....



}