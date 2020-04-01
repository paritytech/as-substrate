/// <reference path="../../../../node_modules/assemblyscript/std/assembly/index.d.ts" />

import {
  ext_hash_sha2_256,
} from "../env";


/**
 * Set of functions to interact directly with the contract storage
 * or the temporary scratchBuffer.
 */

export namespace crypto {
  /**
   * @name hashSha256
   * @description
   * @TODO.
   */

  export function hashSha256(value: Uint8Array): Uint8Array {
    const sha256 = new Uint8Array(32);
    ext_hash_sha2_256(value.dataStart, value.length, sha256.dataStart)
    return sha256;
  }
}
