import { toNano } from '@ton/core';
import { Marketplace } from '../build/Marketplace/Marketplace_Marketplace';
import { NetworkProvider } from '@ton/blueprint';

export async function run(provider: NetworkProvider) {
    const marketplace = provider.open(await Marketplace.fromInit());

    await marketplace.send(
        provider.sender(),
        {
            value: toNano('0.05'),
        },
        null,
    );

    await provider.waitForDeploy(marketplace.address);

    // run methods on `marketplace`
}
