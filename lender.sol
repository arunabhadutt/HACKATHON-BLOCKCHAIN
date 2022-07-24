// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


import "./wallet.sol";
 contract lenders{
    wallet public w= new wallet();

    function sendViaSend(address payable _to) public payable {
        // Send returns a boolean value indicating success or failure.
        // This function is not recommended for sending Ether.
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send Ether");
    }
   
 }
