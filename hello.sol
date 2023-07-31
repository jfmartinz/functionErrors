// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract club {
    uint public minimumAge = 18;

    function eligibility(uint age) public view {
        require(age > 10 && age < 60, "Age must be greater than 10 and less than 60.");
        if (age < minimumAge) {
            revert("You must be at least 18 years old to enter the club.");
        }
          assert(age >= minimumAge && age < 60); 
          revert("You can enter the club");
        
    }
}
