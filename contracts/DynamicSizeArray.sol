// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

/**
 * @author 0xVeliUysal
 * @dev Array Example
 */
contract DynamicSizeArray {

    string[] cityList;

    constructor(string memory _city){
        cityList.push(_city);
    }
    
    function addCity(string memory _city) public {
        cityList.push(_city);
    }

    function getCityCount() public view returns(uint256) {
        return cityList.length;
    }

    function getCityList() public view returns(string[] memory) {
        uint256 length = cityList.length;
        string[] memory _cityList = new string[](length);
        for(uint256 index=0; index < length ; index++){
            _cityList[index] = cityList[index];
        }
        return _cityList;
    }

    function getCityByIndex(uint256 index) public view returns(string memory) {
        return cityList[index];
    }


}