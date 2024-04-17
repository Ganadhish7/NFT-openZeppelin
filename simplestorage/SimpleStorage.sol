// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;  // this is the solidity version

contract SimpleStorage{  // similar to classes in JavaScript
   // Variables
    // basic types: boolean, unit, int, address, bytes
    // bool hasFavoriteNumber = true;
    uint256 public favoriteNumber;  // can define with different types uint8, uint16, default =  unit256
            // int256 favoriteNumber1 = 88;
            // string favoriteString = "88";
            // address myAddress = 0xaalskdfBaslkdflkasdfkjIlaskdfja;
            // bytes32 favoriteBytes32 = "cat"; // bytes2, bytes16 // largest bytes32
   // Functions 
    function store(uint256 _favoriteNumber) public{
          favoriteNumber = _favoriteNumber;
    } 
    // functions can be view or pure
      //     function retrieve() public view returns(uint256){
      //        return favoriteNumber;
      //     }

    // Arrays and structs
      // uint256[] listOfMyFavoriteNumbers;
    struct Person{
       uint256 myFavoriteNumber;
       string name;
    }
      // dynamic array
    Person[] public listOfPeople;  // empty initially 

    function addPerson(string memory _name, uint256 _myFavoriteNumber) public {
       listOfPeople.push( Person(_myFavoriteNumber, _name));
    }
     
}