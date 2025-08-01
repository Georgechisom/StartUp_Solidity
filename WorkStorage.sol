// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30; // solidity version

contract WorkStorage {
    uint256 coolNumber = 7;

    struct Person {
        uint256 myFavoriteNumber;
        string name;
        string color;
    }

    mapping(string => uint256) public nameToMyFavoriteNumber; // link names to their myFavoritenumber

    // dynamic array
    Person[] public listOfPersons;

    function changer(uint256 _newCoolNumber) public {
        coolNumber = _newCoolNumber;
    }

    // view, pure
    
}