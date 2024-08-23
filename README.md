# TokenSwap

Welcome to the TokenSwap repository! This project features a smart contract designed to facilitate a token swap between two parties, Alice and Bob. The contract allows for the secure and automated exchange of tokens on the Ethereum blockchain.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Requirements](#requirements)
- [Deployment](#deployment)


## Introduction

TokenSwap is a smart contract that allows two parties, Alice and Bob, to securely swap tokens on the Ethereum network. The contract ensures that both parties fulfill their obligations before completing the swap, reducing the risk of fraud.

## Features

- **Secure Token Swap**: Facilitates a trustless swap between two ERC20 tokens.
- **Atomic Transactions**: Ensures that the swap either completes in full or fails, protecting both parties.
- **Customizable Swap Terms**: Allows parties to define the amount and type of tokens to be swapped.
- **Event Logging**: Emits events for tracking swap activities and statuses.

## Requirements

- **Solidity Version**: Compatible with Solidity version ^0.8.0.
- **Ethereum Network**: Ethereum mainnet, testnets (e.g., Ropsten, Rinkeby), or local Ethereum networks (e.g., Ganache).

## Deployment

To deploy your contract to a live network, configure your deployment script with the desired network settings and execute the deployment command.

1. Copy & paste code to Remix IDE.
2. Compile and deploy Alice and Bob contract (from different addresses).
3. After that deploy tokenSwap contract by adding the some parameters.
   a. Token1 address (alice contract address)
   b. owner1 address (Address from which you deployed alice contract)
   c. token amount 
   d. Token2 address (bob contract address)
   e. owner2 address (Address from which you deployed bob contract)
   f. token amount
5. From alice and bob contract approve the token amount they want to transfer.
6. Then simply use Swaptoken function in token swap contract and tranfer alice & bob token to eachother addresses.
