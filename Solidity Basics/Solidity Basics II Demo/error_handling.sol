// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

contract MappingExample {
    // Define a mapping to store values assocaited with addresses
    mapping(address => uint256) public valueMapping;

    // Function to set a values for the sender's address
    function setValue(uint256 _value) public {
        require(_value !=0, "Value cannot be zero.");
        valueMapping[msg.sender] = _value;
    }

    // Function to retrieve the value associated with the sender's address
    function getValue() public view returns (uint256) {
        require(valueMapping[msg.sender] !=0, "No value for sender!");
        return valueMapping[msg.sender];
    }
}