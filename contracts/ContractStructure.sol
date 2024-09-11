// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract ContractStructure {
    uint256 public balance;

    // 构造函数，智能合约被部署到区块链的时候，被实例化
    constructor(uint256 _bal) {
        balance = _bal;
    }

    // 定义个事件，用于记录，类似于写日志
    event BalanceAddedEvent(uint256 oldValue, uint256 newValue);

    // 修饰器 是对函数的输入和输出条件进行约束
    modifier IncrementRange(uint256 _incre) {
        require(_incre > 100, "too small");

        _; // 执行被修饰函数的逻辑，類似於切面
    }

    function addBalance(uint256 _incr) public IncrementRange(_incr) {
        uint256 oldValue = balance;

        balance += _incr;

        // 这里就相当于打日志，在 output 里的 logs 里记录下来
        emit BalanceAddedEvent(oldValue, balance);
    }
}
