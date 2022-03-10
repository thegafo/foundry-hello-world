// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.10;

contract Contract {
  function t(uint256 x) public pure returns (uint256) {
    require(x < 10, "Nope");
    return x;
  }
}
