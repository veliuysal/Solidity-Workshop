// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

/**
 * @author 0xVeliUysal
 * @dev Fallback Example
 */
contract Fallback {

    function whoAmI() public pure returns(string memory) {
        return "0xVeliUysal";
    }

    fallback() external {
        revert("Fallback Function");
    }

}