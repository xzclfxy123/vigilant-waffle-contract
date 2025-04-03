// SPDX-License-Identifier: MIT
pragma solidity ^0.4.0;

contract RoomRent {
    // 租金金额
    uint256 public rentAmount;

    // 租金支付记录
    mapping(address => uint256) public paidRent;

    // 设置租金金额
    function setRent(uint256 _amount) public {
        rentAmount = _amount;
    }

    // 获取租金金额
    function getRent() public view returns (uint256) {
        return rentAmount;
    }

    // 支付租金
    function payRent() public payable {
        require(msg.value == rentAmount, "Incorrect rent amount.");
        paidRent[msg.sender] += msg.value;
    }
}