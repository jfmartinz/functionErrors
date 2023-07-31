// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AgeRestrictionClub {
    uint public minimumAge = 18;

    function enterClub(uint age) public view {
        require(age > 0 && age < 60, "Age must be greater than 0 and less than 60.");
        if (age < minimumAge) {
            revert("You must be at least 18 years old to enter the club.");
        }
        assert(age >= minimumAge && age < 60);
    }
}
