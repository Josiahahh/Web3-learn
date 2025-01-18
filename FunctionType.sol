// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract FunctionType {
    uint256 public number = 5;

    //默认函数
    function add() external {
        number += 1;
    }
    //pure:不可读不可写
    function addPure(uint256 _number) external pure returns (uint256 new_number){
        new_number = _number + 1;
    }
    //view:可读不可写
    function addView() external view returns (uint256 new_number){
        new_number = number + 1;
    }

    //internal:内部函数,内部函数无法直接被调用，需要再定义一个external函数来间接调用
    function minus() internal {
        number = number - 1;
    }
    //合约内的函数可以调用内部函数
    function minusCall() external {
        minus();
    }

    //payable:给钱，能给合约支付eth的函数
    function minusPayable() external payable returns(uint256 balance){
        minus();
        balance = address(this).balance;
    }
}

