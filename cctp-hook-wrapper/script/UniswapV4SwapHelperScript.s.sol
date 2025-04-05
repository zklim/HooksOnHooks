// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {Script, console} from "forge-std/Script.sol";
import {UniswapV4SwapHelper} from "../src/UniswapV4SwapHelper.sol";

contract UniswapV4SwapHelperScript is Script {
    function run() public {
        vm.startBroadcast();

        address baseSepoliaRouter = 0x492e6456d9528771018deb9e87ef7750ef184104;
        UniswapV4SwapHelper swapHelper = new UniswapV4SwapHelper(baseSepoliaRouter);

        vm.stopBroadcast();
    }
}