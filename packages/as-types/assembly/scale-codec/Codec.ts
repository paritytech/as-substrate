/// <reference path="../../../../node_modules/assemblyscript/std/assembly/index.d.ts" />

/**
 * @name Codec
 * @description
 * The base Codec namespace. All types extend the class provided here. Additionally
 * implementors can add their own specific methods and helpers with getters and functions.
 * The Codec Base is however required for operating as an encoding/decoding layer
 */

export declare namespace Codec {
  function toU8a(): Uint8Array;
}