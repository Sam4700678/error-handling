
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


