/// <reference path="../../../../node_modules/assemblyscript/std/assembly/index.d.ts" />

/**
 * @name Struct
 * @description
 * Decode input to pass into constructor.
 *
 * @param Types - Types definition.
 * @param value - Value to decode, one of:
 * - null
 * - undefined
 * - hex
 * - Uint8Array
 * - object with `{ key1: value1, key2: value2 }`, assuming `key1` and `key2`
 * are also keys in `Types`
 * - array with `[value1, value2]` assuming the array has the same length as
 * `Object.keys(Types)`
 * @param jsonMap
 */

export class Struct {}