/// <reference path="../../../../node_modules/assemblyscript/std/assembly/index.d.ts" />

/**
 * @name Raw
 * @description
 * A basic wrapper around Uint8Array, with no frills and no fuss. It does differ
 * from other implementations where it will consume the full Uint8Array as passed to it.
 * As such it is meant to be subclassed where the wrapper takes care of the
 * actual lengths instead of used directly.
 */

export class Raw {}