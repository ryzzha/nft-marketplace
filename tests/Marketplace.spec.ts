import { Blockchain, SandboxContract, TreasuryContract } from '@ton/sandbox';
import { toNano } from '@ton/core';
import { Marketplace } from '../build/Marketplace/Marketplace_Marketplace';
import '@ton/test-utils';

describe('Marketplace', () => {
    let blockchain: Blockchain;
    let deployer: SandboxContract<TreasuryContract>;
    let marketplace: SandboxContract<Marketplace>;

    beforeEach(async () => {
        blockchain = await Blockchain.create();

        marketplace = blockchain.openContract(await Marketplace.fromInit());

        deployer = await blockchain.treasury('deployer');

        const deployResult = await marketplace.send(
            deployer.getSender(),
            {
                value: toNano('0.05'),
            },
            null,
        );

        expect(deployResult.transactions).toHaveTransaction({
            from: deployer.address,
            to: marketplace.address,
            deploy: true,
            success: true,
        });
    });

    it('should deploy', async () => {
        // the check is done inside beforeEach
        // blockchain and marketplace are ready to use
    });
});
