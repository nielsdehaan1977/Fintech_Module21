# Fintech_Module21
---

## KaseiCoin full setup
---
![KaseiCoin0](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/kaseicoin.jpg


KaseiCoin will be a fungible token that is ERC-20 compliant. KaseiCoin will be launched via a crowdsale that will allow people who are moving to Mars to convert their earthling money to KaseiCoin. This repository can be used as a template to create a fungible token that is ERC-20 compliant and that will be minted by using a Crowdsale contract from the OpenZeppelin Solidity library.The crowdsale contract will manage the entire crowdsale process, allowing users to send ether to the contract and in return receive KAI, or KaseiCoin tokens. Your contract will mint the tokens automatically and distribute them to buyers in one transaction.
--- 

* The solidity smart contract goest through the following steps:

1. Create the KaseiCoin Token Contract

![KaseiCoin](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/1.Successfull_compilation_of_Kasei_token.jpg)

2. Create the KaseiCoin Crowdsale Contract
![KaseiCoin2](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/2.Successfull_compilation_of_Kasei_crowdsale_contract.jpg)

3. Create the KaseiCoin Deployer Contract
![KaseiCoin3](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/3.Successfull_compilation_of_Kasei_deployer_contract.jpg)


4. Deploy the Crowdsale to a Local Blockchain (See Videos below)
a. Deployment of the contract to a local blockchain with Remix, MetaMask, and Ganache.
b. Using test accounts to buy new tokens from the crowdsale and then checking the balances associated with the test accounts.
c. After purchasing tokens with test accounts, viewing the total supply of minted tokens and the amount of wei that has been raised by the crowdsale.

## Table of Content

- [Tech](#technologies)
- [Usage](#usage)
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

# Videos and screenshots: Deploy the Crowdsale to a Local Blockchain

* Deploy crowdsale deployer contract
https://user-images.githubusercontent.com/48995199/233878086-85f16cb1-9cc7-4f1e-841e-41d44173962c.mp4

![deploy1](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/4a1ContractDeployed.jpg)

![deploy2](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/4a2ContractrecordedGanach.jpg)

![deploy3](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/4a3ContractDeployedMetamask.jpg)


* Link crowdsale to deployer contract
https://user-images.githubusercontent.com/48995199/233878144-89e48f1e-b26b-40de-bcda-4fbba943ec3e.mp4


* Link token contract
https://user-images.githubusercontent.com/48995199/233878190-fabf1b48-1b60-42d7-b534-bb3365470f2f.mp4

![tokenlink1](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/4c1AddTokenToMetamask.jpg)

![tokenlink2](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/4c2AddTokenToMetamask.jpg)

![tokenlink3](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/4c3AddTokenToMetamask.jpg)


* Token in action, buy purchasing tokens
![TokenVideo](https://user-images.githubusercontent.com/48995199/233878209-26cfe6fe-82c8-45fd-a9b0-f960df97a089.mp4)

![transaction1](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/4d1AddedboughtTokensToMetamask.jpg)

![transaction2](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/4d1transactioninGanache1.jpg)

![transaction3](https://github.com/nielsdehaan1977/Fintech_Module21/blob/main/Images/4d1transactioninGanache2.jpg)



