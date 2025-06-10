import "./messages";

contract Offer {
    owner: Address; 
    nftAddress: Address;         
    marketplaceFeeAddress: Address;  
    marketplaceFeeNumerator: Int;
    marketplaceFeeDenominator: Int;

    init(owner: Address, marketplaceFeeNumerator: Int, marketplaceFeeDenominator: Int) {
        self.owner = owner;
        self.marketplaceFeeAddress = sender();
        self.marketplaceFeeNumerator = marketplaceFeeNumerator;
        self.marketplaceFeeDenominator = marketplaceFeeDenominator;
    }

    receive(msg: BuyNft) {
        
    }

    get fun offer_data() {
        
    }
}
