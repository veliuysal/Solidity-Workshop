// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

/**
 * @author 0xVeliUysal
 * @dev Integer Example
 */
contract Integer {

    uint256 public number;

    function isEqual(uint256 _number) public view returns(bool) {
        return number == _number;
    }

    function isNotEqual(uint256 _number) public view returns(bool) {
        return number != _number;
    }

    function isGreater(uint256 _number) public view returns(bool) {
        return _number > number;
    }

    function isGreaterOrEqual(uint256 _number) public view returns(bool) {
        return _number >= number;
    }

    function isLess(uint256 _number) public view returns(bool) {
        return _number < number;
    }

    function isLessOrEqual(uint256 _number) public view returns(bool) {
        return _number <= number;
    }

    function bitwiseAnd(uint256 number1, uint256 number2) public pure returns(uint256) {
        return number1 & number2;
    }

    function bitwiseXOR(uint256 number1, uint256 number2) public pure returns(uint256) {
        return number1 ^ number2;
    }

    function bitwiseNot(uint256 _number) public pure returns(uint256) {
        return ~_number;
    }

    function shiftLeft(uint256 _number, uint256 bitCount) public pure returns(uint256) {
        return _number << bitCount;
    }

    function shiftRight(uint256 _number, uint256 bitCount) public pure returns(uint256) {
        return _number >> bitCount;
    }

    function sum(uint256 number1, uint256 number2) public pure returns(uint256) {
        return number1 + number2;
    }

    function substraction(uint256 number1, uint256 number2) public pure returns(uint256) {
        return number1 - number2;
    }

    function multiply(uint256 number1, uint256 number2) public pure returns(uint256) {
        return number1 * number2;
    }

    function division(uint256 number1, uint256 number2) public pure returns(uint256) {
        return number1 / number2;
    }

    function mod(uint256 number1, uint256 number2) public pure returns(uint256) {
        return number1 % number2;
    }

    function exp(uint256 number1, uint256 number2) public pure returns(uint256) {
        return number1 ** number2;
    }

}