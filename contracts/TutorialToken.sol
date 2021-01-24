
// We use 'is' to inherit from the StandardToken contract.
// Our contract will inherit all variables and functions from the StandardToken contract.
// Inherited functions and variables can be overwritten by redeclaring them in the new contract.

    // The name and symbol variables give our token a unique identity.
    // The decimals variable determines the degree to which this token can be subdivided.
    // For our example we went with 2 decimal places, similar to dollars and cents.
    // The INITIAL_SUPPLY variable determines the number of tokens created when this
    // contract is deployed. In this case, the number is arbitrary.

    // create a constructor function to mint with the totalSupply equal to our declared
    // INITIAL_SUPPLY and give the entire supply to the deploying account's address.


// contracts/TutorialToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.6.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TutorialToken is ERC20 {

    constructor () public ERC20("TutorialToken", "TT") {
        _setupDecimals(2);
        _mint(msg.sender, 120 * (10 ** uint256(decimals())));
    }
}