const {ethers} = require("hardhat")
const { expect }  = require("chai")


describe("Data Feed Demo Test", ()=>{

    it("get Price",async() => {
      const DataFeed = await ethers.getContractFactory("Main")  
      const DataFeedContract = await DataFeed.deploy()
        
      await DataFeedContract.deployed()

      console.log("deploy success!")

      const result = await DataFeedContract.getBtcPrice()
      console.log("Btc price is ",result)
    })
})