// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

/**
 * @author 0xVeliUysal
 * @dev Event Example
 */
contract Event {

    event SolidityWorkshopEvent(address _address, string message);

    function triggerEvent() public {
        emit SolidityWorkshopEvent(msg.sender, "0xVeliUysal");
    }

    function triggerEventWithMessage(string memory _message) public {
         emit SolidityWorkshopEvent(msg.sender, _message);
    } 

    function triggerEventWithAddressAndMessage(address _address, string memory _message) public {
        emit SolidityWorkshopEvent(_address, _message);
    }

}