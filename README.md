# Foundry Hello World

> Opinionated exploration of Foundry development toolkit for Ethereum development.

## Intro

Since starting with ethereum development and learning Solidity, I've primarily used Hardhat and Truffle. They are great and powerful, but they require you to write tests in javascript. I'm lucky enough (lol) to have past javascript development experience so it wasn't a big problem from me, although I did find it a bit clunky.

Solidity was the first language I've ever worked with that required writing unit tests in a different language. For a language notorious for being security and having obscure security concerns, I've always found this strange.

Over the past few months, a new Ethereum development suite has arised as the next big thing: Foundry. 

- Written in rust: huge speed improvements
- Composed of
  - Forge: Ethereum testing framework 
  - Cast: Swiss army knife for interacting with EVM smart contracts
- Fuzzing utilities

It's growing fast and has a great community. I expect it will overtake Hardhat as the top EVM development toolkit within the next few months.

## Installation

```bash
mkdir foundry-hello-world && cd foundry-hello-world 
curl -L https://foundry.paradigm.xyz | bash
foundryup
forge init .
```
On MacOS, may need `brew install libusb`

## VS Code

On my system, I had to take some extra steps to make sure everything worked as expected within VS Code. For example, `import "ds-test/test.sol";` was giving me an import error.

Create a file `.vscode/settings.json` with the following contents:

```json
{
  "solidity.packageDefaultDependenciesContractsDirectory": "src",
  "solidity.packageDefaultDependenciesDirectory": "lib",
  "solidity.compileUsingRemoteVersion": "v0.8.10"
}
```

To get Foundry in line with the chosen version, add the following to your default profile in foundry.toml.

```
solc_version = "0.8.10"
```

## Testing

`forge test` runs all tests

[More to come]


## Misc Tips

- Use `foundryup` to pull latest changes and update local environment
- 



## Resources

- Foundry book: https://onbjerg.github.io/foundry-book/guides/vscode.html
- Github: https://github.com/gakonst/foundry


Forge Standard Library

> Forge Standard Library is a collection of helpful contracts for use with forge and foundry. It leverages forge's cheatcodes to make writing tests easier and faster, while improving the UX of cheatcodes. For more in-depth usage examples checkout the tests.

```
forge install brockelmore/forge-std
```
