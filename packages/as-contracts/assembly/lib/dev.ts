/// <reference path="../../../../node_modules/assemblyscript/std/assembly/index.d.ts" />

import {
  ext_println
} from "../env";

export namespace dev {
  export function printLine(value: string): void {
    const string = String.UTF8.encode(value);
    const stringArray = Uint8Array.wrap(string);
    ext_println(stringArray.dataStart as i32, string.byteLength);
  }
} 