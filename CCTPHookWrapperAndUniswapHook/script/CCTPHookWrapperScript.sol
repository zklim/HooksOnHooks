// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.6;

import {Script, console} from "forge-std/Script.sol";
import {CCTPHookWrapper} from "@circle-cctp/examples/CCTPHookWrapper.sol";

contract CCTPHookWrapperScript is Script {
    CCTPHookWrapper public cctpHookWrapper;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        cctpHookWrapper = new CCTPHookWrapper(0xE737e5cEBEEBa77EFE34D4aa090756590b1CE275);

        vm.stopBroadcast();
    }
}
