// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract DataStorage {
    //存储位置有三种, storage, memory ,calldata
    
    //storage存在链上，消耗gas多
    //memory，calldata存在内存，消耗少
    //calldata变量不能修改，一般用于函数的参数
    //如果返回的数据类型是变长的情况下，必须使用memory
    

    function fCalldata(uint[] calldata _x) public pure returns(uint[] calldata){
        //参数为calldata数组，不能被修改
        //_x[0] = 0 //这样修改会报错
        return (_x);
    }

    //storage(合约的状态变量)赋值给本地storage(函数里的)时候会创建引用
    uint[] x = [1,2,3];
    function fStorage() public {
        //声明一个storage的变量 xStorage，指向x。修改xStorage也会影响x
        uint[] storage xStorage = x;
        xStorage[0] = 100;
    }
}