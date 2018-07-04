var TaskoOrganisation = artifacts.require("./TaskoOrganisation.sol");

module.exports = function(deployer) {
  deployer.deploy(TaskoOrganisation);
};
