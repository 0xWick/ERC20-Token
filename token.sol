// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// Importing ERC-20 from openzeppelin codebase
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

// Our contract inherit from ERC-20 contract

contract MyCoin is ERC20 {
    // Addding constructor function from ERC20 as a (modifier)
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol){

        // Sender the owner initial supply
        _mint(msg.sender, 200000 * 10 ** 18);
    }
}