/// <reference path="../../../node_modules/assemblyscript/std/assembly/index.d.ts" />

// Declaration of imported host functions from substrate pallet-seal
//
// If these functions are not used by the AssemblyScript module, they will not be included
// in the compiled wasm files.
//
// For reference, see https://github.com/paritytech/substrate/blob/master/frame/contracts/src/wasm/runtime.rs

// Stores the address of the current contract into the scratch buffer.
export declare function ext_address(): void;

// Stores the balance of the current account into the scratch buffer.
export declare function ext_balance(): void;

// Stores the current block number of the current contract into the scratch buffer.
export declare function ext_block_number(): void;

// Make a call to another contract.
export declare function ext_call(
  callee_ptr: i32,
  callee_len: i32,
  gas: u64,
  value_ptr: i32,
  value_len: i32,
  input_data_ptr: i32,
  input_data_len: i32
): i32;

// Stores the address of the caller into the scratch buffer.
export declare function ext_caller(): void;

// Clear the value at the given key in the contract storage.
export declare function ext_clear_storage(key_ptr: i32): void;

// Deposit a contract event with the data buffer and optional list of topics. There is a limit
// on the maximum number of topics specified by `max_event_topics`.
export declare function ext_deposit_event(
  topics_ptr: i32,
  topics_len: i32,
  data_ptr: i32,
  data_len: i32
): void;

// Stores the amount of gas left into the scratch buffer.
export declare function ext_gas_left(): void;

// Stores the gas price for the current transaction into the scratch buffer.
export declare function ext_gas_price(gas: u64,): void;

// Retrieve the value under the given key from the storage or return 0.
export declare function ext_get_storage(
  key_ptr: i32
): i32;

// Computes the BLAKE2 128-bit hash on the given input buffer.
export declare function ext_hash_blake2_128(
  input_ptr: i32,
  input_len: i32,
  output_ptr: i32)
: void;

// Computes the BLAKE2 256-bit hash on the given input buffer.
export declare function ext_hash_blake2_256(
  input_ptr: i32,
  input_len: i32,
  output_ptr: i32)
: void;

// Computes the KECCAK 256-bit hash on the given input buffer.
export declare function ext_hash_keccak_256(
  input_ptr: i32,
  input_len: i32,
  output_ptr: i32)
: void;

// Computes the SHA2 256-bit hash on the given input buffer.
export declare function ext_hash_sha2_256(
  input_ptr: i32,
  input_len: i32,
  output_ptr: i32)
: void;

// Instantiate a contract with the specified code hash.
export declare function ext_instantiate(
  code_hash_ptr: i32,
  code_hash_len: i32,
  gas: u64,
  value_ptr: i32,
  value_len: i32,
  input_data_ptr: i32,
  input_data_len: i32
): i32;

// Stores the minimum balance (a.k.a. existential deposit) into the scratch buffer.
export declare function ext_minimum_balance(): void;

// Load the latest block timestamp into the scratch buffer
export declare function ext_now(): void;


export declare function ext_println(
  str_ptr: i32,
  str_len: i32
): void;

// Stores the random number for the current block for the given subject into the scratch buffer.
export declare function ext_random(): void;

// Stores the rent allowance into the scratch buffer.
export declare function ext_rent_allowance(): void;

// Record a request to restore the caller contract to the specified contract.
export declare function ext_restore_to(
  dest_ptr: i32,
  dest_len: i32,
  code_hash_ptr: i32,
  code_hash_len: i32,
  rent_allowance_ptr: i32,
  rent_allowance_len: i32,
  delta_ptr: i32,
  delta_count: i32
): void;

// Save a data buffer as a result of the execution, terminate the execution and return a
// successful result to the caller.
export declare function ext_return(
  data_ptr: i32,
  data_len: i32
): void;

// Copy data from the scratch buffer starting from `offset` with length `len` into the contract
// memory. The region at which the data should be put is specified by `dest_ptr`.
export declare function ext_scratch_read(
  dest_ptr: i32,
  offset: i32,
  len: i32
): void;

// Returns the size of the scratch buffer.
export declare function ext_scratch_size(): i32;

// Copy data from contract memory starting from `src_ptr` with length `len` into the scratch
// buffer. This overwrites the entire scratch buffer and resizes to `len`. Specifying a `len`
// of zero clears the scratch buffer.
export declare function ext_scratch_write(
  src_ptr: i32,
  len: i32
): void;

// Set rent allowance of the contract
export declare function ext_set_rent_allowance(
  value_ptr: i32,
  value_len: i32
): void;

// Change the value at the given key in the storage or remove the entry.
export declare function ext_set_storage(
  key_ptr: i32,
  value_ptr: i32,
  value_len: i32
): void;

// Stores the value transferred along with this call or as endowment into the scratch buffer.
export declare function ext_value_transferred(): void;