// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30; // solidity version

contract WorkStorage {
    uint256 coolNumber = 7;

    struct Person {
        uint256 myFavoriteNumber;
        string name;
    }
    Person public realPerson = Person(50, "john");

    // dynamic array
    Person[] public listOfPerson;

    function changer(uint256 _newCoolNumber) public {
        coolNumber = _newCoolNumber;
    }

    // view, pure
    function display() public view returns(uint256) {
        return coolNumber;
    }
}