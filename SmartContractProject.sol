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
