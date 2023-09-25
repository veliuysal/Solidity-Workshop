// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

/**
 * @author 0xVeliUysal
 * @dev ModifierExample Example
 */
contract ModifierExample {
    event ModifierExampleEvent();

    mapping(address => bool) public admins;
    address public owner;

    constructor() {
        owner = msg.sender;
        admins[owner] = true;
    }

    //authorisedAccounts mapping +
    //isAdmin Modifier içeriisinde bu istek atan hesap 
    //authorisedAccounts içerisinde tanımlı mı kontrolü


    //authorised account lara ekleme ve çıkarma işlemi yapılabilecektir. 
    //Bu ekelme çıkarmayı ise  sadece Kontrat sahibi yapabilecektir.

    modifier onlyOwner() {
        require(msg.sender == owner, "Only Owner");
        _;
    }

    function addAdmin(address admin) onlyOwner public {
        admins[admin] = true;
    }

    function removeAdmin(address admin) onlyOwner public {
        admins[admin] = false;
    }
    
    modifier isAdmin() {
        require(admins[msg.sender], "Only Admins");
        _;
    }

    function example() isAdmin public {
        emit ModifierExampleEvent();
    }

}