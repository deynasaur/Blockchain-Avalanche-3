// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract miToken is ERC20, Ownable {

    constructor(address owner) ERC20("Francheska", "ESKA") Ownable(owner)
    {}

    function mint(address _to, uint _amount) public onlyOwner {
        _mint(_to, _amount);
    }

    function burn(uint _amount) public {
        _burn(msg.sender, _amount);
    }

    function transfer(address _to, uint _amount) public override returns (bool) {
        _transfer(msg.sender, _to, _amount);

        return true;
    }

}
