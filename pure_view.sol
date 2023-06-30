// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;
contract hooooo{
    uint x = 5;
    function add(uint y) public view returns(uint){
        return (x+y);
    }
    function addint(int i, int j) public pure returns (int){
        return i+j;
    }
    address payable public owner;
    constructor (){
        owner = payable (msg.sender);
    }
    function deposit() external  payable {
    }
    function getbalance () external view  returns (uint){
        return address(owner).balance;
    }
}