# Fintech_Module21
---

## KaseiCoin full setup
---
![KaseiCoin0](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/kaseicoin.jpg)


KaseiCoin will be a fungible token that is ERC-20 compliant. KaseiCoin will be launched via a crowdsale that will allow people who are moving to Mars to convert their earthling money to KaseiCoin. This repository can be used as a template to create a fungible token that is ERC-20 compliant and that will be minted by using a Crowdsale contract from the OpenZeppelin Solidity library.The crowdsale contract will manage the entire crowdsale process, allowing users to send ether to the contract and in return receive KAI, or KaseiCoin tokens. Your contract will mint the tokens automatically and distribute them to buyers in one transaction.
--- 

* The solidity smart contract goest through the following steps:

1. Create the KaseiCoin Token Contract

Import the following contracts from the OpenZeppelin library:
* ERC20
* ERC20Detailed
* ERC20Mintable

- Define a contract for the KaseiCoin token called KaseiCoin, and have the contract inherit the three contracts that you just imported from OpenZeppelin.
- Inside of your KaseiCoin contract, add a constructor with the following parameters: name, symbol, and initial_supply.
- As part of your constructor definition, add a call to the ERC20Detailed contracts constructor, passing the parameters name, symbol, and 18. Recall that 18 is the value for the decimal parameter.

![KaseiCoin](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/1.Successfull_compilation_of_Kasei_token.jpg)

2. Create the KaseiCoin Crowdsale Contract
- Import the provided KaseiCoinCrowdsale.sol starter code into the Remix IDE.
- This contract inherit the following OpenZeppelin contracts:
- Crowdsale
- MintedCrowdsale
- Within the KaisenCoinCrowdsale constructor, provide parameters for all of the features of your crowdsale, such as rate, wallet (where the funds that the token raises should be deposited), and token (the KaseiCoin that the KaseiCoinCrowdsale will use). 

![KaseiCoin2](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/2.Successfull_compilation_of_Kasei_crowdsale_contract.jpg)

3. Create the KaseiCoin Deployer Contract

- Create the KaseiCoin deployer contract. Start by uncommenting the KaseiCoinCrowdsaleDeployer contract in the provided KaseiCoinCrowdsale.sol starter code.
- add variables to store the addresses of the KaseiCoin and KaseiCoinCrowdsale contracts, which this contract will deploy. To do so, complete the following steps:
- Create an address public variable called kasei_token_address, which will store KaseiCoin’s address once that contract has been deployed.
- Create an address public variable called kasei_crowdsale_address, which will store KaseiCoinCrowdsale's address once that contract has been deployed.
- Add the following parameters to the constructor for the KaseiCoinCrowdsaleDeployer contract: name, symbol, and wallet.

- Create the KaseiCoin token by using a new instance of the KaseiCoin contract with parameters name and symbol, and by setting the initial_supply parameter to 0.
- Assign the KaseiCoin token contract’s address to the kasei_token_address variable. This will allow you to easily fetch the token's address later.

- Create a new instance of the KaseiCoinCrowdsale contract using the following parameters:
- rate (Set rate equal to 1 in order to maintain parity with ether.)
- wallet (Pass wallet in from the main constructor. This is the wallet that will get paid all of the ether raised by the crowdsale contract.)
- token (This is the token variable where KaseiCoin is stored.)

- Assign the KaseiCoin crowdsale contract’s address to the kasei_crowdsale_address variable. This will allow you to easily fetch the crowdsale’s address later.
- Set the KaseiCoinCrowdsale contract as a minter.
- Have the KaseiCoinCrowdsaleDeployer renounce its minter role.

![KaseiCoin3](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/3.Successfull_compilation_of_Kasei_deployer_contract.jpg)

4. Deploy the Crowdsale to a Local Blockchain (See Videos and screenshot section below)
a. Deployment of the contract to a local blockchain with Remix, MetaMask, and Ganache.
b. Using test accounts to buy new tokens from the crowdsale and then checking the balances associated with the test accounts.
c. After purchasing tokens with test accounts, viewing the total supply of minted tokens and the amount of wei that has been raised by the crowdsale.

## Table of Content

- [Tech](#technologies)
- [Usage](#usage)
- [Videos_Screenshots](#Videos_Screenshots)
- [Contributor(s)](#contributor(s))
- [License(s)](#license(s))

---
## Tech

This project leverages [Solidity](https://soliditylang.org/) and [Remix IDE](https://remix.ethereum.org/)

* The solidity language is used to program a solidity smart contract to function on the ethereum blockchain
* Remix IDE is a web application used to build solidity smart contracts and provides the ability to test the smart contract in a virtual test environment. 

---

## Usage

To use the KaseiCoin smart contracts, simply clone the full repository and open the **KaseiCoin.sol and KaseiCoinCrowdsale.sol** file in Remix IDE.

---

## Videos_Screenshots 

### Deploy the Crowdsale to a Local Blockchain (Click on Links to start videos)

* Deploy crowdsale deployer contract
![CrowdsaleDeployer Video](https://user-images.githubusercontent.com/48995199/233878086-85f16cb1-9cc7-4f1e-841e-41d44173962c.mp4)

* Contract Deployed:
![deploy1](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/4a1ContractDeployed.jpg)

* Contract Recorded in Ganach
![deploy2](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/4a2ContractrecordedGanach.jpg)

* Contract Deployed in Metamask
![deploy3](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/4a3ContractDeployedMetamask.jpg)


* Link crowdsale to deployer contract
![Link_Crowdsale Video](https://user-images.githubusercontent.com/48995199/233878144-89e48f1e-b26b-40de-bcda-4fbba943ec3e.mp4)


* Link token contract
![Link_Token Video](https://user-images.githubusercontent.com/48995199/233878190-fabf1b48-1b60-42d7-b534-bb3365470f2f.mp4)

* Token added to MetaMask (1)
![tokenlink1](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/4c1AddTokenToMetamask.jpg)

* Token added to MetaMask (2)
![tokenlink2](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/4c2AddTokenToMetamask.jpg)

* Token added to MetaMask (3)
![tokenlink3](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/4c3AddTokenToMetamask.jpg)


* Token in action, purchasing tokens
![Purchase_Token Video](https://user-images.githubusercontent.com/48995199/233878209-26cfe6fe-82c8-45fd-a9b0-f960df97a089.mp4)

* Added bought tokens to Metamask
![transaction1](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/4d1AddedboughtTokensToMetamask.jpg)

* Executed Transaction on Ganache(1)
![transaction2](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/4d1transactioninGanache1.jpg)

* Executed Transaction on Ganache(2)
![transaction3](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/4d1transactioninGanache2.jpg)

* Total Supply of Tokens
![transaction4](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/4dTotalSupply.jpg)

* Total Wei Raised
![transaction5](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/4dTotalWeiRaise.jpg)

