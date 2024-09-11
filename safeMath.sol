//SPDX-License-Identifier:MIT
pragma solidity ^0.6.0;

contract SafeMathTester{
    uint8 public bigNumber=255
}

function Add() public{
    bigNumber=bigNumber+1;   //in older version(safe math library); its unchecked
    //  when we'll add one, since 255 is maximum, it will set value to 0
}


//in newer solidity version, it checks for overflow or underflow. the value will remain 255 evern after calling function
//in newer version we can use {}

//in newer version we can change it to 'uncheck' by using unchecked keyword
function Add() public{
    unchecked{bigNumber=bigNumber+1;} 
    
}
