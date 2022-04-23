// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

/**
 * @author 0xVeliUysal
 * @dev String Example
 */
contract String {

    string private instructor = "0xVeliUysal";

    function getInstructor() public view returns(string memory) {
        return instructor;
    }

    function sizeOfInstructorLiteral() public view returns(uint256) {
        return bytes(instructor).length;
    }

    function reverseInstructorLiteral() public view returns(string memory) {
        bytes memory value = bytes(instructor);
        string memory temp = new string(value.length);
        bytes memory reversed = bytes(temp);
        for(uint256 index = 0 ; index < value.length ; index++) {
            reversed[value.length - index -1] = value[index];
        }
        string memory _reversed = string(reversed);
        return _reversed;
    }

    function concatenation(string memory expression1, string memory expression2) public pure returns(string memory){
        return string(abi.encodePacked(expression1, expression2));
    }

    function valueIsInstructor(string memory value) public view returns(bool) {
        return keccak256(abi.encodePacked(value)) == keccak256(abi.encodePacked(instructor));
    }

}