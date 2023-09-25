// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

/**
 * @author 0xVeliUysal
 * @dev Nested Mapping Example
 */
contract NestedMapping {
    

    mapping(address => mapping(address => uint256)) _allowances;

    function getMyAllowance(address owner) public view returns(uint256) {
        return _allowances[owner][msg.sender];
    }

    function getAllowance(address owner, address _address) public view returns(uint256) {
        return _allowances[owner][_address];
    }

    function setAllowanceToMe(address owner, uint256 allowanceAmount) public {
        _allowances[owner][msg.sender] = allowanceAmount;
    }

     function setAllowance(address owner, address _address, uint256 allowanceAmount) public {
        _allowances[owner][_address] = allowanceAmount;
    }
}