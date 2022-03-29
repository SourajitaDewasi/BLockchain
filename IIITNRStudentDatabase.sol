// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0<0.8.0;
contract IIITNR{
    struct Student{
        int id;
        string firstName;
        string lastName;
        string branch;
        int semester;
        int year;
        uint256 phoneNumber;
    }

    address owner;
    int public Count = 0;
    mapping (int => Student) public Records;

    modifier ownerChange{
        require(owner == msg.sender);
        _;
    }

    constructor(){
        owner=msg.sender;
    }

    function RecordsAdd(int _id, string memory _firstName, string memory _lastName, string memory _branch, int _semester, int _year, uint256 _phoneNumber) public ownerChange{
        Count= Count+1;
        Records[Count]=Student(_id, _firstName, _lastName, _branch, _semester, _year, _phoneNumber);
    }
}
