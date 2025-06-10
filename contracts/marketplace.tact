import "@stdlib/ownable";
import "./messages";
import "./offer";

contract Marketplace with Ownable {
    owner: Address; 
    nftCollections: map<Address, Bool> = emptyMap();        
    jettonAddress: Address;      
    numerator: Int;    
    denominator: Int; 

    init(jettonAddress: Address, numerator: Int, denominator: Int) {
        self.owner = sender();
        self.jettonAddress = jettonAddress;
        self.numerator = numerator;
        self.denominator = denominator;
    }

    receive(msg: ChangeSettings) {
        self.requireOwner();
        sels.numerator = msg.newNumerator;
        sels.denominator = msg.newDenominator;
    }

    receive(msg: CreateOffer) {
        
    }

    get fun offer_by_nft_address(nftAddress: Address) {
        
    }
}
