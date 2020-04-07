/// <reference path="../../../../node_modules/assemblyscript/std/assembly/index.d.ts" />

import {
  ext_hash_blake2_128,
  ext_hash_blake2_256,
  ext_hash_keccak_256,
  ext_hash_sha2_256,
} from "../env";


/**
 * Set of functions to interact directly with the contract storage
 * or the temporary scratchBuffer.
 */

export namespace crypto {
  /**
   * @name blake2b128
   * @description
   * Computes the BLAKE2 128-bit hash on the given input buffer.
   */

  export function blake2b128(value: Uint8Array): Uint8Array {
    const sha256 = new Uint8Array(32);
    ext_hash_blake2_128(value.dataStart, value.length, sha256.dataStart)
    return sha256;
  }

    /**
   * @name blake2b256
   * @description
   * Computes the BLAKE2 256-bit hash on the given input buffer.
   */

  export function blake2b256(value: Uint8Array): Uint8Array {
    const sha256 = new Uint8Array(32);
    ext_hash_blake2_256(value.dataStart, value.length, sha256.dataStart)
    return sha256;
  }

    /**
   * @name keccack256
   * @description
   * Computes the KECCAK 256-bit hash on the given input buffer.
   */

  export function keccack256(value: Uint8Array): Uint8Array {
    const sha256 = new Uint8Array(32);
    ext_hash_keccak_256(value.dataStart, value.length, sha256.dataStart)
    return sha256;
  }

    /**
   * @name sha256
   * @description
   * Computes the SHA2 256-bit hash on the given input buffer.
   */

  export function sha256(value: Uint8Array): Uint8Array {
    const sha256 = new Uint8Array(32);
    ext_hash_sha2_256(value.dataStart, value.length, sha256.dataStart)
    return sha256;
  }
}
