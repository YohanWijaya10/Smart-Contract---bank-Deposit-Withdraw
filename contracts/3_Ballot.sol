// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bank {

    mapping(address => uint ) public balance;

    event topUpEvent(address indexed user, uint amount);
    event withDrawEvent(address indexed user, uint amount);

    function topUp() public payable {
        require(msg.value > 0 ,"saldonya kurang boss qiu");
        balance[msg.sender] += msg.value;
        emit withDrawEvent(msg.sender, msg.value);

    }

    function withdraw(uint _Amount) public {
        //dasd
        uint toEther = _Amount * 1 ether;
        require(balance[msg.sender] >= toEther, "" );
        balance[msg.sender] -= toEther ;
        payable(msg.sender ).transfer(toEther);
        emit withDrawEvent(msg.sender, toEther);

    }

    function smallWithdraw(uint _amount) public {
        require(balance[msg.sender] >= _amount, "saldo Kurang bro");
        balance[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
        emit withDrawEvent(msg.sender , _amount); 
    }
    
}
