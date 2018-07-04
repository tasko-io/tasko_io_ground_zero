pragma solidity ^0.4.23;

import "./TaskeeLibrary.sol";

contract TaskoOrganisation
{
  using TaskeeLibrary for address;
  address public eternalStorage;

  constructor() public {
    eternalStorage = new EternalStorage();
  }

  function addTaskee(string _name,string _email) public
  {
    eternalStorage.addTaskee(_name,_email);
  }

  function getTaskee() public view returns(string,string)
  {
    return eternalStorage.getTaskee();
  }
}
