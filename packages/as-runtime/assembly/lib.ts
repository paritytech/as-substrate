/// <reference path="../../../node_modules/assemblyscript/std/assembly/index.d.ts" />


export namespace storage {
  export function setStorage(key: Uint8Array, value: Uint8Array): void {
    if(key.length === 32) {
      const pointer = value ? value!.dataStart : 0;
      const length = value ? value.length : 0;
    
      ext_set_storage(key.dataStart, pointer, length);
    }
  }
  export function clearStorage(key: Uint8Array): void {
    if(key.length === 32) {
      ext_clear_storage(key.dataStart, pointer, length);
    }
  }
}