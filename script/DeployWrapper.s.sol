// SPDX-License-Identifier: MIT
//forge script script/DeployWrapper.s.sol --rpc-url http://127.0.0.1:8545  --broadcast --account thirdWallet --sender 0x3C44CdDdB6a900fa2b585dd299e03d12FA4293BC 
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {Wrapper} from "../src/Wrapper.sol";

contract DeploySwapWrapper is Script {
    function run() external returns (Wrapper) {
        Wrapper swapWrapper;
        address _router = address(0x2ca7d64A7EFE2D62A725E2B35Cf7230D6677FfEe);
        address _usdc = address(0x96152E6180E085FA57c7708e18AF8F05e37B479D); // base
        //bsc= 0x05BA149A7bd6dC1F937fA9046A9e05C05f3b18b0
        vm.startBroadcast();
        swapWrapper = new Wrapper(_router, _usdc);
        vm.stopBroadcast();
    }
}