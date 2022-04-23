// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

/**
 * @author 0xVeliUysal
 * @dev Inheritance With Interface Example
 */

interface MasterInterface {
    function whoAmI() external pure returns(string memory);
}

interface ChildInterface is MasterInterface {
    function getIndex() external pure returns(uint256);
}

contract InterfaceInheritance is MasterInterface{

    function whoAmI() public pure override returns(string memory) {
        return "0xVeliUysal";
    }
}

contract ChildInterfaceInheritance is ChildInterface {

    function whoAmI() public pure override returns(string memory) {
        return "0xVeliUysal";
    }

    function getIndex()public pure override returns(uint256){
        return 0;

    }
}