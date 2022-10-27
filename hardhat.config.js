require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.17",
  networks:{
    hardhat: {
      forking: {
        url: "https://goerli.infura.io/v3/145acbee350d44709d5e64f496e0e954",
      }
    },
  }
};
