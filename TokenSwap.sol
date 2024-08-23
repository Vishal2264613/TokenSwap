// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TokenSwap {
    ERC20 public token1;
    address public owner1;
    uint256 public amount1;
    ERC20 public token2;
    address public owner2;
    uint256 public amount2;

    constructor(
        address _token1,
        address _owner1,
        uint256 _amount1,
        address _token2,
        address _owner2,
        uint256 _amount2
    ) {
        token1 = ERC20(_token1);
        owner1 = _owner1;
        amount1 = _amount1;
        token2 = ERC20(_token2);
        owner2 = _owner2;
        amount2 = _amount2;
    }

    function swap() public {
        require(msg.sender == owner1 || msg.sender == owner2, "Not authorized");
        require(
            token1.allowance(owner1, address(this)) >= amount1,
            "Amount is too low"
        );
        require(
            token2.allowance(owner2, address(this)) >= amount2,
            "Amount is too low"
        );

        _safeTransferFrom(token1, owner1, owner2, amount1);
        _safeTransferFrom(token2, owner2, owner1, amount2);
    }

    function _safeTransferFrom(
        ERC20 token,
        address sender,
        address recipient,
        uint256 amount
    ) private {
        bool sent = token.transferFrom(sender, recipient, amount);
        require(sent, "Transaction failed");
    }
}

//0x0fC5025C764cE34df352757e82f7B5c4Df39A836
//0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
//1000

//0x8431717927C4a3343bCf1626e7B5B1D31E240406
//0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
//2000

//0x11bcD925D9c852a3eb40852A1C75E194e502D2b9
