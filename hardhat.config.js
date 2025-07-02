require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();

module.exports = {
  solidity: "0.6.12",
  networks: {
    bsc: {
      url: process.env.BSC_RPC_URL,
      accounts: [process.env.PRIVATE_KEY],
    },
    bsctestnet: {
      url: process.env.BSC_RPC_URL,
      accounts: [process.env.PRIVATE_KEY],
    },
  },
  etherscan: {
    apiKey: {
      bsc: process.env.BSCSCAN_API_KEY,
      bscTestnet: process.env.BSCSCAN_API_KEY,
    },
  },
};
