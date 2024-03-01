// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;


contract MQuizContract {

    address public owner;    
    uint256 public age;
    uint256 public hrsWrk;
    uint256 public rate;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }
    
    // Modifier to check if the value being set is not zero
    modifier nonZeroValue(uint256 _value) {
        require(_value !=0, "Value cannot be zero");
        _;
    }

    // Function to set the age value for the sender's address
    function setAge(uint256 _age) external onlyOwner {
        age = _age;
    }

    // Function to set the hours worked value for the sender's address
    function setHrsWrk(uint256 _HrsWrk) external onlyOwner {
        hrsWrk = _HrsWrk;
        require(hrsWrk !=0, "Value cannot be zero!");
    }

    
    // Function to set the rate value for the sender's address
    function setRate(uint256 _rate) external onlyOwner {
        rate = _rate;
        require(rate !=0, "Value cannot be zero!");

    }

    // Function to calculate total salary
    function calculateTotSal() public view returns (uint256) {
        return hrsWrk * rate;
    }
}