// SPDX-License-Identifier: MIT
pragma solidity >=0.6.2 <0.8.0;

import "./ERC20.sol";

contract TeamToken is ERC20 {
    address public owner;

    event TeamFinanceTokenMint(address indexed to, uint256 amount);
    event TokensBurned(address indexed from, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "[Auth] Only owner can call");
        _;
    }

    modifier checkIsAddressValid(address ethAddress) {
        require(ethAddress != address(0), "[Validation] invalid address");
        _;
    }

    constructor(
        string memory name,
        string memory symbol,
        uint8 decimals,
        uint256 supply,
        address owner_,
        address feeWallet
    )
        public
        checkIsAddressValid(owner_)
        checkIsAddressValid(feeWallet)
        ERC20(name, symbol)
    {
        require(decimals >= 8 && decimals <= 18, "[Validation] Invalid decimals");
        require(supply > 0, "[Validation] Supply must be > 0");

        _setupDecimals(decimals);
        _mint(owner_, supply);
        owner = owner_;

        emit TeamFinanceTokenMint(owner_, supply);
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
        emit TeamFinanceTokenMint(to, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
        emit TokensBurned(msg.sender, amount);
    }
}
