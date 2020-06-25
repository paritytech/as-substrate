# ERC-20 example

A raw Parity Substrate smart contract example written in AssemblyScript

This contract does not use the functions provided by the `@substrate/as-contract` package.
It is a stand-alone AssemblyScript contract that can be executed on any substrate chain that includes the contracts pallet.

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
