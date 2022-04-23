// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

/**
 * @author 0xVeliUysal
 * @dev Exception Example
 */

contract Exception {

    uint256 private value = 23;
    string private message = "You Find Value";
    string private exceptionMessage = "Your Value Is Wrong";

    error SolidityWorkshopError(string errorMessage);

    function findValueCheckWithAssert(uint256 _value) public view returns(string memory){
        assert(value == _value);
        return message;
    }

    function findValueCheckWithRequire(uint256 _value) public view returns(string memory){
        require(value == _value);
        return message;
    }

    function findValueCheckWithRequireAndMessage(uint256 _value) public view returns(string memory){
        require(value == _value, exceptionMessage);
        return message;
    }

    function findValueCheckRevert(uint256 _value) public view returns(string memory){
        if(value != _value) {
            revert(exceptionMessage);
        }
        return message;
    }

    function findValueCheckThrowCustomError(uint256 _value) public view returns(string memory){
       if(value != _value) {
            revert SolidityWorkshopError(exceptionMessage);
        }
        return message;
    }


}