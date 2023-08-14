# Decentralized Certificate Verification System

Welcome to the Decentralized Certificate Verification System repository! This project combines the power of blockchain technology (with Ethereum using Hardhat) and a user-friendly React frontend to create a secure and efficient system for verifying certificates.

## Overview

The Decentralized Certificate Verification System has two main components:

1. **Smart Contract (Solidity)**: The backend component of the system is implemented as a smart contract on the Ethereum blockchain using Hardhat. This smart contract handles the creation of certificates and ensures the ownership control for certificate issuance.

2. **Frontend (React)**: The user interface for interacting with the certificate verification system is built using React. Users can verify certificates by entering the unique certificate hash, promoting transparency and trust.

## Setup

To get started with the project, follow these steps:

1. **Clone the Repository**: Clone this repository to your local machine using `git clone`.

2. **Install Dependencies**:
   - For the smart contract (Solidity), navigate to the `smart-contract` directory and run `npm install`.
   - For the frontend (React), navigate to the `frontend` directory and run `npm install`.

3. **Configure Ethereum Provider**:
   - Make sure you have an Ethereum provider (e.g., MetaMask) set up in your browser for interacting with the Ethereum blockchain.

4. **Deploy Smart Contract**:
   - Use Hardhat to compile and deploy the smart contract to an Ethereum network. Update the necessary configurations in `hardhat.config.js`.

5. **Start the Frontend**:
   - Run the frontend locally using `npm start` in the `frontend` directory.

## Usage

1. **Create Certificates**:
   - Use the `createCertificate` function in the smart contract to create certificates. Only the contract owner can create certificates.

2. **Verify Certificates**:
   - Visit the frontend interface and enter the certificate hash to verify the authenticity of a certificate. The system will display the certificate details if the certificate is valid.

## Contributing

Contributions to this project are welcome! If you find a bug, have a feature request, or want to improve the project, feel free to submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
