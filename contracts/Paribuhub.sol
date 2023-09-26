// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Paribuhub {

    bool public allowed; 
    uint public count;
    int public signedCount;
    address public owner;
    mapping(address => mapping(address => bool)) public allowance;
    string[] public errorMessages;

    constructor(address _owner){
        owner = _owner;
        errorMessages.push("is not allowed");
        errorMessages.push("only owner");
        errorMessages.push("placeholder");
    }

    function getSizeOfErrorMessages() public view returns(uint256){
        return errorMessages.length;
    }
    
    function setAllowed(bool _allowed) public {
        allowed = _allowed;
    } 

    modifier isAllowed() {
        require(allowance[owner][msg.sender], errorMessages[0]);
        _;
    }

    modifier onlyOwner(){
        require(owner == msg.sender, errorMessages[1]);
        _;
    }

    function oneIncrement() public {
        ++count;
    }

    function increment(uint _increment) public isAllowed {
        count = count + _increment;
    }

    function signedIncrement(int _increment) public {
        signedCount = signedCount + _increment;
    }

    function assignAllowance(address _address) public onlyOwner {
        allowance[owner][_address] = true;
    }

}
