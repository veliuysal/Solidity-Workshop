// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

/**
 * @author 0xVeliUysal
 * @dev Mapping Example
 */
contract Mapping {

    mapping(address => uint256) balances;

    function getBalance() public view returns(uint256){
        return balances[msg.sender];
    }

    function getBalanceWithAddress(address _address) public view returns(uint256){
        return balances[_address];
    }

    function setBalance(uint256 _balance) public {
        balances[msg.sender] = _balance;
    }

    function setBalanceWithAddress(address _address, uint256 _balance) public {
        balances[_address] = _balance;
    }
}