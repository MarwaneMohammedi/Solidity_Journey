// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import  {SimpleStorage} from "./SimpleStorage.sol";

contract AddFive is SimpleStorage{

    function storeMyData(uint _myFavoriteNumber) public override {
        myFavoriteNumber = _myFavoriteNumber + 5 ;
    }

}