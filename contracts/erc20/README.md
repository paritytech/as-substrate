# ERC-20 contract example

A Parity Substrate ERC-20 smart contract example written in AssemblyScript.
It implements most important parts of the token interface defined by the [Ethereum ERC-20 Token Standard](https://eips.ethereum.org/EIPS/eip-20).

### How to compile it

**To install all dependencies:**

```
yarn install
```

**To build the contract WASM files**

```
yarn build
```

### Edit files

To edit the **AssemblyScript** code that is getting compiled to WebAssembly, edit the files in the `./assembly/` folder.
