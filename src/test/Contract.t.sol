// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.10;

import "ds-test/test.sol";
import "forge-std/Vm.sol";
import "../Contract.sol";

contract ContractTest is DSTest {
    Vm vm = Vm(HEVM_ADDRESS);
    Contract c;

    function setUp() public {
        c = new Contract();
    }

    function test_t(uint256 x) public {
        vm.assume(x <= 11);
        assertEq(c.t(x), x);
    }

    function test_t2(uint256 x) public {
        vm.assume(x < 10);
        assertEq(c.t(x), x);
    }
}
