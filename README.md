# Solidity-learning
My learning progress towards solidity, this repository contains solidity files which covers lot's of concepts that I have learnt and which I'm learning currently will be added. Make use of it and get updated!

Use Remix - Ethereum IDE in order to deploy any solidity(.sol) files:

                      https://remix.ethereum.org/
                      
This Remix - Ethereum IDE contains 3 directories:

        ->  'contracts': Holds three contracts with increasing levels of complexity.
        ->  'scripts': Contains four typescript files to deploy a contract. It is explained below.
        ->  'tests': Contains one Solidity test file for 'Ballot' contract & one JS test file for 'Storage' contract.

Scripts:

        -> The 'scripts' folder contains four TypeScript files that assist in deploying the 'Storage' contract using the 'web3.js' and 'ethers.js' libraries.

        -> To deploy any other contract, you can update the contract's name from 'Storage' to the desired contract name and provide the constructor arguments accordingly in either the deploy_with_ethers.ts or deploy_with_web3.ts file.

        -> In the 'tests' folder, there is a script that contains Mocha-Chai unit tests for the 'Storage' contract.

        -> To run a script in Remix, you can right-click on the file name in the file explorer and click 'Run'. The output from the script will appear in the Remix terminal.

        -> Please note that the require or import statements are supported in a limited manner for modules supported by Remix. The currently supported modules are ethers, web3, swarmgw, chai, multihashes, remix, and hardhat (only for the hardhat.ethers object/plugin). If you try to use an unsupported module, you will receive an error message stating that the module is not supported by the Remix IDE.
