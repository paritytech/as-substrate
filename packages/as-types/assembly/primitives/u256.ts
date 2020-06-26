/// <reference path="../../../../node_modules/assemblyscript/std/assembly/index.d.ts" />

/**
 * @name u256
 * @description
 * An alias for for the u256 class in `as-bignum`.
 * For implementation details visit:
 * https://github.com/MaxGraey/as-bignum/blob/master/assembly/integer/u256.ts
 * 
 * Additional methods needed for de- and encoding according to the SCALE codec may be added here.
 */

import { u256 } from "as-bignum";
export class scaleU256 extends u256 {};