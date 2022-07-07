/**
 * @type import('hardhat/config').HardhatUserConfig
 */
 require("dotenv").config();
 require("@nomiclabs/hardhat-ethers");
 const { API_URL, PRIVATE_KEY } = process.env;
 module.exports = {
   solidity: "0.8.7",
   defaultNetwork: "Goerli",
   networks: {
     hardhat: {},
     Goerli: {
       url: API_URL,
       accounts: [`0x${PRIVATE_KEY}`],
     },
   },
 }; 
 // 0xC920Edf6FF4A4793Cb9D7aB729aa540F0Cb3A18a