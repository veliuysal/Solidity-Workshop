// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

/**
 * @author 0xVeliUysal
 * @dev Modifier Example
 */
contract Modifier {

    address private owner;

    constructor(address _owner){
        owner = _owner;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "Wrong account");
        _;
    }

    function instructorName() onlyOwner public view returns(string memory){
        return "0xVeliUysal";
    }

}