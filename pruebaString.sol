pragma solidity ^0.5.0;

contract simplestorage {
   string public storedData;

   event DataStored (
      string data
   );

   constructor(string memory initVal) public {
      storedData = initVal;
   }

   function set(string memory x) public returns (string memory value) {
      storedData = x;

      emit DataStored(x);

      return storedData;
   }

   function get() public view returns (string memory retVal) {
      return storedData;
   }

   function query() public view returns (string memory retVal) {
      return storedData;
   }
}
