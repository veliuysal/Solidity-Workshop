// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

/**
 * @author 0xVeliUysal
 * @dev Array Example
 */
contract StructAndMapping {

    struct Allowance {
        address spender;
        uint256 amount;
    }

    mapping(address => Allowance) private allowances;

    constructor() payable {
        require(msg.value > 0);
    }

    function setAllowanceWithAddress(address _spender, uint256 _amount) public {
        Allowance memory allowance;
        allowance.spender = _spender;
        allowance.amount = _amount;
        allowances[msg.sender] = allowance;
    }

    function getAllowance(address owner) public view returns(Allowance memory allowance) {
        return allowances[owner];
    }


}