var TaskeeLibrary = artifacts.require("./TaskeeLibrary.sol");
var TaskoOrganisation = artifacts.require("./TaskoOrganisation.sol");

module.exports = function(deployer) {
  deployer.deploy(TaskeeLibrary).then(function(){
    deployer.link(TaskeeLibrary,TaskoOrganisation);
    deployer.deploy(TaskoOrganisation);
  });
};
