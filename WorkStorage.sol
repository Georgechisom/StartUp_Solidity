// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30; // solidity version

contract WorkStorage {
    uint256 coolNumber = 7;

    struct Person {
        uint256 myFavoriteNumber;
        string name;
        string color;
    }

    // dynamic array
    Person[] public listOfPersons;

    function changer(uint256 _newCoolNumber) public {
        coolNumber = _newCoolNumber;
    }

    // view, pure
    function display() public view returns(uint256) {
        return coolNumber;
    }

    function addMorePersons(uint256 _myFavoriteNumber, string memory _name, string memory _color ) public {
        listOfPersons.push( Person(_myFavoriteNumber, _name, _color) );
    }
}