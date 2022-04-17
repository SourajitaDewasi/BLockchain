pragma solidity >=0.6.0 <0.9.0; //Solidity version is defined between 0.6.0 and 0.9.0
//defining a contract
contract SImpleStorage{
    //datatypes in solidity
    //uint: unsigned integer
    //int: negative and positive integers
    //uint256: unsigned integer of 256 bits
    //bool: boolean number
    //string: string of characters
    //bytes: a string that can be converted to bytes object is allowed
    //address: hexadecimal number starting with 0x
    uint256 public favNumber; //This will get initialized as no value. Here, 0.
    //When it was not initialized public we were unable to see favNumber. 
    //But once we write public before the variable the favorite number is now shown in orange below the function store.
    uint256 favoriteNumber=5;
    bool favBool = false;
    string favString = "Sourajita";
    int256 favInt = -5;
    //address favAdress = 00x001d3f1ef827552ae1114027bd3ecf1f086ba0f9;
    bytes32 favBytes = "cat"; //Maximum size of bytes: 32

    //Functions are self-contained modules that execute certain mathematical tasks for users.
    function store(uint256 _favNumber) public {
        favNumber = _favNumber;
    }

}
