// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract ValueType{
    bool public _bool = true;
    bool public _bool1 = !_bool;

    int public _int = -1;
    uint public _uint = 1;
    uint256 public _number = 20250114;  //256正整数
    uint256 public _number1 = _number**2;
    uint256 public _number2 = 1 + 1;
    uint256 public _number3 = 7 % 2;
    bool public _numberbool = _number > _number3;

    address public _address = 0x7A58c0Be72BE218B41C608b7Fe7C5bB630736C71;
    address payable public _address1 = payable (_address);  //payable address 可以转账，查余额
    uint256 public balance = _address1.balance;     //balaceo of address 余额地址

    bytes32 public _byte32 = "MiniSolidity";    //以字节的方式存储进变量_byte32 16进制：0x4d696e69536f6c69646974790000000000000000000000000000000000000000
    bytes1 public _byte = _byte32[0];   //_byte32的第一个字节：0x4d

    enum ActionSet{Buy,Hold,Sell}   //用枚举enum，将uint0,1,2表示为BUY HOLD SELL
    ActionSet action = ActionSet.Sell;
    //enum可以和uint显式的转换
    function enumToUint()  external view returns(uint){
        return uint(action);
    }

}