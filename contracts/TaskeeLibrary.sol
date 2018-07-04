
pragma solidity ^0.4.23;

import "./EternalStorage.sol";

library TaskeeLibrary {

  function getTaskeeCount(address _storageContract) public view returns(uint256)
  {
    return EternalStorage(_storageContract).getUIntValue(keccak256("TaskeeCount"));
  }

  function addTaskee(address _storageContract, string _name, string _email) public
  {
    uint256 taskeeCount = getTaskeeCount(_storageContract);
    EternalStorage(_storageContract).setUIntValue(keccak256("Taskee_Id",msg.sender), taskeeCount + 1);
    EternalStorage(_storageContract).setStringValue(keccak256("Taskee_Name", msg.sender), _name);
    EternalStorage(_storageContract).setStringValue(keccak256("Taskee_Email", msg.sender), _email);
    EternalStorage(_storageContract).setUIntValue(keccak256("TaskeeCount"), taskeeCount + 1);
  }

  function getTaskee(address _storageContract) public view returns(string,string) {
    return (EternalStorage(_storageContract).getStringValue(keccak256("Taskee_Name", msg.sender)),
            EternalStorage(_storageContract).getStringValue(keccak256("Taskee_Email", msg.sender)));
  }
}
