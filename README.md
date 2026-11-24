# freshguard-coldchain-dappFreshGuardSLA is a Solidity smart contract that monitors cold-chain temperatures against a maximum safe limit of 400 (4.00°C), and it records the latest IPFS hash. When logTemperature is called, it updates latestIpfsHash, emits a StatusUpdated event, and sets breachDetected to true if the temperature goes above 400. I compiled, deployed, and tested the contract in Remix IDE with a safe reading of 350 and a breach reading of 500, confirming that breachDetected updated as expected.  


