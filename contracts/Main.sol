pragma solidity ^0.8.7;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract Name {
    AggregatorV3Interface btcPrice;

    constructor() {
        btcPrice = AggregatorV3Interface(0xa81FE04086865e63E12dD3776978E49DEEa2ea4e);
    }

    function getBtcPrice() public view returns(int) {
        (,int price,,,) = btcPrice.latestRoundData();
        return price;
    }
}