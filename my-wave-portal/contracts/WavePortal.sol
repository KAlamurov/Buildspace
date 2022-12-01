// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.17;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    mapping(address => uint256) public WaveCount;
    address[] arr;

    constructor() {
        console.log("Yo yo, I am a contract and I am smart");
    }

    function wave() public {
        totalWaves += 1;
        console.log("%s has waved!", msg.sender);
        WaveCount[msg.sender]++;
        for (uint i; i < arr.length; i++) {
        if (arr[i] == msg.sender) {
            console.log("%s is already in the array", msg.sender);
            return;
        }
    }
    arr.push(msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function getTotalWavesByPerson() public view returns (uint256) {
        console.log("Msg Sender have %d total waves!", WaveCount[msg.sender]);
        return WaveCount[msg.sender];
    }

    function getTotalAddresses() public view returns (uint256) {
        console.log("We have %d total addresses waved!", arr.length);
        return arr.length;
    }

}