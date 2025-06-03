// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract SimpleStorage{

    string myName;
    uint myFavoriteNumber;

    struct Person { //this create a structure so it can have mutiple var
        string name;
        uint favoriteNumber;
    }   

    Person[] public listOfPersones; //listOfPersones is a array of Persones

    //mapping used to find a thing with someting(it like a dictionary)
    mapping (string => uint) public nameToFavoriteNumber; 


    function storeMyData(uint _myFavoriteNumber) public virtual  {
        myFavoriteNumber = _myFavoriteNumber;
    }

    function getMyData()public view returns(uint){
        return (myFavoriteNumber);
    }

    function storeData(string memory _name,uint _favoriteNumber) public {
        listOfPersones.push(Person(_name,_favoriteNumber)); 
        //push to add Persones to the array 
        //creation of person (name,fn) execute first than push execute after it

        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

}