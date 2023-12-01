# Error handeling! in Solidity


## Install

1. Install [Node.js](https://nodejs.org)

   Download and install from the official site.

2. Install [Truffle](https://github.com/trufflesuite/truffle)

   ```bash
   npm install -g truffle
   ```


## Initialize

1. Initialize Truffle in your project folder

   ```bash
   truffle init
   ```

   After initialization, you will find two folders called `contracts` and `migrations`. Contracts go in the `contracts` folder while contract deployment settings go in `migrations`.

2. The "Error-Handeling!" contract

   This is an example of a "Error_Handeling" contract in Solidity. 
   "Error_Handeling.sol" in `contracts` contains the following code:

```solidity
// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract Error_Handeling {
    function RequireFunc(uint i) public pure {
        require(i > 7, "Input must be greater than 7");
    }

    function RevertFunc(uint i) public pure {
        if (i <= 7) {
            revert("Input must be greater than 7");
        }
    }

    function AssertFunc(uint num) public pure {
        assert(num == 15);
    }
}

  
   ```

3. Prepare the migration

   "2_deploy_migration.js" in `migrations` contains the following code:

   ```javascript
   var Error_Handeling = artifacts.require("Error_Handeling");
   module.exports = function(deployer) {
     deployer.deploy(Error_Handeling);
   }
   ```

4. Start Truffle console in development mode

   ```bash
   truffle develop
   ```

   In the Truffle console, execute

   ```bash
   compile
   migrate
   ```
   If you want to remigrate existing contracts, run `migrate --reset` instead of simply `migrate`.

5. Test your contract
