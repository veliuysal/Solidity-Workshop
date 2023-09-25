// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.8.0 <0.9.0;

import "./IERC20.sol";

/**
 * @author 0xVeliUysal
 * @dev ERC20 Example
 */
 contract KampToken is IERC20 {

    string public name = "Kamp Token";
    string public symbol = "KAMP";

    uint256 private _totalSupply = 100;
    mapping(address => uint256) private _balances;
    mapping(address => mapping(address => uint256)) private allowances;

    function totalSupply() external view returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address who) external view returns (uint256) {
        return _balances[who];
    }

    function allowance(address owner, address spender) external view returns (uint256) {
        return allowances[owner][spender];
    }

    function transfer(address to, uint256 value) external returns (bool) {
        require(value <= _balances[msg.sender], "Insufficient Balance");
        require(to != address(0), "Zero Address");

        _balances[msg.sender] = _balances[msg.sender] - value;
        _balances[to] = _balances[to] + value;
        emit Transfer(msg.sender, to, value);
        return true;
    }

    function approve(address spender, uint256 value) external returns (bool) {
        require(spender != address(0));
        allowances[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }

    function transferFrom(address from, address to, uint256 value) external returns (bool) {
        require(value <= _balances[from]);
        require(value <= allowances[from][msg.sender]);
        require(to != address(0));

        _balances[from] = _balances[from]- value;
        _balances[to] = _balances[to] + value;
        allowances[from][msg.sender] = allowances[from][msg.sender] - value;
        emit Transfer(from, to, value);
        return true;
    }

 }