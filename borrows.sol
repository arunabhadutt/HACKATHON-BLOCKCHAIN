// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


import "./wallet.sol";
contract borrower{
    mapping(address=>uint256) collateralAmt;
    mapping(address=>uint256) loanamt;
    wallet public w= new wallet();
    uint public balance = 0;
    event Receive(uint value);
    function addCollateral(uint _colVal) public {
        collateralAmt[msg.sender]=_colVal;
    }

    function getLoan(uint256 _loan, uint256 _colamt) payable public{
            require(w.approve(_loan, _colamt),"Loan not Granted!!");
            if(w.approve( _loan, _colamt))
            {
                emit Receive(msg.value);
    
                addCollateral(_colamt);
                loanamt[msg.sender]=_loan;
            }
    }

    function getLoanAmount() public view returns (uint256)
    {
        return loanamt[msg.sender];
    }
    


}
