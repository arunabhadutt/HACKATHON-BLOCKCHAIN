// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract wallet{
    uint256 public finalamt=0;
    receive() external payable {}
    
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function approve(uint256 _loanamt, uint256 _colamt) public payable returns (bool) 
    {
        if(_loanamt <= _colamt && _loanamt>0)
        {
            //  bool sent = _to.send(msg.value);
            // require(sent, "Failed to send Ether");
            // msg.sender.send());
            // updateBalance(_loanamt);
            return true;
        }
            
        else
            return false;

    }
}
