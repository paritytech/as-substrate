/// <reference path="../../../../node_modules/assemblyscript/std/assembly/index.d.ts" />

import { toBytes } from '@substrate/as-utils';
import { crypto } from './crypto';
import { storage } from './storage';

export function getBalanceOrZero(accountId: Uint8Array): Uint8Array {
  const balance = storage.get(accountId);
  return(balance.length === 16 ? balance : toBytes(0));
}

export function mergeToSha256(account1: Uint8Array, account2: Uint8Array): Uint8Array {
  const storageKey = new Uint8Array(account1.length + account2.length);
  storageKey.set(account1);
  storageKey.set(account2, account1.length);

  return(crypto.sha256(storageKey));
}
