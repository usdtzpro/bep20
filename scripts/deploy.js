const { ethers } = require("hardhat");

async function main() {
  const [deployer] = await ethers.getSigners();
  console.log("Deploying contract with:", deployer.address);

  const TeamToken = await ethers.getContractFactory("TeamToken");

  const name = "Tether USD ZED";
  const symbol = "USDT.z";
  const decimals = 18;
  const supply = ethers.parseUnits("27500000000", decimals); // 27.5 billion
  const owner = deployer.address;
  const feeWallet = deployer.address;

  const contract = await TeamToken.deploy(
    name,
    symbol,
    decimals,
    supply,
    owner,
    feeWallet
  );
  await contract.waitForDeployment();

  console.log("USDT.z deployed to:", await contract.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});
