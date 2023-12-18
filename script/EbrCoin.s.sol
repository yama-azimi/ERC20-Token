// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script, console2} from "forge-std/Script.sol";
import {EbrCoin} from "../src/EbrCoin.sol";

contract EbrCoinScript is Script {
    function setUp() public {}

    function run() public {
        vm.broadcast();
        new EbrCoin;
    }
}
