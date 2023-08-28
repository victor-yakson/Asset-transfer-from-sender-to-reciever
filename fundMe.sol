// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AssetTransfer {
    address public owner;
    
    constructor() {
        owner = msg.sender;
    }
    
    receive() external payable {
    }

    function sendAsset(address payable recipient) external payable {
        require(msg.sender == owner, "Only the owner can send assets");
        recipient.transfer(msg.value);
    }
}
