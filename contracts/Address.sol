// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

/**
 * @author 0xVeliUysal
 * @dev Address Example
 */
contract Address {

    address private owner;
    address private owner;

    function setNewOwner(address _owner) public {
        owner = _owner;
    }

    function getOwner() public view returns(address) {
        return owner;
    }

    function isOwner(address _owner) public view returns(bool) {
        return owner == _owner;
    }

}