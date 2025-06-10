
message ChangeSettings {
    newCollections: Address;    
    newNumerator: Int;    
    newDenominator: Int; 
}

message CreateOffer {
    nftAddress: Address;
    price: Int;
    currency: Slice; // "ton" | "jetton";
}

message BuyNft {
    receiver: Address;
}
