// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract BasicType {
    function testInt() public pure returns (uint256) {
        uint8 i8 = 255;
        return i8;
    }

    enum OrderState {
        layorder,
        payment
    }

    function testEnum() public pure returns (OrderState) {
        OrderState state = OrderState.layorder;
        return state;
    }
}
