/// <reference path="../../../node_modules/@substrate/as-contracts/build/index.d.ts" />

import { u128 } from "as-bignum";

import { contract, storage } from "@substrate/as-contracts";
import { toBytes } from "@substrate/as-utils";

const FLIPPER_KEY = (new Uint8Array(32)).fill(2);

enum Action {
  Flip,
  Get,
  SelfEvict
}

function handle(input: Uint8Array): Uint8Array {
  const value = new Uint8Array(0);
  const flipper = storage.get(FLIPPER_KEY);

  const dataFlipper = new DataView(flipper.buffer);
  const flipperValue = dataFlipper.byteLength ? dataFlipper.getUint8(0) : 0;

  // Get action from first byte of the input U8A
  switch (input[0]) {
    case Action.Flip: {
      // Flip the flipper value in storage
      const newFlipperBool = !flipperValue;
      const newFlipperValue = toBytes(newFlipperBool);

      storage.set(FLIPPER_KEY, newFlipperValue);
      break;
    }
    case Action.Get: {
      // return the flipper value from storage
      if (flipper.length) return flipper;
      break;
    }
    case Action.SelfEvict: {
      const allowance = u128.from<u32>(0);
      contract.setRentAllowance(allowance);
      break;
    }
  }
  return value;
}

export function call(): u32 {
  const input = storage.getScratchBuffer();
  const output = handle(input);
  storage.setScratchBuffer(output);
  return 0;
}

export function deploy(): u32 {
  storage.set(FLIPPER_KEY, toBytes(false));
  return 0;
}
