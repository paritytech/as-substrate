# AS-Substrate

A collection of resources to develop proof of concept projects for Substrate in AssemblyScript.
At the moment, this repository is mainly home for a collection of smart contract examples and a small smart contract library to write contracts for [Substrates contracts pallet](https://github.com/paritytech/substrate/tree/master/frame/contracts), but it might be extended with more examples in the future.

## Setup

This repository is using yarn and yarn workspaces. You also need a fairly up-to-date version of node.

## Getting started

1. Clone the whole `as-substrate` repository
   ``
   \$ git clone https://github.com/paritytech/as-substrate.git

2. Install all dependencies

```
$ yarn
```

3. Compile all packages, projects and contract examples to wasm

```
$ yarn build
```

To clean up all workspaces in the repository

```
$ yarn clean
```

## Write your own contract

## Disclaimer

Everything in this repository is highly experimental and should not be used for any professional or financial purposes.

## License

The entire code within this repository is licensed under the [GNU GENERAL PUBLIC LICENSE 3.0](LICENSE). Please [contact us](https://www.parity.io/contact/) if you have questions about the licensing of our products.
