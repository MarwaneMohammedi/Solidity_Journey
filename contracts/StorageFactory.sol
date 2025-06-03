// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {SimpleStorage} from "./SimpleStorage.sol";

    contract StorageFactory{
        
        SimpleStorage[] public listOfSimpleStorageContracts;

        function createSimpleStorageContract() public {
            SimpleStorage newSimpleStorageContracts = new SimpleStorage();
            listOfSimpleStorageContracts.push(newSimpleStorageContracts);
        }

        function sfStore(uint _simpleStorageIndex,uint _newSimpleStorageNumber) public{
            listOfSimpleStorageContracts[_simpleStorageIndex].storeMyData(_newSimpleStorageNumber);
        }
        
        function sfget(uint _simpleStorageIndex) public view returns(uint){
            return listOfSimpleStorageContracts[_simpleStorageIndex].getMyData();

        }
        
        }