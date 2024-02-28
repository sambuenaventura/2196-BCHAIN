// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MappingExample {
    // Define a mapping to store values associated with addresses
    mapping(address => uint256) public valueMapping;

    // Function to set a value for the sender's address
    function setValue(uint256 _value) public {
        require(_value != 0, "Value cannot be zero.");
        
        // While loop to set the value for multiple addresses
        address currentAddress = msg.sender;
        while (currentAddress != address(0)) {
            valueMapping[currentAddress] = _value;
            currentAddress = getNextAddress();
        }
    }

    // Function to retrieve the value associated with the sender's address
    function getValue() public view returns (uint256) {
        require(valueMapping[msg.sender] != 0, "No value for sender!");
        return valueMapping[msg.sender];
    }
    
    // Function to get the next address
    function getNextAddress() internal pure returns (address) {
        return address(0);
    }
}
