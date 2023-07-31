# Metacrafters: Project 
In this project I made a simple `club` contract designed to check if someone is eligible to enter a club based on their age. 

## Project requirments:
For this project, write a smart contract that implements the `require()`, `assert()` and `revert()` statements. 

## Excuting the program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the [Remix](https://remix.ethereum.org/) website.

<details>
<summary>My Solution</summary>

  ```js
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
```

</details>


I recommend you to learn the basics of Solidity in [MetaCrafters](https://www.metacrafters.io/) or check out my notes on this [repo](https://github.com/jfmartinz/web3Notes), before attempting this assessment.

---

**Author:**
Twitter: [@jfmartinz](https://twitter.com/jfmartinz)<br>
Github: [@jfmartinz](https://github.com/jfmartinz)<br>
Linkedin: [@jfmartinz](https://www.linkedin.com/in/jfmartinz/)
