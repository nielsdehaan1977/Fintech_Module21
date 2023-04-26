pragma solidity ^0.5.5;

//  Import the following contracts from the OpenZeppelin library:
//    * `ERC20`
//    * `ERC20Detailed`
//    * `ERC20Mintable`
// import ERC20 contract standard
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol";
// import ERC20 detailed starandard
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol";
//minting standard:  helps manage the accounts which are allowed to mint (create) new tokens. 
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol";

// Create a constructor for the KaseiCoin contract and have the contract inherit the libraries that you imported from OpenZeppelin.

contract KaseiCoin is ERC20, ERC20Detailed, ERC20Mintable {
    // add a constructor accepts name, symbol and uint (tokens name, symbol and initial supply)
    constructor(
        string memory name,
        string memory symbol,
        uint initial_supply
    )
        // add ercdetailed constructor (required parameters are name, symbol and amount of decimals (standard 18))
        ERC20Detailed(name, symbol, 18)
        public
    {
        // Define contracts boyd:  Inside the body of the contract, call ERC20Mintable’s mint function and pass it the msg.sender variable and the inital_supply variable that is defined in our constructor.
        mint(msg.sender, initial_supply);
    }
}