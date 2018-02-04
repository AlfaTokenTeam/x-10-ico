pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract X10 is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function X10(address _owner)  UpgradeableToken(_owner) {
    name = "X10";
    symbol = "X10";
    totalSupply = 1200000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}