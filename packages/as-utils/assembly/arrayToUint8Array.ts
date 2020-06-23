/// <reference path="../../../../node_modules/assemblyscript/std/assembly/index.d.ts" />

// Copied from https://github.com/MaxGraey/as-bignum/blob/master/assembly/__tests__/utils.ts
export function arrayToUint8Array(arr: u8[]): Uint8Array {
  let len = arr.length;
  let res = new Uint8Array(len);
  memory.copy(res.dataStart, arr.dataStart, len);
  return res;
}