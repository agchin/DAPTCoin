// SPDX-License-Identifier: GPL-3.0


pragma solidity ^0.8.0;

// ----------------------------------------------------------------------------
// ERC Token Standard #20 Interface
//
// ----------------------------------------------------------------------------

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";



contract ReplaceMe is ERC20, Ownable {

    /**
     * Constrctor function
     *
     * Initializes contract with initial supply tokens to the creator of the contract
     */


    constructor() ERC20("ReplaceMe", "ReplaceMe"){}

    function issueToken() public onlyOwner{
        _mint(msg.sender, 1000*10**18);
    }
}

