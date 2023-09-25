// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

/**
 * @author 0xVeliUysal
 * @dev Array Example
 */
contract FixedSizeArray {

    string[3] cityList;
    uint index;

    constructor(string memory _city){
        cityList[index++] = _city;
    }
    
    function addCity(string memory _city) public {
        require(index < 3, "Kapasite Doldu.");
        cityList[index++] = _city;
    }

    function getCityCount() public view returns(uint256) {
        return index;
    }

    function getCityList() public view returns(string[] memory) {
        uint256 length = cityList.length;
        string[] memory _cityList = new string[](length);
        for(uint256 i=0; i < length ; i++){
            _cityList[i] = cityList[i];
        }
        return _cityList;
    }

    function getCityByIndex(uint256 _index) public view returns(string memory) {
        return cityList[_index];
    }


}