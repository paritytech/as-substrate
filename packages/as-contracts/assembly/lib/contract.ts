/// <reference path="../../../../node_modules/assemblyscript/std/assembly/index.d.ts" />
/// <reference path="../../../../node_modules/@substrate/as-utils/build/index.d.ts" />

import { u128 } from "as-bignum";
import { toBytes } from '@substrate/as-utils';

// // Implementation missing for:

// import {
//   ext_call,
//   ext_deposit_event,
//   ext_instantiate,
//   ext_restore_to,
//   ext_return
// } from "../env";

import {
  ext_address,
  ext_balance,
  ext_block_number,
  ext_caller,
  ext_gas_left,
  ext_gas_price,
  ext_minimum_balance,
  ext_now,
  ext_random,
  ext_rent_allowance,
  ext_set_rent_allowance,
  ext_value_transferred
} from "../env";

import { storage } from './storage';


export namespace contract {
  /**
   * @name getAddress
   * @description
   * Returns the address of the current contract.
   */
  export function getAddress(): Uint8Array {
    ext_address();
    return storage.getScratchBuffer();
  }

  /**
   * @name getBalance
   * @description
   * Returns the balance of the current account.
   */
  export function getBalance(): Uint8Array {
    ext_balance();
    return storage.getScratchBuffer();
  }

  /**
   * @name getBlockNumber
   * @description
   * Returns he current block number of the current contract.
   */
  export function getBlockNumber(): Uint8Array {
    ext_block_number();
    return storage.getScratchBuffer();
  }
  
  /**
   * @name getCaller
   * @description
   * Returns the address of the caller.
   */
  export function getCaller(): Uint8Array {
    ext_caller();
    return storage.getScratchBuffer();
  }

  /**
   * @name getGasLeft
   * @description
   * Returns the amount of gas left.
   */
  export function getGasLeft(): Uint8Array {
    ext_gas_left();
    return storage.getScratchBuffer();
  }

  /**
   * @name getGasPrice
   * @description
   * Returns the gas price for the current transaction.
   */
  export function getGasPrice(gas: u64): Uint8Array {
    ext_gas_price(gas);
    return storage.getScratchBuffer();
  }

  /**
   * @name getValueTransferred
   * @description
   * Returns the balance of the current account.
   */ 
  export function getValueTransferred(): Uint8Array {
    ext_value_transferred();
    return storage.getScratchBuffer();
  }

  /**
   * @name setRentAllowance
   * @description
   * Sets the rent allowance of the contract.
   */ 
  export function setRentAllowance(value: u128): void {
    const valueBuffer = value.toUint8Array();
    ext_set_rent_allowance(valueBuffer.dataStart as i32, valueBuffer.length);
  }
}