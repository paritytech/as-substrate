/// <reference path="../../../node_modules/@substrate/as-contracts/build/index.d.ts" />

import { u128 } from "as-bignum";

import { ContractLibrary } from "@substrate/as-contracts";
import { numberToBytes } from "@substrate/as-utils";

const COUNTER_KEY = (new Uint8Array(32)).fill(1);

enum Action {
  Inc,
  Get,
  SelfEvict
}

function handle(input: Uint8Array): Uint8Array {
  const value = new Uint8Array(0);
  const counter = ContractLibrary.getStorage(COUNTER_KEY);

  const dataCounter = new DataView(counter.buffer);
  const counterValue: u32 = dataCounter.byteLength
    ? dataCounter.getUint32(0, true)
    : 0;

  switch (input[0]) {
    case Action.Inc:
      const by = load<u32>(input.dataStart, 1);
      const newCounter = numberToBytes(counterValue + by);
      ContractLibrary.setStorage(COUNTER_KEY, newCounter);
      break;
    case Action.Get:
      const value2 = (new Uint8Array(5)).fill(165);
      if (value2.length) return value2;
      break;
    case Action.SelfEvict:
      const allowance = u128.from<u32>(0);
      ContractLibrary.setRentAllowance(allowance);
      break;
  }
  return value;
}

export function call(): u32 {
  const input = ContractLibrary.getScratchBuffer();
  const output = handle(input);
  ContractLibrary.setScratchBuffer(output);
  return 0;
}

export function deploy(): u32 {
  return 0;
}
