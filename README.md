# SmartContractProject

This Solidity program is a simple bank-like transaction program that demonstrates the basic syntax and functionality of the three statements (assert, require, revert) in Solidity. The purpose of this program is to serve as a way to understand how these statements work.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has two functions which are deposit() and withdraw().

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., SmartContractProject.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RequireAssertRevertExample {
    uint256 public balance;

    function deposit(uint256 amount) public {
        // Use require to ensure that the deposit amount is greater than 0
        require(amount > 0, "Amount must be greater than 0");

        // Use assert to ensure that the addition does not result in overflow
        assert(balance + amount >= balance);

        // Deposit the amount
        balance += amount;
    }

    function withdraw(uint256 amount) public {
        // Use require to ensure that the withdrawal amount is not greater than the current balance
        require(amount <= balance, "Insufficient balance");

        // Use revert to revert the transaction if the withdrawal amount is greater than the balance
        if (amount > balance) {
            revert("Amount exceeds balance");
        }

        // Withdraw the amount
        balance -= amount;
    }
}
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.0" (or another compatible version), and then click on the "Compile SmartContractProject.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "RequireAssertRevertExample" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the balance. You can also enter a valid amount for deposit() and withdraw().

## Authors

Nichole Anne Marie J. Avañez 
[@nchlnnmrvnz](https://github.com/nchlnnmrvnz)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
