// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MappingExample {
    // Define a mapping to store values associated with addresses
    mapping(address => uint256) public valueMapping;

    // Event emitted when a value is set for an address
    event ValueSet(address indexed _address, uint256 _value);

    // Function to set a value for the sender's address
    function setValue(uint256 _value) public {
        require(_value != 0, "Value cannot be zero.");
        valueMapping[msg.sender] = _value;
        
        // Emit the ValueSet event
        emit ValueSet(msg.sender, _value);
    }

    // Function to retrieve the value associated with the sender's address
    function getValue() public view returns (uint256) {
        require(valueMapping[msg.sender] != 0, "No value for sender!");
        return valueMapping[msg.sender];
    }
}
