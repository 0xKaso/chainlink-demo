pragma solidity ^0.8.7;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract Main {
    AggregatorV3Interface btcPrice;

    constructor() {
        btcPrice = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);
    }

    function getBtcPrice() public view returns(int) {
        (,int price,,,) = btcPrice.latestRoundData();
        return price;
    }
}