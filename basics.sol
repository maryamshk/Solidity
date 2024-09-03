//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;   //solidity version


// contract is keyword, SimpleStorage is name of contract, {contract content}
contract SimpleStorage{
// bool hasFavNumber=true;
// uint256 favNumber=2;     //max size 256
// string favNumberInText='five';
// int256 favInt=-5;        //max size 256
// address myAddress=0x73A53af19202549Dae551BC0Fe5935663A76d0b2;
// bytes32 favBytes="cat"; //bytes can have max size of 32


 uint256 public favouriteNumber;   //will be equal to 0 cus it's solidity's default value 
 //we use public so we could see the variable value


//  struct is like a custom data structure that can hold multiple pieces of related data together.
// --------------------------------- object
// This defines a new data type called People.
 struct People{
    uint256 favouriteNumber;
    string name;
}
 

// create new people and assign it to variable person
People public person=People({favouriteNumber:2, name:"sarah"});
People public person2=People({favouriteNumber:4, name:"ali"});

// we'll have to keep doing this to make list of people, not good approach so we create array

// ----------------------------------ARRAY
// datatype[] visibility nameOfArray
// uint256[] public list;

People[] public people;


// the _ in favouriteNumber states it's different from global favouriteNumber
 function store(uint256 _favouriteNumber) public {
    favouriteNumber=_favouriteNumber;
}

function retrieve() public view returns(uint256){
    return favouriteNumber;
}

}  


// types: boolean, uint, int, address, bytes, string
// string are secretly just byte objects but only for text


