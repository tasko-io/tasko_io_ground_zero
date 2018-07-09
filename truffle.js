const HDWalletProvider = require("truffle-hdwallet-provider-privkey");
const privKey = "<privkey>"; // raw private key
module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
networks: {
  ropsten: {
    provider: new HDWalletProvider(privKey, "https://ropsten.infura.io/PGeaCCgYpthSugPncips"),
    network_id: '3'
  },
  rinkeby: {
    provider: new HDWalletProvider(privKey, "https://rinkeby.infura.io/PGeaCCgYpthSugPncips"),
    network_id: '4'
  },
  development: {
      host: "192.0.0.1", // AWS rinkeby node
      port: 8545, // AWS rinkeby node
      network_id: "*"
  }

}
};
