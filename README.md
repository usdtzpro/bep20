# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a Hardhat Ignition module that deploys that contract.

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/bep20.git
   cd bep20
   ```

2. Install dependencies:

   ```bash
   npm install
   ```

3. Set up environment variables:
   Create a `.env` file and add the following:
   ```env
   PRIVATE_KEY=your_wallet_private_key
   BSC_TESTNET_RPC_URL=https://data-seed-prebsc-1-s1.binance.org:8545
   BSC_RPC_URL=https://bsc-dataseed.binance.org
   BSCSCAN_API_KEY=your_bscscan_api_key
   ```

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat ignition deploy ./ignition/modules/Lock.js
```
