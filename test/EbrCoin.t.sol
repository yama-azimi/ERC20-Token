// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console2} from "forge-std/Test.sol";
import {EbrCoin} from "../src/EbrCoin.sol";

contract EbrCoinTest is Test {
    EbrCoin public ebrCoin;
    address owner;

    function setUp() public {
        owner = address(this);
        ebrCoin = new EbrCoin(owner);
    }

    function testInitialBalance() public {
        assertEq(ebrCoin.balanceOf(owner), 1000 * 10 ** ebrCoin.decimals());
    }

    function testPauseUnpause() public {
        ebrCoin.pause();
        assertTrue(ebrCoin.paused());
        ebrCoin.unpause();
        assertFalse(ebrCoin.paused());
    }
}
