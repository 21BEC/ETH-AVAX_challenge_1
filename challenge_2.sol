// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;
contract global_functions {
    address public owner;
    uint public balance;
    uint public _value;
    constructor() {
        owner = msg.sender;
    }
    modifier onlyowner (){
        require(msg.sender==owner, "you are not the owner");
        _;
    }
    function deposit () public payable{
        if(balance>0){
        balance += _value;
        }
    }
    function withdraw (uint amount) public payable{
        if(amount<= balance){
        balance -= amount;
        }
        else {
            return deposit();
        }
    }

}
