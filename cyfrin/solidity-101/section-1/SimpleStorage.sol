// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 myFavNum;
    // uint256[] listOfFavNums;

    struct Person {
        uint256 favNum;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavNum;

    function store(uint256 _favNum) public {
        myFavNum = _favNum;
    }

    function getFavNum() public view returns (uint256) {
        return myFavNum;
    }

    function addPerson(string memory _name, uint256 _favNum) public {
        listOfPeople.push(Person(_favNum, _name));
        nameToFavNum[_name] = _favNum;
    }

    function retrieve() public view returns (uint256) {
        return myFavNum;
    }
}
