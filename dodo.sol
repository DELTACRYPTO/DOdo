// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DodoCoin is ERC20, Ownable {
    // 1 milliard de DodoCoins avec 18 décimales
    uint256 public constant SUPPLY_TOTALE = 1_000_000_000 * 10**18;

    constructor() ERC20("DodoCoin", "DODO") {
        _mint(msg.sender, SUPPLY_TOTALE); // Le propriétaire reçoit toute la supply initiale
    }

    // Fonction pour que le propriétaire puisse mint de nouveaux tokens (optionnel)
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
}
