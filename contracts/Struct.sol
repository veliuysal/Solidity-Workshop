// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

/**
 * @author 0xVeliUysal
 * @dev Struct Example
 */
contract Struct {

    struct Account{
        address contractAddress;
        uint256 balance;
    }

    Account account;

    function setBalance(uint256 _balance) public {
        account.balance = _balance;
    }

    function getBalance() public view returns(uint256) {
        return account.balance;
    }

    function setContractAddress(address _address) public {
        account.contractAddress = _address;
    }

    function getContractAddress() public view returns(address) {
        return account.contractAddress;
    }

    function setAccount(address _address, uint256 _balance) public {
        account.balance = _balance;
        account.contractAddress = _address;
    }

    function getAccount() public view returns(Account memory) {
        return account;
    }

}