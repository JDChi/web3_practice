// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract ComplexValueType {
    function testAddress() public view returns (address) {
        // 获取到调用这个函数的发送者的地址
        address addr = msg.sender;
        return addr;
    }

    function testMyAddress() public view returns (address) {
        // 获取到当前合约的地址
        address addr = address(this);
        return addr;
    }

    function testFixedByteArray() public pure returns (bytes28){
        bytes28 data;
        return data;
    }
}
