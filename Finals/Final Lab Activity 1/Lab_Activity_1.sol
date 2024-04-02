// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

contract EtherWallet {
    address payable public owner;

    constructor() payable {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function withdraw(uint256 _amount) public {
        require(msg.sender == owner, "Withdrawal is limited to the owner");
        require(address(this).balance >= _amount, "Not enough balance");
        owner.transfer(_amount);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}