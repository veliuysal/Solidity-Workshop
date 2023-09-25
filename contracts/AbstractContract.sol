// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;


/**
 * @author 0xVeliUysal
 * @dev Abstract Contract Example
 */

abstract contract AbstractContract {
    function whoAmI() public virtual returns(string memory);
}

contract InstructorContract is AbstractContract {

    function whoAmI() public pure override returns(string memory){
        return "0xVeliUysal";
    }
}