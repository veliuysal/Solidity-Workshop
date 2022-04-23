// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

/**
 * @author 0xVeliUysal
 * @dev Simple Crowd Funding Example
 */
contract CrowdFunding {

    mapping(address => uint) public contributors;

    address public manager;

    uint public minimumContribution;
    uint public deadline;
    uint public target;
    uint public raisedAmount;
    uint public totalContibutors;

    //Structure to store funding information
    struct Request {
        string cause;
        uint value;
        address payable recipient;
        bool completed;
        uint totalVoters;
        mapping(address => bool) voters;
    }

    mapping(uint => Request) public requests; //Struct variable to store multiple crowd funds & their details
    uint public requestNumber;


    constructor (uint _targetAmount, uint _deadline){
        target = _targetAmount;
        minimumContribution = .1 ether;
        deadline = block.timestamp + _deadline;
        manager = msg.sender;
    }


    //Function to help our contract receive payment
    function sendEther() public payable {
        require(block.timestamp < deadline, 'Sorry, deadline has passed');
        require(msg.value >= minimumContribution, 'Sorry, minimum contribution is not met');
        
        //To increase the no of unique users
        if(contributors[msg.sender] == 0){
            totalContibutors++;
        }

        contributors[msg.sender] += msg.value; //Adding ammount to contributor's mapping 
        raisedAmount += msg.value;  //Adding amount to total fund
    }

    //Function to check contract balance
    function getContractBalance() public view returns(uint){
        return address(this).balance;
    }

     //Function to refund the contributor
     function refundEther() public {
         //Refund only when raised amount < target, deadline has crossed & user has contributed something
         require( raisedAmount < target && block.timestamp > deadline ,'You are not eligible for refunding' );
         require(contributors[msg.sender] > 0);

         address payable user = payable(msg.sender); //Storing address of contributer asking for refund
         user.transfer(contributors[msg.sender]);    //Transfering his all contribution amount to his account
         contributors[msg.sender] = 0;               //After transfering setting his contribution to 0
     }


    modifier onlyManager(){
        require(msg.sender == manager, "Only manager");
        _; 
    } 

    //Function for only managers to create new crowd funding 
    function createFundRequest(string memory _cause, address payable _recipient, uint _value ) public onlyManager {
         Request storage newRequest = requests[requestNumber]; // requests[requestNumber] -> maps to the Structure, ex: require[0] -> Request1
         requestNumber++; //Increamenting the total number of crowd fund requests 

        //Filling the data to our Structure
         newRequest.cause = _cause;
         newRequest.recipient = _recipient;
         newRequest.value = _value;
         newRequest.completed = false;
         newRequest.totalVoters = 0;
    }

    //Funtion for contributors to submit vote request so that manager can withdraw fund 
    function voteRequest(uint _requestNumber) public{
        require(contributors[msg.sender] > 0, 'You are not eligile for voting');
        Request storage thisRequest = requests[_requestNumber]; //Points to the particular Request Structure
        
        require(thisRequest.voters[msg.sender] == false, 'You have already voted!');
        thisRequest.voters[msg.sender] = true;
        thisRequest.totalVoters++;
    }


    //Function for sending fund amount to the recipient
    function makePaymentToRecipient(uint _requestNumber) public onlyManager{
        require(raisedAmount >= target);
        Request storage thisRequest = requests[_requestNumber]; 

        require(thisRequest.completed == false, 'Recipient has already been paid');
        require(thisRequest.totalVoters > totalContibutors/2, 'Majority support needed'); //More than 50% voting check
        
        thisRequest.recipient.transfer(thisRequest.value);
        thisRequest.completed = true;
    }


}