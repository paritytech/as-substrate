/// <reference path="../../../../node_modules/assemblyscript/std/assembly/index.d.ts" />

import {
  ext_clear_storage,
  ext_get_storage,
  ext_scratch_read,
  ext_scratch_size,
  ext_scratch_write,
  ext_set_storage
} from "../env";


/**
 * Set of functions to interact directly with the contract storage
 * or the temporary scratchBuffer.
 */

export namespace storage{
  export enum StorageResult {
    Value,
    None
  }

  /**
   * @name set
   * @description
   * Changes the value at the given key in the storage or remove the entry.
   */
  export function set(key: Uint8Array, value: Uint8Array | null): void {
    if(key.length === 32) {
      const pointer = value ? value!.dataStart : 0;
      const length = value ? value.length : 0;
    
      ext_set_storage(key.dataStart, pointer, length);
    }
  }

  /**
   * @name get
   * @description
   * Retrieves the value under the given key from the storage or return 0.
   */
  export function get(key: Uint8Array): Uint8Array {
     // @TODO check for key.length 32 
    const result = ext_get_storage(key.dataStart);
    let value = new Uint8Array(0);

    if (result === StorageResult.Value) {
      const size = ext_scratch_size();
      if (size > 0) {
        value = new Uint8Array(size);
        ext_scratch_read(value.dataStart, 0, size);
      }
    }
    return value;
  }

  /**
   * @name getScratchBuffer
   * @description
   * Copies data from the scratch buffer into the contracts memory.
   */
  export function getScratchBuffer(): Uint8Array {
    let value = new Uint8Array(0);
    const size: i32 = ext_scratch_size();
  
    if (size > 0) {
      value = new Uint8Array(size);
      ext_scratch_read(value.dataStart, 0, size);
    }
    return value;
  }

  /**
   * @name setScratchBuffer
   * @description
   *  Copies data from contract memory into the scratch buffer. This overwrites the 
   *  entire scratch buffer and resizes to `data.length`. Specifying a `data.length`
   *  of zero clears the scratch buffer.
   */
  export function setScratchBuffer(data: Uint8Array): void {
    ext_scratch_write(data.dataStart, data.length);
  }

  export function clear(key: Uint8Array): void {
    ext_clear_storage(key.dataStart);
  }
}
