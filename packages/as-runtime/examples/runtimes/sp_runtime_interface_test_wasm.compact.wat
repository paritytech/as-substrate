(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32) (result i64)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i64 i64)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32)))
  (type (;7;) (func (param i64)))
  (type (;8;) (func (param i64) (result i64)))
  (type (;9;) (func (param i64 i64)))
  (type (;10;) (func (param i32 i32 i32)))
  (type (;11;) (func (param i64) (result i32)))
  (type (;12;) (func (result i64)))
  (type (;13;) (func))
  (type (;14;) (func (param i32 i32)))
  (type (;15;) (func (param i32 i32 i32 i32 i32)))
  (type (;16;) (func (param i64 i32) (result i32)))
  (type (;17;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;18;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;19;) (func (param i32 i32 i32 i32)))
  (type (;20;) (func (param i64 i64 i32 i32) (result i32)))
  (type (;21;) (func (param i32 i32) (result i64)))
  (type (;22;) (func (param i32 i64 i64 i32)))
  (type (;23;) (func (param i32 i64 i64 i64 i64)))
  (type (;24;) (func (param i32 i64 i64 i64 i64 i32)))
  (import "env" "memory" (memory (;0;) 17))
  (import "env" "ext_logging_log_version_1" (func $ext_logging_log_version_1 (type 4)))
  (import "env" "ext_allocator_malloc_version_1" (func $ext_allocator_malloc_version_1 (type 5)))
  (import "env" "ext_allocator_free_version_1" (func $ext_allocator_free_version_1 (type 6)))
  (import "env" "ext_misc_print_utf8_version_1" (func $ext_misc_print_utf8_version_1 (type 7)))
  (import "env" "ext_test_api_return_input_version_1" (func $ext_test_api_return_input_version_1 (type 8)))
  (import "env" "ext_test_api_set_storage_version_1" (func $ext_test_api_set_storage_version_1 (type 9)))
  (import "env" "ext_test_api_return_value_into_mutable_reference_version_1" (func $ext_test_api_return_value_into_mutable_reference_version_1 (type 7)))
  (import "env" "ext_test_api_get_and_return_array_version_1" (func $ext_test_api_get_and_return_array_version_1 (type 5)))
  (import "env" "ext_test_api_array_as_mutable_reference_version_1" (func $ext_test_api_array_as_mutable_reference_version_1 (type 6)))
  (import "env" "ext_test_api_return_input_public_key_version_1" (func $ext_test_api_return_input_public_key_version_1 (type 5)))
  (import "env" "ext_test_api_invalid_utf8_data_version_1" (func $ext_test_api_invalid_utf8_data_version_1 (type 7)))
  (import "env" "ext_test_api_get_and_return_u128_version_1" (func $ext_test_api_get_and_return_u128_version_1 (type 5)))
  (import "env" "ext_test_api_get_and_return_i128_version_1" (func $ext_test_api_get_and_return_i128_version_1 (type 5)))
  (import "env" "ext_blake2_256" (func $ext_blake2_256 (type 10)))
  (import "env" "ext_hashing_blake2_256_version_1" (func $ext_hashing_blake2_256_version_1 (type 11)))
  (import "env" "ext_test_api_return_16kb_version_1" (func $ext_test_api_return_16kb_version_1 (type 12)))
  (import "env" "ext_test_api_return_option_input_version_1" (func $ext_test_api_return_option_input_version_1 (type 8)))
  (import "env" "ext_test_api_overwrite_native_function_implementation_version_1" (func $ext_test_api_overwrite_native_function_implementation_version_1 (type 3)))
  (func $__rust_alloc (type 5) (param i32) (result i32)
    local.get 0
    call $__rg_alloc)
  (func $__rg_alloc (type 5) (param i32) (result i32)
    local.get 0
    call $ext_allocator_malloc_version_1)
  (func $__rust_dealloc (type 6) (param i32)
    local.get 0
    call $__rg_dealloc)
  (func $__rg_dealloc (type 6) (param i32)
    local.get 0
    call $ext_allocator_free_version_1)
  (func $__rust_realloc (type 0) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $__rg_realloc)
  (func $__rg_realloc (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      call $ext_allocator_malloc_version_1
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      local.get 2
      local.get 1
      local.get 1
      local.get 2
      i32.gt_u
      select
      call $memcpy
      drop
      local.get 0
      call $ext_allocator_free_version_1
    end
    local.get 3)
  (func $__rust_alloc_zeroed (type 5) (param i32) (result i32)
    local.get 0
    call $__rg_alloc_zeroed)
  (func $__rg_alloc_zeroed (type 5) (param i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      call $ext_allocator_malloc_version_1
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 0
      local.get 0
      call $memset
      drop
    end
    local.get 1)
  (func $alloc::alloc::handle_alloc_error::h95468c66a83efacf (type 13)
    call $rust_oom
    unreachable)
  (func $rust_oom (type 13)
    i32.const 0
    i32.const 1053004
    i64.extend_i32_u
    i64.const 30064771072
    i64.or
    i32.const 1053011
    i64.extend_i32_u
    i64.const 146028888064
    i64.or
    call $ext_logging_log_version_1
    unreachable
    unreachable)
  (func $alloc::raw_vec::RawVec<T_A>::allocate_in::__closure__::h5508a6ea1d2d4629 (type 13)
    call $alloc::raw_vec::capacity_overflow::h6059d871cf90f853
    unreachable)
  (func $alloc::raw_vec::capacity_overflow::h6059d871cf90f853 (type 13)
    i32.const 1048576
    i32.const 17
    i32.const 1048596
    call $core::panicking::panic::hc1d1fa8a09aabda8
    unreachable)
  (func $core::panicking::panic::hc1d1fa8a09aabda8 (type 10) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i32.const 1053048
    i32.store offset=16
    local.get 3
    i64.const 1
    i64.store offset=4 align=4
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 24
    i32.add
    i32.store
    local.get 3
    local.get 2
    call $core::panicking::panic_fmt::h9d777aa95a13e1cc
    unreachable)
  (func $alloc::fmt::format::hf245d0da62559baa (type 14) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 4
        i32.const 3
        i32.shl
        local.tee 5
        br_if 0 (;@2;)
        i32.const 0
        local.set 6
        br 1 (;@1;)
      end
      local.get 3
      i32.const 4
      i32.add
      local.set 7
      i32.const 0
      local.set 6
      loop  ;; label = @2
        local.get 7
        i32.load
        local.get 6
        i32.add
        local.set 6
        local.get 7
        i32.const 8
        i32.add
        local.set 7
        local.get 5
        i32.const -8
        i32.add
        local.tee 5
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 20
                i32.add
                i32.load
                br_if 0 (;@6;)
                local.get 6
                local.set 7
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 4
                br_if 0 (;@6;)
                i32.const 1048636
                i32.const 0
                i32.const 0
                call $core::panicking::panic_bounds_check::hfeb7958506a46822
                unreachable
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 6
                  i32.const 15
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 4
                  i32.add
                  i32.load
                  i32.eqz
                  br_if 1 (;@6;)
                end
                local.get 6
                local.get 6
                i32.add
                local.tee 7
                local.get 6
                i32.ge_u
                br_if 1 (;@5;)
              end
              i32.const 1
              local.set 5
              i32.const 0
              local.set 7
              local.get 2
              i32.const 8
              i32.add
              local.set 6
              br 1 (;@4;)
            end
            local.get 7
            i32.const -1
            i32.le_s
            br_if 1 (;@3;)
            local.get 2
            i32.const 8
            i32.add
            local.set 6
            block  ;; label = @5
              local.get 7
              br_if 0 (;@5;)
              i32.const 1
              local.set 5
              i32.const 0
              local.set 7
              br 1 (;@4;)
            end
            local.get 7
            call $__rust_alloc
            local.tee 5
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 2
          i32.const 0
          i32.store offset=16
          local.get 2
          local.get 7
          i32.store offset=12
          local.get 2
          local.get 5
          i32.store offset=8
          local.get 2
          local.get 2
          i32.const 8
          i32.add
          i32.store offset=20
          local.get 2
          i32.const 24
          i32.add
          i32.const 16
          i32.add
          local.get 1
          i32.const 16
          i32.add
          i64.load align=4
          i64.store
          local.get 2
          i32.const 24
          i32.add
          i32.const 8
          i32.add
          local.get 1
          i32.const 8
          i32.add
          i64.load align=4
          i64.store
          local.get 2
          local.get 1
          i64.load align=4
          i64.store offset=24
          local.get 2
          i32.const 20
          i32.add
          i32.const 1048652
          local.get 2
          i32.const 24
          i32.add
          call $core::fmt::write::h755ea4d0970e9999
          br_if 2 (;@1;)
          local.get 0
          local.get 6
          i64.load align=4
          i64.store align=4
          local.get 0
          i32.const 8
          i32.add
          local.get 6
          i32.const 8
          i32.add
          i32.load
          i32.store
          local.get 2
          i32.const 48
          i32.add
          global.set 0
          return
        end
        call $alloc::raw_vec::RawVec<T_A>::allocate_in::__closure__::h5508a6ea1d2d4629
        unreachable
      end
      call $alloc::alloc::handle_alloc_error::h95468c66a83efacf
      unreachable
    end
    i32.const 1048676
    i32.const 51
    local.get 2
    i32.const 24
    i32.add
    i32.const 1048728
    i32.const 1048744
    call $core::option::expect_none_failed::h7674c343b6d036bd
    unreachable)
  (func $core::panicking::panic_bounds_check::hfeb7958506a46822 (type 10) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 2
    i32.store offset=4
    local.get 3
    local.get 1
    i32.store
    local.get 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 44
    i32.add
    i32.const 1
    i32.store
    local.get 3
    i64.const 2
    i64.store offset=12 align=4
    local.get 3
    i32.const 1048852
    i32.store offset=8
    local.get 3
    i32.const 1
    i32.store offset=36
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 3
    local.get 3
    i32.store offset=40
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=32
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    call $core::panicking::panic_fmt::h9d777aa95a13e1cc
    unreachable)
  (func $core::fmt::write::h755ea4d0970e9999 (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 36
    i32.add
    local.get 1
    i32.store
    local.get 3
    i32.const 3
    i32.store8 offset=40
    local.get 3
    i64.const 137438953472
    i64.store offset=8
    local.get 3
    local.get 0
    i32.store offset=32
    i32.const 0
    local.set 4
    local.get 3
    i32.const 0
    i32.store offset=24
    local.get 3
    i32.const 0
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load offset=8
            local.tee 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.load
            local.set 6
            local.get 2
            i32.load offset=4
            local.tee 7
            local.get 2
            i32.const 12
            i32.add
            i32.load
            local.tee 8
            local.get 8
            local.get 7
            i32.gt_u
            select
            local.tee 9
            i32.eqz
            br_if 1 (;@3;)
            local.get 2
            i32.const 20
            i32.add
            i32.load
            local.set 10
            local.get 2
            i32.load offset=16
            local.set 11
            i32.const 1
            local.set 8
            local.get 0
            local.get 6
            i32.load
            local.get 6
            i32.load offset=4
            local.get 1
            i32.load offset=12
            call_indirect (type 0)
            br_if 3 (;@1;)
            local.get 5
            i32.const 16
            i32.add
            local.set 2
            local.get 6
            i32.const 8
            i32.add
            local.set 0
            i32.const 1
            local.set 4
            block  ;; label = @5
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 3
                  local.get 2
                  i32.const -12
                  i32.add
                  i32.load
                  i32.store offset=12
                  local.get 3
                  local.get 2
                  i32.const 12
                  i32.add
                  i32.load8_u
                  i32.store8 offset=40
                  local.get 3
                  local.get 2
                  i32.const -8
                  i32.add
                  i32.load
                  i32.store offset=8
                  local.get 2
                  i32.const 8
                  i32.add
                  i32.load
                  local.set 8
                  i32.const 0
                  local.set 5
                  i32.const 0
                  local.set 1
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 2
                        i32.const 4
                        i32.add
                        i32.load
                        br_table 1 (;@9;) 0 (;@10;) 2 (;@8;) 1 (;@9;)
                      end
                      local.get 8
                      local.get 10
                      i32.ge_u
                      br_if 3 (;@6;)
                      local.get 8
                      i32.const 3
                      i32.shl
                      local.set 12
                      i32.const 0
                      local.set 1
                      local.get 11
                      local.get 12
                      i32.add
                      local.tee 12
                      i32.load offset=4
                      i32.const 2
                      i32.ne
                      br_if 1 (;@8;)
                      local.get 12
                      i32.load
                      i32.load
                      local.set 8
                    end
                    i32.const 1
                    local.set 1
                  end
                  local.get 3
                  local.get 8
                  i32.store offset=20
                  local.get 3
                  local.get 1
                  i32.store offset=16
                  local.get 2
                  i32.load
                  local.set 8
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 2
                        i32.const -4
                        i32.add
                        i32.load
                        br_table 1 (;@9;) 0 (;@10;) 2 (;@8;) 1 (;@9;)
                      end
                      local.get 8
                      local.get 10
                      i32.ge_u
                      br_if 4 (;@5;)
                      local.get 8
                      i32.const 3
                      i32.shl
                      local.set 1
                      local.get 11
                      local.get 1
                      i32.add
                      local.tee 1
                      i32.load offset=4
                      i32.const 2
                      i32.ne
                      br_if 1 (;@8;)
                      local.get 1
                      i32.load
                      i32.load
                      local.set 8
                    end
                    i32.const 1
                    local.set 5
                  end
                  local.get 3
                  local.get 8
                  i32.store offset=28
                  local.get 3
                  local.get 5
                  i32.store offset=24
                  block  ;; label = @8
                    local.get 2
                    i32.const -16
                    i32.add
                    i32.load
                    local.tee 8
                    local.get 10
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 11
                    local.get 8
                    i32.const 3
                    i32.shl
                    i32.add
                    local.tee 8
                    i32.load
                    local.get 3
                    i32.const 8
                    i32.add
                    local.get 8
                    i32.load offset=4
                    call_indirect (type 1)
                    br_if 6 (;@2;)
                    local.get 4
                    local.get 9
                    i32.ge_u
                    br_if 5 (;@3;)
                    local.get 0
                    i32.const 4
                    i32.add
                    local.set 1
                    local.get 0
                    i32.load
                    local.set 5
                    local.get 2
                    i32.const 32
                    i32.add
                    local.set 2
                    local.get 0
                    i32.const 8
                    i32.add
                    local.set 0
                    i32.const 1
                    local.set 8
                    local.get 4
                    i32.const 1
                    i32.add
                    local.set 4
                    local.get 3
                    i32.load offset=32
                    local.get 5
                    local.get 1
                    i32.load
                    local.get 3
                    i32.load offset=36
                    i32.load offset=12
                    call_indirect (type 0)
                    i32.eqz
                    br_if 1 (;@7;)
                    br 7 (;@1;)
                  end
                end
                i32.const 1049576
                local.get 8
                local.get 10
                call $core::panicking::panic_bounds_check::hfeb7958506a46822
                unreachable
              end
              i32.const 1049560
              local.get 8
              local.get 10
              call $core::panicking::panic_bounds_check::hfeb7958506a46822
              unreachable
            end
            i32.const 1049560
            local.get 8
            local.get 10
            call $core::panicking::panic_bounds_check::hfeb7958506a46822
            unreachable
          end
          local.get 2
          i32.load
          local.set 6
          local.get 2
          i32.load offset=4
          local.tee 7
          local.get 2
          i32.const 20
          i32.add
          i32.load
          local.tee 8
          local.get 8
          local.get 7
          i32.gt_u
          select
          local.tee 10
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=16
          local.set 2
          i32.const 1
          local.set 8
          local.get 0
          local.get 6
          i32.load
          local.get 6
          i32.load offset=4
          local.get 1
          i32.load offset=12
          call_indirect (type 0)
          br_if 2 (;@1;)
          local.get 6
          i32.const 8
          i32.add
          local.set 0
          i32.const 1
          local.set 4
          loop  ;; label = @4
            local.get 2
            i32.load
            local.get 3
            i32.const 8
            i32.add
            local.get 2
            i32.const 4
            i32.add
            i32.load
            call_indirect (type 1)
            br_if 2 (;@2;)
            local.get 4
            local.get 10
            i32.ge_u
            br_if 1 (;@3;)
            local.get 0
            i32.const 4
            i32.add
            local.set 1
            local.get 0
            i32.load
            local.set 5
            local.get 2
            i32.const 8
            i32.add
            local.set 2
            local.get 0
            i32.const 8
            i32.add
            local.set 0
            i32.const 1
            local.set 8
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            local.get 3
            i32.load offset=32
            local.get 5
            local.get 1
            i32.load
            local.get 3
            i32.load offset=36
            i32.load offset=12
            call_indirect (type 0)
            i32.eqz
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        block  ;; label = @3
          local.get 7
          local.get 4
          i32.le_u
          br_if 0 (;@3;)
          i32.const 1
          local.set 8
          local.get 3
          i32.load offset=32
          local.get 6
          local.get 4
          i32.const 3
          i32.shl
          i32.add
          local.tee 2
          i32.load
          local.get 2
          i32.load offset=4
          local.get 3
          i32.load offset=36
          i32.load offset=12
          call_indirect (type 0)
          br_if 2 (;@1;)
        end
        i32.const 0
        local.set 8
        br 1 (;@1;)
      end
      i32.const 1
      local.set 8
    end
    local.get 3
    i32.const 48
    i32.add
    global.set 0
    local.get 8)
  (func $core::option::expect_none_failed::h7674c343b6d036bd (type 15) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 1
    i32.store offset=12
    local.get 5
    local.get 0
    i32.store offset=8
    local.get 5
    local.get 3
    i32.store offset=20
    local.get 5
    local.get 2
    i32.store offset=16
    local.get 5
    i32.const 44
    i32.add
    i32.const 2
    i32.store
    local.get 5
    i32.const 60
    i32.add
    i32.const 3
    i32.store
    local.get 5
    i64.const 2
    i64.store offset=28 align=4
    local.get 5
    i32.const 1052848
    i32.store offset=24
    local.get 5
    i32.const 4
    i32.store offset=52
    local.get 5
    local.get 5
    i32.const 48
    i32.add
    i32.store offset=40
    local.get 5
    local.get 5
    i32.const 16
    i32.add
    i32.store offset=56
    local.get 5
    local.get 5
    i32.const 8
    i32.add
    i32.store offset=48
    local.get 5
    i32.const 24
    i32.add
    local.get 4
    call $core::panicking::panic_fmt::h9d777aa95a13e1cc
    unreachable)
  (func $<&mut_W_as_core::fmt::Write>::write_str::hfabb95587de39d08 (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load
            local.tee 0
            i32.const 4
            i32.add
            i32.load
            local.tee 3
            local.get 0
            i32.const 8
            i32.add
            i32.load
            local.tee 4
            i32.sub
            local.get 2
            i32.lt_u
            br_if 0 (;@4;)
            local.get 0
            i32.load
            local.set 3
            br 1 (;@3;)
          end
          local.get 4
          local.get 2
          i32.add
          local.tee 5
          local.get 4
          i32.lt_u
          br_if 2 (;@1;)
          local.get 3
          i32.const 1
          i32.shl
          local.tee 4
          local.get 5
          local.get 4
          local.get 5
          i32.gt_u
          select
          local.tee 4
          i32.const 0
          i32.lt_s
          br_if 2 (;@1;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              br_if 0 (;@5;)
              local.get 4
              call $__rust_alloc
              local.set 3
              br 1 (;@4;)
            end
            local.get 0
            i32.load
            local.get 3
            local.get 4
            call $__rust_realloc
            local.set 3
          end
          local.get 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          local.get 3
          i32.store
          local.get 0
          i32.const 4
          i32.add
          local.get 4
          i32.store
          local.get 0
          i32.const 8
          i32.add
          i32.load
          local.set 4
        end
        local.get 0
        i32.const 8
        i32.add
        local.get 4
        local.get 2
        i32.add
        i32.store
        local.get 3
        local.get 4
        i32.add
        local.get 1
        local.get 2
        call $memcpy
        drop
        i32.const 0
        return
      end
      call $alloc::alloc::handle_alloc_error::h95468c66a83efacf
      unreachable
    end
    call $alloc::raw_vec::capacity_overflow::h6059d871cf90f853
    unreachable)
  (func $<&mut_W_as_core::fmt::Write>::write_char::hcec48694facba40a (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 128
                i32.lt_u
                br_if 0 (;@6;)
                local.get 2
                i32.const 0
                i32.store offset=12
                local.get 1
                i32.const 2048
                i32.lt_u
                br_if 1 (;@5;)
                local.get 2
                i32.const 12
                i32.add
                local.set 3
                block  ;; label = @7
                  local.get 1
                  i32.const 65536
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 1
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=14
                  local.get 2
                  local.get 1
                  i32.const 6
                  i32.shr_u
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=13
                  local.get 2
                  local.get 1
                  i32.const 12
                  i32.shr_u
                  i32.const 15
                  i32.and
                  i32.const 224
                  i32.or
                  i32.store8 offset=12
                  i32.const 3
                  local.set 1
                  br 3 (;@4;)
                end
                local.get 2
                local.get 1
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=15
                local.get 2
                local.get 1
                i32.const 18
                i32.shr_u
                i32.const 240
                i32.or
                i32.store8 offset=12
                local.get 2
                local.get 1
                i32.const 6
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=14
                local.get 2
                local.get 1
                i32.const 12
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=13
                i32.const 4
                local.set 1
                br 2 (;@4;)
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load offset=8
                  local.tee 4
                  local.get 0
                  i32.const 4
                  i32.add
                  i32.load
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load
                  local.set 5
                  br 1 (;@6;)
                end
                local.get 4
                i32.const 1
                i32.add
                local.tee 5
                local.get 4
                i32.lt_u
                br_if 5 (;@1;)
                local.get 4
                i32.const 1
                i32.shl
                local.tee 3
                local.get 5
                local.get 3
                local.get 5
                i32.gt_u
                select
                local.tee 3
                i32.const 0
                i32.lt_s
                br_if 5 (;@1;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 4
                    br_if 0 (;@8;)
                    local.get 3
                    call $__rust_alloc
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 0
                  i32.load
                  local.get 4
                  local.get 3
                  call $__rust_realloc
                  local.set 5
                end
                local.get 5
                i32.eqz
                br_if 4 (;@2;)
                local.get 0
                local.get 5
                i32.store
                local.get 0
                i32.const 4
                i32.add
                local.get 3
                i32.store
                local.get 0
                i32.load offset=8
                local.set 4
              end
              local.get 5
              local.get 4
              i32.add
              local.get 1
              i32.store8
              local.get 0
              local.get 0
              i32.load offset=8
              i32.const 1
              i32.add
              i32.store offset=8
              br 2 (;@3;)
            end
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 31
            i32.and
            i32.const 192
            i32.or
            i32.store8 offset=12
            local.get 2
            i32.const 12
            i32.add
            local.set 3
            i32.const 2
            local.set 1
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.tee 5
              local.get 0
              i32.const 8
              i32.add
              i32.load
              local.tee 4
              i32.sub
              local.get 1
              i32.lt_u
              br_if 0 (;@5;)
              local.get 0
              i32.load
              local.set 5
              br 1 (;@4;)
            end
            local.get 4
            local.get 1
            i32.add
            local.tee 6
            local.get 4
            i32.lt_u
            br_if 3 (;@1;)
            local.get 5
            i32.const 1
            i32.shl
            local.tee 4
            local.get 6
            local.get 4
            local.get 6
            i32.gt_u
            select
            local.tee 4
            i32.const 0
            i32.lt_s
            br_if 3 (;@1;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 5
                br_if 0 (;@6;)
                local.get 4
                call $__rust_alloc
                local.set 5
                br 1 (;@5;)
              end
              local.get 0
              i32.load
              local.get 5
              local.get 4
              call $__rust_realloc
              local.set 5
            end
            local.get 5
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            local.get 5
            i32.store
            local.get 0
            i32.const 4
            i32.add
            local.get 4
            i32.store
            local.get 0
            i32.const 8
            i32.add
            i32.load
            local.set 4
          end
          local.get 0
          i32.const 8
          i32.add
          local.get 4
          local.get 1
          i32.add
          i32.store
          local.get 5
          local.get 4
          i32.add
          local.get 3
          local.get 1
          call $memcpy
          drop
        end
        local.get 2
        i32.const 16
        i32.add
        global.set 0
        i32.const 0
        return
      end
      call $alloc::alloc::handle_alloc_error::h95468c66a83efacf
      unreachable
    end
    call $alloc::raw_vec::capacity_overflow::h6059d871cf90f853
    unreachable)
  (func $<&mut_W_as_core::fmt::Write>::write_fmt::h7d7d5955c2920077 (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1048652
    local.get 2
    i32.const 8
    i32.add
    call $core::fmt::write::h755ea4d0970e9999
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func $core::ops::function::FnOnce::call_once::ha43e5a3f94681fe4 (type 1) (param i32 i32) (result i32)
    unreachable)
  (func $core::panicking::panic_fmt::h9d777aa95a13e1cc (type 14) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 1048868
    i32.store offset=4
    local.get 2
    i32.const 1053048
    i32.store
    local.get 2
    call $rust_begin_unwind
    unreachable)
  (func $core::fmt::num::imp::<impl_core::fmt::Display_for_u32>::fmt::h7f0cf35638f3b831 (type 1) (param i32 i32) (result i32)
    local.get 0
    i64.load32_u
    local.get 1
    call $core::fmt::num::imp::fmt_u64::h8041c6249cc163db)
  (func $core::fmt::num::imp::fmt_u64::h8041c6249cc163db (type 16) (param i64 i32) (result i32)
    (local i32 i32 i64 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    i32.const 39
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.const 10000
        i64.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 4
        br 1 (;@1;)
      end
      i32.const 39
      local.set 3
      loop  ;; label = @2
        local.get 2
        i32.const 9
        i32.add
        local.get 3
        i32.add
        local.tee 5
        i32.const -4
        i32.add
        local.get 0
        local.get 0
        i64.const 10000
        i64.div_u
        local.tee 4
        i64.const -10000
        i64.mul
        i64.add
        i32.wrap_i64
        local.tee 6
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 7
        i32.const 1
        i32.shl
        i32.const 1048934
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 5
        i32.const -2
        i32.add
        local.get 7
        i32.const -100
        i32.mul
        local.get 6
        i32.add
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1048934
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 3
        i32.const -4
        i32.add
        local.set 3
        local.get 0
        i64.const 99999999
        i64.gt_u
        local.set 5
        local.get 4
        local.set 0
        local.get 5
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 4
      i32.wrap_i64
      local.tee 5
      i32.const 99
      i32.le_s
      br_if 0 (;@1;)
      local.get 2
      i32.const 9
      i32.add
      local.get 3
      i32.const -2
      i32.add
      local.tee 3
      i32.add
      local.get 4
      i32.wrap_i64
      local.tee 6
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 5
      i32.const -100
      i32.mul
      local.get 6
      i32.add
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1048934
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.const 10
        i32.lt_s
        br_if 0 (;@2;)
        local.get 2
        i32.const 9
        i32.add
        local.get 3
        i32.const -2
        i32.add
        local.tee 3
        i32.add
        local.get 5
        i32.const 1
        i32.shl
        i32.const 1048934
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      local.get 2
      i32.const 9
      i32.add
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      i32.add
      local.get 5
      i32.const 48
      i32.add
      i32.store8
    end
    local.get 1
    i32.const 1
    i32.const 1053048
    i32.const 0
    local.get 2
    i32.const 9
    i32.add
    local.get 3
    i32.add
    i32.const 39
    local.get 3
    i32.sub
    call $core::fmt::Formatter::pad_integral::h997b1c036893746a
    local.set 3
    local.get 2
    i32.const 48
    i32.add
    global.set 0
    local.get 3)
  (func $rust_begin_unwind (type 6) (param i32)
    (local i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.const 52
    i32.add
    i32.const 1
    i32.store
    local.get 1
    i64.const 1
    i64.store offset=36 align=4
    local.get 1
    i32.const 1052996
    i32.store offset=32
    local.get 1
    i32.const 5
    i32.store offset=60
    local.get 1
    local.get 1
    i32.const 56
    i32.add
    i32.store offset=48
    local.get 1
    local.get 1
    i32.const 12
    i32.add
    i32.store offset=56
    local.get 1
    i32.const 16
    i32.add
    local.get 1
    i32.const 32
    i32.add
    call $alloc::fmt::format::hf245d0da62559baa
    i32.const 1
    i32.const 1053004
    i32.const 7
    local.get 1
    i32.load offset=16
    local.get 1
    i32.load offset=24
    call $sp_io::logging::extern_host_function_impls::log::hbedd53d4c74df795
    unreachable
    unreachable)
  (func $core::ptr::drop_in_place::h01d3a07d41e67b5f (type 6) (param i32))
  (func $<T_as_core::any::Any>::type_id::hdbe3f0a3bcb32287 (type 2) (param i32) (result i64)
    i64.const 5504398914616333199)
  (func $core::fmt::Formatter::pad_integral::h997b1c036893746a (type 17) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.eqz
        br_if 0 (;@2;)
        i32.const 43
        i32.const 1114112
        local.get 0
        i32.load
        local.tee 6
        i32.const 1
        i32.and
        local.tee 1
        select
        local.set 7
        local.get 1
        local.get 5
        i32.add
        local.set 8
        br 1 (;@1;)
      end
      local.get 5
      i32.const 1
      i32.add
      local.set 8
      local.get 0
      i32.load
      local.set 6
      i32.const 45
      local.set 7
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      local.set 9
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.set 10
        local.get 2
        local.set 1
        loop  ;; label = @3
          local.get 9
          local.get 1
          i32.load8_u
          i32.const 192
          i32.and
          i32.const 128
          i32.eq
          i32.add
          local.set 9
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 10
          i32.const -1
          i32.add
          local.tee 10
          br_if 0 (;@3;)
        end
      end
      local.get 8
      local.get 3
      i32.add
      local.get 9
      i32.sub
      local.set 8
    end
    i32.const 1
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=8
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 7
        local.get 2
        local.get 3
        call $core::fmt::Formatter::pad_integral::write_prefix::hc95aa586256216f1
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=24
        local.get 4
        local.get 5
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 0)
        local.set 1
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i32.const 12
        i32.add
        i32.load
        local.tee 9
        local.get 8
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 7
        local.get 2
        local.get 3
        call $core::fmt::Formatter::pad_integral::write_prefix::hc95aa586256216f1
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=24
        local.get 4
        local.get 5
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 0)
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          i32.const 8
          i32.and
          br_if 0 (;@3;)
          i32.const 0
          local.set 1
          local.get 9
          local.get 8
          i32.sub
          local.tee 9
          local.set 8
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                i32.const 1
                local.get 0
                i32.load8_u offset=32
                local.tee 10
                local.get 10
                i32.const 3
                i32.eq
                select
                br_table 2 (;@4;) 1 (;@5;) 0 (;@6;) 1 (;@5;) 2 (;@4;)
              end
              local.get 9
              i32.const 1
              i32.shr_u
              local.set 1
              local.get 9
              i32.const 1
              i32.add
              i32.const 1
              i32.shr_u
              local.set 8
              br 1 (;@4;)
            end
            i32.const 0
            local.set 8
            local.get 9
            local.set 1
          end
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          loop  ;; label = @4
            local.get 1
            i32.const -1
            i32.add
            local.tee 1
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            i32.load offset=24
            local.get 0
            i32.load offset=4
            local.get 0
            i32.load offset=28
            i32.load offset=16
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        local.get 0
        i32.load offset=4
        local.set 6
        local.get 0
        i32.const 48
        i32.store offset=4
        local.get 0
        i32.load8_u offset=32
        local.set 11
        i32.const 1
        local.set 1
        local.get 0
        i32.const 1
        i32.store8 offset=32
        local.get 0
        local.get 7
        local.get 2
        local.get 3
        call $core::fmt::Formatter::pad_integral::write_prefix::hc95aa586256216f1
        br_if 1 (;@1;)
        i32.const 0
        local.set 1
        local.get 9
        local.get 8
        i32.sub
        local.tee 10
        local.set 3
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1
              local.get 0
              i32.load8_u offset=32
              local.tee 9
              local.get 9
              i32.const 3
              i32.eq
              select
              br_table 2 (;@3;) 1 (;@4;) 0 (;@5;) 1 (;@4;) 2 (;@3;)
            end
            local.get 10
            i32.const 1
            i32.shr_u
            local.set 1
            local.get 10
            i32.const 1
            i32.add
            i32.const 1
            i32.shr_u
            local.set 3
            br 1 (;@3;)
          end
          i32.const 0
          local.set 3
          local.get 10
          local.set 1
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i32.const -1
            i32.add
            local.tee 1
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            i32.load offset=24
            local.get 0
            i32.load offset=4
            local.get 0
            i32.load offset=28
            i32.load offset=16
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        local.get 0
        i32.load offset=4
        local.set 10
        i32.const 1
        local.set 1
        local.get 0
        i32.load offset=24
        local.get 4
        local.get 5
        local.get 0
        i32.load offset=28
        i32.load offset=12
        call_indirect (type 0)
        br_if 1 (;@1;)
        local.get 3
        i32.const 1
        i32.add
        local.set 9
        local.get 0
        i32.load offset=28
        local.set 3
        local.get 0
        i32.load offset=24
        local.set 2
        block  ;; label = @3
          loop  ;; label = @4
            local.get 9
            i32.const -1
            i32.add
            local.tee 9
            i32.eqz
            br_if 1 (;@3;)
            i32.const 1
            local.set 1
            local.get 2
            local.get 10
            local.get 3
            i32.load offset=16
            call_indirect (type 1)
            br_if 3 (;@1;)
            br 0 (;@4;)
          end
        end
        local.get 0
        local.get 11
        i32.store8 offset=32
        local.get 0
        local.get 6
        i32.store offset=4
        i32.const 0
        return
      end
      local.get 0
      i32.load offset=4
      local.set 10
      i32.const 1
      local.set 1
      local.get 0
      local.get 7
      local.get 2
      local.get 3
      call $core::fmt::Formatter::pad_integral::write_prefix::hc95aa586256216f1
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=24
      local.get 4
      local.get 5
      local.get 0
      i32.load offset=28
      i32.load offset=12
      call_indirect (type 0)
      br_if 0 (;@1;)
      local.get 8
      i32.const 1
      i32.add
      local.set 9
      local.get 0
      i32.load offset=28
      local.set 3
      local.get 0
      i32.load offset=24
      local.set 0
      loop  ;; label = @2
        block  ;; label = @3
          local.get 9
          i32.const -1
          i32.add
          local.tee 9
          br_if 0 (;@3;)
          i32.const 0
          return
        end
        i32.const 1
        local.set 1
        local.get 0
        local.get 10
        local.get 3
        i32.load offset=16
        call_indirect (type 1)
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func $core::fmt::Formatter::pad_integral::write_prefix::hc95aa586256216f1 (type 18) (param i32 i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 1114112
        i32.eq
        br_if 0 (;@2;)
        i32.const 1
        local.set 4
        local.get 0
        i32.load offset=24
        local.get 1
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=16
        call_indirect (type 1)
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        i32.const 0
        return
      end
      local.get 0
      i32.load offset=24
      local.get 2
      local.get 3
      local.get 0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 0)
      local.set 4
    end
    local.get 4)
  (func $core::slice::slice_index_len_fail::h0c4414c318b33bea (type 14) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i32.const 44
    i32.add
    i32.const 1
    i32.store
    local.get 2
    i64.const 2
    i64.store offset=12 align=4
    local.get 2
    i32.const 1049136
    i32.store offset=8
    local.get 2
    i32.const 1
    i32.store offset=36
    local.get 2
    local.get 2
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 2
    local.get 2
    i32.const 4
    i32.add
    i32.store offset=40
    local.get 2
    local.get 2
    i32.store offset=32
    local.get 2
    i32.const 8
    i32.add
    i32.const 1049152
    call $core::panicking::panic_fmt::h9d777aa95a13e1cc
    unreachable)
  (func $core::slice::slice_index_order_fail::h7405a4cf9373f8ba (type 14) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i32.const 44
    i32.add
    i32.const 1
    i32.store
    local.get 2
    i64.const 2
    i64.store offset=12 align=4
    local.get 2
    i32.const 1049232
    i32.store offset=8
    local.get 2
    i32.const 1
    i32.store offset=36
    local.get 2
    local.get 2
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 2
    local.get 2
    i32.const 4
    i32.add
    i32.store offset=40
    local.get 2
    local.get 2
    i32.store offset=32
    local.get 2
    i32.const 8
    i32.add
    i32.const 1049248
    call $core::panicking::panic_fmt::h9d777aa95a13e1cc
    unreachable)
  (func $core::fmt::Formatter::pad::h856986350ef19669 (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.const 16
    i32.add
    i32.load
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 8
            i32.add
            i32.load
            local.tee 4
            i32.const 1
            i32.eq
            br_if 0 (;@4;)
            local.get 3
            i32.const 1
            i32.eq
            br_if 1 (;@3;)
            local.get 0
            i32.load offset=24
            local.get 1
            local.get 2
            local.get 0
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type 0)
            local.set 3
            br 3 (;@1;)
          end
          local.get 3
          i32.const 1
          i32.ne
          br_if 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            br_if 0 (;@4;)
            i32.const 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 1
          local.get 2
          i32.add
          local.set 5
          local.get 0
          i32.const 20
          i32.add
          i32.load
          i32.const 1
          i32.add
          local.set 6
          i32.const 0
          local.set 7
          local.get 1
          local.set 3
          local.get 1
          local.set 8
          loop  ;; label = @4
            local.get 3
            i32.const 1
            i32.add
            local.set 9
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.load8_s
                  local.tee 10
                  i32.const -1
                  i32.gt_s
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 9
                      local.get 5
                      i32.ne
                      br_if 0 (;@9;)
                      i32.const 0
                      local.set 11
                      local.get 5
                      local.set 3
                      br 1 (;@8;)
                    end
                    local.get 3
                    i32.load8_u offset=1
                    i32.const 63
                    i32.and
                    local.set 11
                    local.get 3
                    i32.const 2
                    i32.add
                    local.tee 9
                    local.set 3
                  end
                  local.get 10
                  i32.const 31
                  i32.and
                  local.set 12
                  block  ;; label = @8
                    local.get 10
                    i32.const 255
                    i32.and
                    local.tee 10
                    i32.const 223
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 11
                    local.get 12
                    i32.const 6
                    i32.shl
                    i32.or
                    local.set 10
                    br 2 (;@6;)
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 3
                      local.get 5
                      i32.ne
                      br_if 0 (;@9;)
                      i32.const 0
                      local.set 13
                      local.get 5
                      local.set 14
                      br 1 (;@8;)
                    end
                    local.get 3
                    i32.load8_u
                    i32.const 63
                    i32.and
                    local.set 13
                    local.get 3
                    i32.const 1
                    i32.add
                    local.tee 9
                    local.set 14
                  end
                  local.get 13
                  local.get 11
                  i32.const 6
                  i32.shl
                  i32.or
                  local.set 11
                  block  ;; label = @8
                    local.get 10
                    i32.const 240
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 11
                    local.get 12
                    i32.const 12
                    i32.shl
                    i32.or
                    local.set 10
                    br 2 (;@6;)
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 14
                      local.get 5
                      i32.ne
                      br_if 0 (;@9;)
                      i32.const 0
                      local.set 10
                      local.get 9
                      local.set 3
                      br 1 (;@8;)
                    end
                    local.get 14
                    i32.const 1
                    i32.add
                    local.set 3
                    local.get 14
                    i32.load8_u
                    i32.const 63
                    i32.and
                    local.set 10
                  end
                  local.get 11
                  i32.const 6
                  i32.shl
                  local.get 12
                  i32.const 18
                  i32.shl
                  i32.const 1835008
                  i32.and
                  i32.or
                  local.get 10
                  i32.or
                  local.tee 10
                  i32.const 1114112
                  i32.ne
                  br_if 2 (;@5;)
                  br 4 (;@3;)
                end
                local.get 10
                i32.const 255
                i32.and
                local.set 10
              end
              local.get 9
              local.set 3
            end
            block  ;; label = @5
              local.get 6
              i32.const -1
              i32.add
              local.tee 6
              i32.eqz
              br_if 0 (;@5;)
              local.get 7
              local.get 8
              i32.sub
              local.get 3
              i32.add
              local.set 7
              local.get 3
              local.set 8
              local.get 5
              local.get 3
              i32.ne
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
          end
          local.get 10
          i32.const 1114112
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.eqz
              br_if 0 (;@5;)
              local.get 7
              local.get 2
              i32.eq
              br_if 0 (;@5;)
              i32.const 0
              local.set 3
              local.get 7
              local.get 2
              i32.ge_u
              br_if 1 (;@4;)
              local.get 1
              local.get 7
              i32.add
              i32.load8_s
              i32.const -64
              i32.lt_s
              br_if 1 (;@4;)
            end
            local.get 1
            local.set 3
          end
          local.get 7
          local.get 2
          local.get 3
          select
          local.set 2
          local.get 3
          local.get 1
          local.get 3
          select
          local.set 1
        end
        local.get 4
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=24
        local.get 1
        local.get 2
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 0)
        return
      end
      i32.const 0
      local.set 9
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.set 10
        local.get 1
        local.set 3
        loop  ;; label = @3
          local.get 9
          local.get 3
          i32.load8_u
          i32.const 192
          i32.and
          i32.const 128
          i32.eq
          i32.add
          local.set 9
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 10
          i32.const -1
          i32.add
          local.tee 10
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 2
        local.get 9
        i32.sub
        local.get 0
        i32.load offset=12
        local.tee 6
        i32.lt_u
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=24
        local.get 1
        local.get 2
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 0)
        return
      end
      i32.const 0
      local.set 7
      i32.const 0
      local.set 9
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 9
        local.get 2
        local.set 10
        local.get 1
        local.set 3
        loop  ;; label = @3
          local.get 9
          local.get 3
          i32.load8_u
          i32.const 192
          i32.and
          i32.const 128
          i32.eq
          i32.add
          local.set 9
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 10
          i32.const -1
          i32.add
          local.tee 10
          br_if 0 (;@3;)
        end
      end
      local.get 9
      local.get 2
      i32.sub
      local.get 6
      i32.add
      local.tee 9
      local.set 10
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            local.get 0
            i32.load8_u offset=32
            local.tee 3
            local.get 3
            i32.const 3
            i32.eq
            select
            br_table 2 (;@2;) 1 (;@3;) 0 (;@4;) 1 (;@3;) 2 (;@2;)
          end
          local.get 9
          i32.const 1
          i32.shr_u
          local.set 7
          local.get 9
          i32.const 1
          i32.add
          i32.const 1
          i32.shr_u
          local.set 10
          br 1 (;@2;)
        end
        i32.const 0
        local.set 10
        local.get 9
        local.set 7
      end
      local.get 7
      i32.const 1
      i32.add
      local.set 3
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.const -1
          i32.add
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=24
          local.get 0
          i32.load offset=4
          local.get 0
          i32.load offset=28
          i32.load offset=16
          call_indirect (type 1)
          i32.eqz
          br_if 0 (;@3;)
        end
        i32.const 1
        return
      end
      local.get 0
      i32.load offset=4
      local.set 9
      i32.const 1
      local.set 3
      local.get 0
      i32.load offset=24
      local.get 1
      local.get 2
      local.get 0
      i32.load offset=28
      i32.load offset=12
      call_indirect (type 0)
      br_if 0 (;@1;)
      local.get 10
      i32.const 1
      i32.add
      local.set 3
      local.get 0
      i32.load offset=28
      local.set 10
      local.get 0
      i32.load offset=24
      local.set 0
      loop  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const -1
          i32.add
          local.tee 3
          br_if 0 (;@3;)
          i32.const 0
          return
        end
        local.get 0
        local.get 9
        local.get 10
        i32.load offset=16
        call_indirect (type 1)
        i32.eqz
        br_if 0 (;@2;)
      end
      i32.const 1
      return
    end
    local.get 3)
  (func $core::str::slice_error_fail::h99d2ec831218702d (type 19) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 112
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 3
    i32.store offset=12
    local.get 4
    local.get 2
    i32.store offset=8
    i32.const 1
    local.set 5
    local.get 1
    local.set 6
    block  ;; label = @1
      local.get 1
      i32.const 257
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      local.get 1
      i32.sub
      local.set 7
      i32.const 256
      local.set 8
      loop  ;; label = @2
        block  ;; label = @3
          local.get 8
          local.get 1
          i32.ge_u
          br_if 0 (;@3;)
          local.get 0
          local.get 8
          i32.add
          i32.load8_s
          i32.const -65
          i32.le_s
          br_if 0 (;@3;)
          i32.const 0
          local.set 5
          local.get 8
          local.set 6
          br 2 (;@1;)
        end
        local.get 8
        i32.const -1
        i32.add
        local.set 6
        i32.const 0
        local.set 5
        local.get 8
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        local.get 7
        local.get 8
        i32.add
        local.set 9
        local.get 6
        local.set 8
        local.get 9
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 4
    local.get 6
    i32.store offset=20
    local.get 4
    local.get 0
    i32.store offset=16
    local.get 4
    i32.const 0
    i32.const 5
    local.get 5
    select
    i32.store offset=28
    local.get 4
    i32.const 1053048
    i32.const 1049299
    local.get 5
    select
    i32.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            local.get 1
            i32.gt_u
            local.tee 8
            br_if 0 (;@4;)
            local.get 3
            local.get 1
            i32.gt_u
            br_if 0 (;@4;)
            local.get 2
            local.get 3
            i32.gt_u
            br_if 1 (;@3;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.eqz
                br_if 0 (;@6;)
                local.get 1
                local.get 2
                i32.eq
                br_if 0 (;@6;)
                local.get 1
                local.get 2
                i32.le_u
                br_if 1 (;@5;)
                local.get 0
                local.get 2
                i32.add
                i32.load8_s
                i32.const -64
                i32.lt_s
                br_if 1 (;@5;)
              end
              local.get 3
              local.set 2
            end
            local.get 4
            local.get 2
            i32.store offset=32
            local.get 2
            i32.eqz
            br_if 2 (;@2;)
            local.get 2
            local.get 1
            i32.eq
            br_if 2 (;@2;)
            local.get 1
            i32.const 1
            i32.add
            local.set 9
            loop  ;; label = @5
              block  ;; label = @6
                local.get 2
                local.get 1
                i32.ge_u
                br_if 0 (;@6;)
                local.get 0
                local.get 2
                i32.add
                i32.load8_s
                i32.const -64
                i32.ge_s
                br_if 4 (;@2;)
              end
              local.get 2
              i32.const -1
              i32.add
              local.set 8
              local.get 2
              i32.const 1
              i32.eq
              br_if 4 (;@1;)
              local.get 9
              local.get 2
              i32.eq
              local.set 6
              local.get 8
              local.set 2
              local.get 6
              i32.eqz
              br_if 0 (;@5;)
              br 4 (;@1;)
            end
          end
          local.get 4
          local.get 2
          local.get 3
          local.get 8
          select
          i32.store offset=40
          local.get 4
          i32.const 48
          i32.add
          i32.const 20
          i32.add
          i32.const 3
          i32.store
          local.get 4
          i32.const 72
          i32.add
          i32.const 20
          i32.add
          i32.const 4
          i32.store
          local.get 4
          i32.const 84
          i32.add
          i32.const 4
          i32.store
          local.get 4
          i64.const 3
          i64.store offset=52 align=4
          local.get 4
          i32.const 1049304
          i32.store offset=48
          local.get 4
          i32.const 1
          i32.store offset=76
          local.get 4
          local.get 4
          i32.const 72
          i32.add
          i32.store offset=64
          local.get 4
          local.get 4
          i32.const 24
          i32.add
          i32.store offset=88
          local.get 4
          local.get 4
          i32.const 16
          i32.add
          i32.store offset=80
          local.get 4
          local.get 4
          i32.const 40
          i32.add
          i32.store offset=72
          local.get 4
          i32.const 48
          i32.add
          i32.const 1049328
          call $core::panicking::panic_fmt::h9d777aa95a13e1cc
          unreachable
        end
        local.get 4
        i32.const 100
        i32.add
        i32.const 4
        i32.store
        local.get 4
        i32.const 72
        i32.add
        i32.const 20
        i32.add
        i32.const 4
        i32.store
        local.get 4
        i32.const 84
        i32.add
        i32.const 1
        i32.store
        local.get 4
        i32.const 48
        i32.add
        i32.const 20
        i32.add
        i32.const 4
        i32.store
        local.get 4
        i64.const 4
        i64.store offset=52 align=4
        local.get 4
        i32.const 1049344
        i32.store offset=48
        local.get 4
        i32.const 1
        i32.store offset=76
        local.get 4
        local.get 4
        i32.const 72
        i32.add
        i32.store offset=64
        local.get 4
        local.get 4
        i32.const 24
        i32.add
        i32.store offset=96
        local.get 4
        local.get 4
        i32.const 16
        i32.add
        i32.store offset=88
        local.get 4
        local.get 4
        i32.const 12
        i32.add
        i32.store offset=80
        local.get 4
        local.get 4
        i32.const 8
        i32.add
        i32.store offset=72
        local.get 4
        i32.const 48
        i32.add
        i32.const 1049376
        call $core::panicking::panic_fmt::h9d777aa95a13e1cc
        unreachable
      end
      local.get 2
      local.set 8
    end
    block  ;; label = @1
      local.get 8
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      i32.const 1
      local.set 6
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              local.get 8
              i32.add
              local.tee 9
              i32.load8_s
              local.tee 2
              i32.const -1
              i32.gt_s
              br_if 0 (;@5;)
              i32.const 0
              local.set 5
              local.get 0
              local.get 1
              i32.add
              local.tee 6
              local.set 1
              block  ;; label = @6
                local.get 9
                i32.const 1
                i32.add
                local.get 6
                i32.eq
                br_if 0 (;@6;)
                local.get 9
                i32.const 2
                i32.add
                local.set 1
                local.get 9
                i32.load8_u offset=1
                i32.const 63
                i32.and
                local.set 5
              end
              local.get 2
              i32.const 31
              i32.and
              local.set 9
              local.get 2
              i32.const 255
              i32.and
              i32.const 223
              i32.gt_u
              br_if 1 (;@4;)
              local.get 5
              local.get 9
              i32.const 6
              i32.shl
              i32.or
              local.set 1
              br 2 (;@3;)
            end
            local.get 4
            local.get 2
            i32.const 255
            i32.and
            i32.store offset=36
            local.get 4
            i32.const 40
            i32.add
            local.set 2
            br 2 (;@2;)
          end
          i32.const 0
          local.set 0
          local.get 6
          local.set 7
          block  ;; label = @4
            local.get 1
            local.get 6
            i32.eq
            br_if 0 (;@4;)
            local.get 1
            i32.const 1
            i32.add
            local.set 7
            local.get 1
            i32.load8_u
            i32.const 63
            i32.and
            local.set 0
          end
          local.get 0
          local.get 5
          i32.const 6
          i32.shl
          i32.or
          local.set 1
          block  ;; label = @4
            local.get 2
            i32.const 255
            i32.and
            i32.const 240
            i32.ge_u
            br_if 0 (;@4;)
            local.get 1
            local.get 9
            i32.const 12
            i32.shl
            i32.or
            local.set 1
            br 1 (;@3;)
          end
          i32.const 0
          local.set 2
          block  ;; label = @4
            local.get 7
            local.get 6
            i32.eq
            br_if 0 (;@4;)
            local.get 7
            i32.load8_u
            i32.const 63
            i32.and
            local.set 2
          end
          local.get 1
          i32.const 6
          i32.shl
          local.get 9
          i32.const 18
          i32.shl
          i32.const 1835008
          i32.and
          i32.or
          local.get 2
          i32.or
          local.tee 1
          i32.const 1114112
          i32.eq
          br_if 2 (;@1;)
        end
        local.get 4
        local.get 1
        i32.store offset=36
        i32.const 1
        local.set 6
        local.get 4
        i32.const 40
        i32.add
        local.set 2
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 2
        local.set 6
        local.get 1
        i32.const 2048
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 3
        i32.const 4
        local.get 1
        i32.const 65536
        i32.lt_u
        select
        local.set 6
      end
      local.get 4
      local.get 8
      i32.store offset=40
      local.get 4
      local.get 6
      local.get 8
      i32.add
      i32.store offset=44
      local.get 4
      i32.const 48
      i32.add
      i32.const 20
      i32.add
      i32.const 5
      i32.store
      local.get 4
      i32.const 108
      i32.add
      i32.const 4
      i32.store
      local.get 4
      i32.const 100
      i32.add
      i32.const 4
      i32.store
      local.get 4
      i32.const 72
      i32.add
      i32.const 20
      i32.add
      i32.const 6
      i32.store
      local.get 4
      i32.const 84
      i32.add
      i32.const 7
      i32.store
      local.get 4
      i64.const 5
      i64.store offset=52 align=4
      local.get 4
      i32.const 1049408
      i32.store offset=48
      local.get 4
      local.get 2
      i32.store offset=88
      local.get 4
      i32.const 1
      i32.store offset=76
      local.get 4
      local.get 4
      i32.const 72
      i32.add
      i32.store offset=64
      local.get 4
      local.get 4
      i32.const 24
      i32.add
      i32.store offset=104
      local.get 4
      local.get 4
      i32.const 16
      i32.add
      i32.store offset=96
      local.get 4
      local.get 4
      i32.const 36
      i32.add
      i32.store offset=80
      local.get 4
      local.get 4
      i32.const 32
      i32.add
      i32.store offset=72
      local.get 4
      i32.const 48
      i32.add
      i32.const 1049448
      call $core::panicking::panic_fmt::h9d777aa95a13e1cc
      unreachable
    end
    i32.const 1053708
    i32.const 43
    i32.const 1049392
    call $core::panicking::panic::hc1d1fa8a09aabda8
    unreachable)
  (func $<&T_as_core::fmt::Display>::fmt::ha85ab5c1b1ac2ab6 (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $core::fmt::Formatter::pad::h856986350ef19669)
  (func $<core::ops::range::Range<Idx>_as_core::fmt::Debug>::fmt::hb15360d9fd0c9845 (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.get 1
        call $core::fmt::num::<impl_core::fmt::Debug_for_usize>::fmt::hbb4ba3b19e831d2c
        br_if 0 (;@2;)
        local.get 1
        i32.const 28
        i32.add
        i32.load
        local.set 3
        local.get 1
        i32.load offset=24
        local.set 4
        local.get 2
        i32.const 28
        i32.add
        i32.const 0
        i32.store
        local.get 2
        i32.const 1053048
        i32.store offset=24
        local.get 2
        i64.const 1
        i64.store offset=12 align=4
        local.get 2
        i32.const 1049552
        i32.store offset=8
        local.get 4
        local.get 3
        local.get 2
        i32.const 8
        i32.add
        call $core::fmt::write::h755ea4d0970e9999
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      i32.const 32
      i32.add
      global.set 0
      i32.const 1
      return
    end
    local.get 0
    i32.load offset=4
    local.get 1
    call $core::fmt::num::<impl_core::fmt::Debug_for_usize>::fmt::hbb4ba3b19e831d2c
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func $<char_as_core::fmt::Debug>::fmt::hb0f9000402a50a08 (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i64 i32 i32 i32)
    i32.const 1
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.load offset=24
      i32.const 39
      local.get 1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=16
      call_indirect (type 1)
      br_if 0 (;@1;)
      i32.const 2
      local.set 2
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load
                local.tee 3
                i32.const -9
                i32.add
                local.tee 0
                i32.const 30
                i32.le_u
                br_if 0 (;@6;)
                local.get 3
                i32.const 92
                i32.ne
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              i32.const 116
              local.set 4
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  br_table 5 (;@2;) 1 (;@6;) 2 (;@5;) 2 (;@5;) 0 (;@7;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 3 (;@4;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 3 (;@4;) 5 (;@2;)
                end
                i32.const 114
                local.set 4
                br 4 (;@2;)
              end
              i32.const 110
              local.set 4
              br 3 (;@2;)
            end
            local.get 3
            i32.const 10
            i32.shr_u
            local.set 2
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              local.get 3
                                              i32.const 125951
                                              i32.le_u
                                              br_if 0 (;@21;)
                                              i32.const 30
                                              local.set 0
                                              local.get 2
                                              i32.const 896
                                              i32.eq
                                              br_if 1 (;@20;)
                                              local.get 3
                                              i32.const 65280
                                              i32.and
                                              i32.const 8
                                              i32.shr_u
                                              local.set 5
                                              br 5 (;@16;)
                                            end
                                            local.get 2
                                            i32.const 1049618
                                            i32.add
                                            i32.load8_u
                                            local.tee 0
                                            i32.const 30
                                            i32.gt_u
                                            br_if 1 (;@19;)
                                          end
                                          local.get 0
                                          i32.const 4
                                          i32.shl
                                          local.get 3
                                          i32.const 6
                                          i32.shr_u
                                          i32.const 15
                                          i32.and
                                          i32.or
                                          i32.const 1049741
                                          i32.add
                                          i32.load8_u
                                          local.tee 0
                                          i32.const 139
                                          i32.ge_u
                                          br_if 1 (;@18;)
                                          i32.const 3
                                          local.set 2
                                          local.get 0
                                          i32.const 3
                                          i32.shl
                                          i32.const 1050272
                                          i32.add
                                          i64.load
                                          i64.const 1
                                          local.get 3
                                          i32.const 63
                                          i32.and
                                          i64.extend_i32_u
                                          i64.shl
                                          i64.and
                                          i64.eqz
                                          br_if 2 (;@17;)
                                          local.get 3
                                          i32.const 1
                                          i32.or
                                          i32.clz
                                          i32.const 2
                                          i32.shr_u
                                          i32.const 7
                                          i32.xor
                                          i64.extend_i32_u
                                          i64.const 21474836480
                                          i64.or
                                          local.set 6
                                          br 16 (;@3;)
                                        end
                                        i32.const 1050240
                                        local.get 0
                                        i32.const 31
                                        call $core::panicking::panic_bounds_check::hfeb7958506a46822
                                        unreachable
                                      end
                                      i32.const 1050256
                                      local.get 0
                                      i32.const 139
                                      call $core::panicking::panic_bounds_check::hfeb7958506a46822
                                      unreachable
                                    end
                                    local.get 3
                                    i32.const 65280
                                    i32.and
                                    local.set 2
                                    local.get 3
                                    i32.const 65536
                                    i32.lt_u
                                    br_if 1 (;@15;)
                                    local.get 2
                                    i32.const 8
                                    i32.shr_u
                                    local.set 5
                                  end
                                  local.get 3
                                  i32.const 131072
                                  i32.lt_u
                                  br_if 1 (;@14;)
                                  local.get 3
                                  i32.const -918000
                                  i32.add
                                  i32.const 196112
                                  i32.lt_u
                                  br_if 10 (;@5;)
                                  local.get 3
                                  i32.const -195102
                                  i32.add
                                  i32.const 722658
                                  i32.lt_u
                                  br_if 10 (;@5;)
                                  local.get 3
                                  i32.const -191457
                                  i32.add
                                  i32.const 3103
                                  i32.lt_u
                                  br_if 10 (;@5;)
                                  local.get 3
                                  i32.const -183970
                                  i32.add
                                  i32.const 14
                                  i32.lt_u
                                  br_if 10 (;@5;)
                                  local.get 3
                                  i32.const 2097150
                                  i32.and
                                  i32.const 178206
                                  i32.eq
                                  br_if 10 (;@5;)
                                  local.get 3
                                  i32.const -173783
                                  i32.add
                                  i32.const 41
                                  i32.lt_u
                                  br_if 10 (;@5;)
                                  local.get 3
                                  i32.const -177973
                                  i32.add
                                  i32.const 10
                                  i32.le_u
                                  br_if 10 (;@5;)
                                  i32.const 1
                                  local.set 2
                                  br 12 (;@3;)
                                end
                                local.get 2
                                i32.const 8
                                i32.shr_u
                                local.set 5
                                i32.const 1051410
                                local.set 0
                                i32.const 0
                                local.set 7
                                local.get 3
                                i32.const 255
                                i32.and
                                local.set 4
                                loop  ;; label = @15
                                  local.get 0
                                  i32.const 2
                                  i32.add
                                  local.set 8
                                  local.get 7
                                  local.get 0
                                  i32.load8_u offset=1
                                  local.tee 2
                                  i32.add
                                  local.set 9
                                  block  ;; label = @16
                                    local.get 0
                                    i32.load8_u
                                    local.tee 0
                                    local.get 5
                                    i32.eq
                                    br_if 0 (;@16;)
                                    local.get 0
                                    local.get 5
                                    i32.gt_u
                                    br_if 8 (;@8;)
                                    local.get 9
                                    local.set 7
                                    local.get 8
                                    local.set 0
                                    local.get 8
                                    i32.const 1051492
                                    i32.ne
                                    br_if 1 (;@15;)
                                    br 8 (;@8;)
                                  end
                                  local.get 9
                                  local.get 7
                                  i32.lt_u
                                  br_if 2 (;@13;)
                                  local.get 9
                                  i32.const 293
                                  i32.gt_u
                                  br_if 3 (;@12;)
                                  local.get 7
                                  i32.const 1051492
                                  i32.add
                                  local.set 0
                                  block  ;; label = @16
                                    loop  ;; label = @17
                                      local.get 2
                                      i32.eqz
                                      br_if 1 (;@16;)
                                      local.get 2
                                      i32.const -1
                                      i32.add
                                      local.set 2
                                      local.get 0
                                      i32.load8_u
                                      local.set 7
                                      local.get 0
                                      i32.const 1
                                      i32.add
                                      local.set 0
                                      local.get 7
                                      local.get 4
                                      i32.ne
                                      br_if 0 (;@17;)
                                      br 12 (;@5;)
                                    end
                                  end
                                  local.get 9
                                  local.set 7
                                  local.get 8
                                  local.set 0
                                  local.get 8
                                  i32.const 1051492
                                  i32.ne
                                  br_if 0 (;@15;)
                                  br 7 (;@8;)
                                end
                              end
                              i32.const 1052116
                              local.set 0
                              i32.const 0
                              local.set 7
                              local.get 3
                              i32.const 255
                              i32.and
                              local.set 4
                              loop  ;; label = @14
                                local.get 0
                                i32.const 2
                                i32.add
                                local.set 8
                                local.get 7
                                local.get 0
                                i32.load8_u offset=1
                                local.tee 2
                                i32.add
                                local.set 9
                                block  ;; label = @15
                                  local.get 0
                                  i32.load8_u
                                  local.tee 0
                                  local.get 5
                                  i32.eq
                                  br_if 0 (;@15;)
                                  local.get 0
                                  local.get 5
                                  i32.gt_u
                                  br_if 6 (;@9;)
                                  local.get 9
                                  local.set 7
                                  local.get 8
                                  local.set 0
                                  local.get 8
                                  i32.const 1052186
                                  i32.ne
                                  br_if 1 (;@14;)
                                  br 6 (;@9;)
                                end
                                local.get 9
                                local.get 7
                                i32.lt_u
                                br_if 3 (;@11;)
                                local.get 9
                                i32.const 166
                                i32.gt_u
                                br_if 4 (;@10;)
                                local.get 7
                                i32.const 1052186
                                i32.add
                                local.set 0
                                block  ;; label = @15
                                  loop  ;; label = @16
                                    local.get 2
                                    i32.eqz
                                    br_if 1 (;@15;)
                                    local.get 2
                                    i32.const -1
                                    i32.add
                                    local.set 2
                                    local.get 0
                                    i32.load8_u
                                    local.set 7
                                    local.get 0
                                    i32.const 1
                                    i32.add
                                    local.set 0
                                    local.get 7
                                    local.get 4
                                    i32.ne
                                    br_if 0 (;@16;)
                                    br 11 (;@5;)
                                  end
                                end
                                local.get 9
                                local.set 7
                                local.get 8
                                local.set 0
                                local.get 8
                                i32.const 1052186
                                i32.ne
                                br_if 0 (;@14;)
                                br 5 (;@9;)
                              end
                            end
                            local.get 7
                            local.get 9
                            call $core::slice::slice_index_order_fail::h7405a4cf9373f8ba
                            unreachable
                          end
                          local.get 9
                          i32.const 293
                          call $core::slice::slice_index_len_fail::h0c4414c318b33bea
                          unreachable
                        end
                        local.get 7
                        local.get 9
                        call $core::slice::slice_index_order_fail::h7405a4cf9373f8ba
                        unreachable
                      end
                      local.get 9
                      i32.const 166
                      call $core::slice::slice_index_len_fail::h0c4414c318b33bea
                      unreachable
                    end
                    local.get 3
                    i32.const 65535
                    i32.and
                    local.set 4
                    i32.const 1052352
                    local.set 2
                    i32.const 1
                    local.set 0
                    block  ;; label = @9
                      loop  ;; label = @10
                        local.get 2
                        i32.const 1
                        i32.add
                        local.set 9
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 2
                            i32.load8_u
                            local.tee 7
                            i32.const 24
                            i32.shl
                            i32.const 24
                            i32.shr_s
                            local.tee 8
                            i32.const 0
                            i32.lt_s
                            br_if 0 (;@12;)
                            local.get 9
                            local.set 2
                            br 1 (;@11;)
                          end
                          local.get 9
                          i32.const 1052760
                          i32.eq
                          br_if 2 (;@9;)
                          local.get 8
                          i32.const 127
                          i32.and
                          i32.const 8
                          i32.shl
                          local.get 2
                          i32.load8_u offset=1
                          i32.or
                          local.set 7
                          local.get 2
                          i32.const 2
                          i32.add
                          local.set 2
                        end
                        local.get 4
                        local.get 7
                        i32.sub
                        local.tee 4
                        i32.const 0
                        i32.lt_s
                        br_if 3 (;@7;)
                        local.get 0
                        i32.const 1
                        i32.xor
                        local.set 0
                        local.get 2
                        i32.const 1052760
                        i32.ne
                        br_if 0 (;@10;)
                        br 3 (;@7;)
                      end
                    end
                    i32.const 1053708
                    i32.const 43
                    i32.const 1052100
                    call $core::panicking::panic::hc1d1fa8a09aabda8
                    unreachable
                  end
                  local.get 3
                  i32.const 65535
                  i32.and
                  local.set 4
                  i32.const 1051785
                  local.set 2
                  i32.const 1
                  local.set 0
                  loop  ;; label = @8
                    local.get 2
                    i32.const 1
                    i32.add
                    local.set 9
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 2
                        i32.load8_u
                        local.tee 7
                        i32.const 24
                        i32.shl
                        i32.const 24
                        i32.shr_s
                        local.tee 8
                        i32.const 0
                        i32.lt_s
                        br_if 0 (;@10;)
                        local.get 9
                        local.set 2
                        br 1 (;@9;)
                      end
                      local.get 9
                      i32.const 1052099
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 8
                      i32.const 127
                      i32.and
                      i32.const 8
                      i32.shl
                      local.get 2
                      i32.load8_u offset=1
                      i32.or
                      local.set 7
                      local.get 2
                      i32.const 2
                      i32.add
                      local.set 2
                    end
                    local.get 4
                    local.get 7
                    i32.sub
                    local.tee 4
                    i32.const 0
                    i32.lt_s
                    br_if 1 (;@7;)
                    local.get 0
                    i32.const 1
                    i32.xor
                    local.set 0
                    local.get 2
                    i32.const 1052099
                    i32.ne
                    br_if 0 (;@8;)
                  end
                end
                i32.const 1
                local.set 2
                local.get 0
                i32.const 1
                i32.and
                br_if 2 (;@4;)
                br 1 (;@5;)
              end
              i32.const 1053708
              i32.const 43
              i32.const 1052100
              call $core::panicking::panic::hc1d1fa8a09aabda8
              unreachable
            end
            local.get 3
            i32.const 1
            i32.or
            i32.clz
            i32.const 2
            i32.shr_u
            i32.const 7
            i32.xor
            i64.extend_i32_u
            i64.const 21474836480
            i64.or
            local.set 6
            i32.const 3
            local.set 2
            br 1 (;@3;)
          end
        end
        local.get 3
        local.set 4
      end
      local.get 6
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      local.set 7
      local.get 6
      i32.wrap_i64
      local.set 9
      loop  ;; label = @2
        local.get 2
        local.set 3
        i32.const 92
        local.set 0
        i32.const 1
        local.set 2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  br_table 2 (;@5;) 1 (;@6;) 4 (;@3;) 0 (;@7;) 2 (;@5;)
                end
                local.get 7
                i32.const 255
                i32.and
                local.set 3
                i32.const 4
                local.set 7
                i32.const 3
                local.set 2
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 3
                      br_table 4 (;@5;) 2 (;@7;) 1 (;@8;) 0 (;@9;) 5 (;@4;) 6 (;@3;) 4 (;@5;)
                    end
                    i32.const 2
                    local.set 7
                    i32.const 123
                    local.set 0
                    br 5 (;@3;)
                  end
                  local.get 4
                  local.get 9
                  i32.const 2
                  i32.shl
                  i32.const 28
                  i32.and
                  i32.shr_u
                  i32.const 15
                  i32.and
                  local.tee 0
                  i32.const 48
                  i32.or
                  local.get 0
                  i32.const 87
                  i32.add
                  local.get 0
                  i32.const 10
                  i32.lt_u
                  select
                  local.set 0
                  i32.const 2
                  i32.const 1
                  local.get 9
                  select
                  local.set 7
                  local.get 9
                  i32.const -1
                  i32.add
                  i32.const 0
                  local.get 9
                  select
                  local.set 9
                  br 4 (;@3;)
                end
                i32.const 0
                local.set 7
                i32.const 125
                local.set 0
                br 3 (;@3;)
              end
              i32.const 0
              local.set 2
              local.get 4
              local.set 0
              br 2 (;@3;)
            end
            local.get 1
            i32.load offset=24
            i32.const 39
            local.get 1
            i32.load offset=28
            i32.load offset=16
            call_indirect (type 1)
            local.set 2
            br 3 (;@1;)
          end
          i32.const 3
          local.set 2
          i32.const 117
          local.set 0
          i32.const 3
          local.set 7
        end
        local.get 1
        i32.load offset=24
        local.get 0
        local.get 1
        i32.load offset=28
        i32.load offset=16
        call_indirect (type 1)
        i32.eqz
        br_if 0 (;@2;)
      end
      i32.const 1
      return
    end
    local.get 2)
  (func $core::fmt::num::<impl_core::fmt::Debug_for_usize>::fmt::hbb4ba3b19e831d2c (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load
              local.tee 3
              i32.const 16
              i32.and
              br_if 0 (;@5;)
              local.get 3
              i32.const 32
              i32.and
              br_if 1 (;@4;)
              local.get 0
              i64.extend_i32_u
              local.get 1
              call $core::fmt::num::imp::fmt_u64::h8041c6249cc163db
              local.set 0
              br 2 (;@3;)
            end
            i32.const 0
            local.set 3
            loop  ;; label = @5
              local.get 2
              local.get 3
              i32.add
              i32.const 127
              i32.add
              local.get 0
              i32.const 15
              i32.and
              local.tee 4
              i32.const 48
              i32.or
              local.get 4
              i32.const 87
              i32.add
              local.get 4
              i32.const 10
              i32.lt_u
              select
              i32.store8
              local.get 3
              i32.const -1
              i32.add
              local.set 3
              local.get 0
              i32.const 4
              i32.shr_u
              local.tee 0
              br_if 0 (;@5;)
            end
            local.get 3
            i32.const 128
            i32.add
            local.tee 0
            i32.const 129
            i32.ge_u
            br_if 2 (;@2;)
            local.get 1
            i32.const 1
            i32.const 1049616
            i32.const 2
            local.get 2
            local.get 3
            i32.add
            i32.const 128
            i32.add
            i32.const 0
            local.get 3
            i32.sub
            call $core::fmt::Formatter::pad_integral::h997b1c036893746a
            local.set 0
            br 1 (;@3;)
          end
          i32.const 0
          local.set 3
          loop  ;; label = @4
            local.get 2
            local.get 3
            i32.add
            i32.const 127
            i32.add
            local.get 0
            i32.const 15
            i32.and
            local.tee 4
            i32.const 48
            i32.or
            local.get 4
            i32.const 55
            i32.add
            local.get 4
            i32.const 10
            i32.lt_u
            select
            i32.store8
            local.get 3
            i32.const -1
            i32.add
            local.set 3
            local.get 0
            i32.const 4
            i32.shr_u
            local.tee 0
            br_if 0 (;@4;)
          end
          local.get 3
          i32.const 128
          i32.add
          local.tee 0
          i32.const 129
          i32.ge_u
          br_if 2 (;@1;)
          local.get 1
          i32.const 1
          i32.const 1049616
          i32.const 2
          local.get 2
          local.get 3
          i32.add
          i32.const 128
          i32.add
          i32.const 0
          local.get 3
          i32.sub
          call $core::fmt::Formatter::pad_integral::h997b1c036893746a
          local.set 0
        end
        local.get 2
        i32.const 128
        i32.add
        global.set 0
        local.get 0
        return
      end
      local.get 0
      i32.const 128
      call $core::slice::slice_index_order_fail::h7405a4cf9373f8ba
      unreachable
    end
    local.get 0
    i32.const 128
    call $core::slice::slice_index_order_fail::h7405a4cf9373f8ba
    unreachable)
  (func $core::option::expect_failed::h4902c88ba16bbfe6 (type 13)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 32
    i32.store offset=12
    local.get 0
    i32.const 1054160
    i32.store offset=8
    local.get 0
    i32.const 36
    i32.add
    i32.const 1
    i32.store
    local.get 0
    i64.const 1
    i64.store offset=20 align=4
    local.get 0
    i32.const 1052996
    i32.store offset=16
    local.get 0
    i32.const 4
    i32.store offset=44
    local.get 0
    local.get 0
    i32.const 40
    i32.add
    i32.store offset=32
    local.get 0
    local.get 0
    i32.const 8
    i32.add
    i32.store offset=40
    local.get 0
    i32.const 16
    i32.add
    i32.const 1054192
    call $core::panicking::panic_fmt::h9d777aa95a13e1cc
    unreachable)
  (func $<&T_as_core::fmt::Debug>::fmt::h9a9a096f5c126a08 (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 1))
  (func $<&T_as_core::fmt::Display>::fmt::hc5dff42c5e52f2b2 (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.const 28
    i32.add
    i32.load
    local.set 3
    local.get 1
    i32.load offset=24
    local.set 4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.load
    local.tee 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 4
    local.get 3
    local.get 2
    i32.const 8
    i32.add
    call $core::fmt::write::h755ea4d0970e9999
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func $<&T_as_core::fmt::Display>::fmt::hb7221991a49e7417 (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.tee 0
    i32.load
    local.get 0
    i32.load offset=4
    call $core::fmt::Formatter::pad::h856986350ef19669)
  (func $<core::fmt::builders::PadAdapter_as_core::fmt::Write>::write_str::h52868ed03f4312a9 (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      local.get 3
      i32.const 40
      i32.add
      local.set 5
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load offset=8
                  i32.load8_u
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load
                  i32.const 1052925
                  i32.const 4
                  local.get 0
                  i32.load offset=4
                  i32.load offset=12
                  call_indirect (type 0)
                  br_if 5 (;@2;)
                end
                local.get 3
                i32.const 10
                i32.store offset=40
                local.get 3
                i64.const 4294967306
                i64.store offset=32
                local.get 3
                local.get 2
                i32.store offset=28
                local.get 3
                i32.const 0
                i32.store offset=24
                local.get 3
                local.get 2
                i32.store offset=20
                local.get 3
                local.get 1
                i32.store offset=16
                local.get 3
                i32.const 8
                i32.add
                i32.const 10
                local.get 1
                local.get 2
                call $core::slice::memchr::memchr::hafa1e563b2f3cead
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 3
                        i32.load offset=8
                        i32.const 1
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 3
                        i32.load offset=12
                        local.set 4
                        loop  ;; label = @11
                          local.get 3
                          local.get 4
                          local.get 3
                          i32.load offset=24
                          i32.add
                          i32.const 1
                          i32.add
                          local.tee 4
                          i32.store offset=24
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 4
                              local.get 3
                              i32.load offset=36
                              local.tee 6
                              i32.ge_u
                              br_if 0 (;@13;)
                              local.get 3
                              i32.load offset=20
                              local.set 7
                              br 1 (;@12;)
                            end
                            local.get 3
                            i32.load offset=20
                            local.tee 7
                            local.get 4
                            i32.lt_u
                            br_if 0 (;@12;)
                            local.get 6
                            i32.const 5
                            i32.ge_u
                            br_if 7 (;@5;)
                            local.get 3
                            i32.load offset=16
                            local.get 4
                            local.get 6
                            i32.sub
                            local.tee 8
                            i32.add
                            local.tee 9
                            local.get 5
                            i32.eq
                            br_if 4 (;@8;)
                            local.get 9
                            local.get 5
                            local.get 6
                            call $bcmp
                            i32.eqz
                            br_if 4 (;@8;)
                          end
                          local.get 3
                          i32.load offset=28
                          local.tee 9
                          local.get 4
                          i32.lt_u
                          br_if 2 (;@9;)
                          local.get 7
                          local.get 9
                          i32.lt_u
                          br_if 2 (;@9;)
                          local.get 3
                          local.get 6
                          local.get 3
                          i32.const 16
                          i32.add
                          i32.add
                          i32.const 23
                          i32.add
                          i32.load8_u
                          local.get 3
                          i32.load offset=16
                          local.get 4
                          i32.add
                          local.get 9
                          local.get 4
                          i32.sub
                          call $core::slice::memchr::memchr::hafa1e563b2f3cead
                          local.get 3
                          i32.load offset=4
                          local.set 4
                          local.get 3
                          i32.load
                          i32.const 1
                          i32.eq
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 3
                      local.get 3
                      i32.load offset=28
                      i32.store offset=24
                    end
                    local.get 0
                    i32.load offset=8
                    i32.const 0
                    i32.store8
                    local.get 2
                    local.set 4
                    br 1 (;@7;)
                  end
                  local.get 0
                  i32.load offset=8
                  i32.const 1
                  i32.store8
                  local.get 8
                  i32.const 1
                  i32.add
                  local.set 4
                end
                local.get 0
                i32.load offset=4
                local.set 9
                local.get 0
                i32.load
                local.set 6
                block  ;; label = @7
                  local.get 4
                  i32.eqz
                  local.get 2
                  local.get 4
                  i32.eq
                  i32.or
                  local.tee 7
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 4
                  i32.le_u
                  br_if 3 (;@4;)
                  local.get 1
                  local.get 4
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.le_s
                  br_if 3 (;@4;)
                end
                local.get 6
                local.get 1
                local.get 4
                local.get 9
                i32.load offset=12
                call_indirect (type 0)
                br_if 4 (;@2;)
                block  ;; label = @7
                  local.get 7
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 4
                  i32.le_u
                  br_if 4 (;@3;)
                  local.get 1
                  local.get 4
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.le_s
                  br_if 4 (;@3;)
                end
                local.get 1
                local.get 4
                i32.add
                local.set 1
                local.get 2
                local.get 4
                i32.sub
                local.tee 2
                br_if 0 (;@6;)
              end
              i32.const 0
              local.set 4
              br 4 (;@1;)
            end
            local.get 6
            i32.const 4
            call $core::slice::slice_index_len_fail::h0c4414c318b33bea
            unreachable
          end
          local.get 1
          local.get 2
          i32.const 0
          local.get 4
          call $core::str::slice_error_fail::h99d2ec831218702d
          unreachable
        end
        local.get 1
        local.get 2
        local.get 4
        local.get 2
        call $core::str::slice_error_fail::h99d2ec831218702d
        unreachable
      end
      i32.const 1
      local.set 4
    end
    local.get 3
    i32.const 48
    i32.add
    global.set 0
    local.get 4)
  (func $core::slice::memchr::memchr::hafa1e563b2f3cead (type 19) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    i32.const 0
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 3
        i32.and
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        i32.const 4
        local.get 5
        i32.sub
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 5
        local.get 5
        local.get 3
        i32.gt_u
        select
        local.set 4
        i32.const 0
        local.set 5
        local.get 1
        i32.const 255
        i32.and
        local.set 6
        loop  ;; label = @3
          local.get 4
          local.get 5
          i32.eq
          br_if 1 (;@2;)
          local.get 2
          local.get 5
          i32.add
          local.set 7
          local.get 5
          i32.const 1
          i32.add
          local.set 5
          local.get 7
          i32.load8_u
          local.tee 7
          local.get 6
          i32.ne
          br_if 0 (;@3;)
        end
        i32.const 1
        local.set 3
        local.get 7
        local.get 1
        i32.const 255
        i32.and
        i32.eq
        i32.const 1
        i32.add
        i32.const 1
        i32.and
        local.get 5
        i32.add
        i32.const -1
        i32.add
        local.set 5
        br 1 (;@1;)
      end
      local.get 1
      i32.const 255
      i32.and
      local.set 6
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 8
          i32.lt_u
          br_if 0 (;@3;)
          local.get 4
          local.get 3
          i32.const -8
          i32.add
          local.tee 8
          i32.gt_u
          br_if 0 (;@3;)
          local.get 6
          i32.const 16843009
          i32.mul
          local.set 5
          block  ;; label = @4
            loop  ;; label = @5
              local.get 2
              local.get 4
              i32.add
              local.tee 7
              i32.const 4
              i32.add
              i32.load
              local.get 5
              i32.xor
              local.tee 9
              i32.const -1
              i32.xor
              local.get 9
              i32.const -16843009
              i32.add
              i32.and
              local.get 7
              i32.load
              local.get 5
              i32.xor
              local.tee 7
              i32.const -1
              i32.xor
              local.get 7
              i32.const -16843009
              i32.add
              i32.and
              i32.or
              i32.const -2139062144
              i32.and
              br_if 1 (;@4;)
              local.get 4
              i32.const 8
              i32.add
              local.tee 4
              local.get 8
              i32.le_u
              br_if 0 (;@5;)
            end
          end
          local.get 4
          local.get 3
          i32.gt_u
          br_if 1 (;@2;)
        end
        local.get 2
        local.get 4
        i32.add
        local.set 9
        local.get 3
        local.get 4
        i32.sub
        local.set 2
        i32.const 0
        local.set 3
        i32.const 0
        local.set 5
        block  ;; label = @3
          loop  ;; label = @4
            local.get 2
            local.get 5
            i32.eq
            br_if 1 (;@3;)
            local.get 9
            local.get 5
            i32.add
            local.set 7
            local.get 5
            i32.const 1
            i32.add
            local.set 5
            local.get 7
            i32.load8_u
            local.tee 7
            local.get 6
            i32.ne
            br_if 0 (;@4;)
          end
          i32.const 1
          local.set 3
          local.get 7
          local.get 1
          i32.const 255
          i32.and
          i32.eq
          i32.const 1
          i32.add
          i32.const 1
          i32.and
          local.get 5
          i32.add
          i32.const -1
          i32.add
          local.set 5
        end
        local.get 5
        local.get 4
        i32.add
        local.set 5
        br 1 (;@1;)
      end
      local.get 4
      local.get 3
      call $core::slice::slice_index_order_fail::h7405a4cf9373f8ba
      unreachable
    end
    local.get 0
    local.get 5
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store)
  (func $core::fmt::Write::write_char::h323af399add48192 (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 128
            i32.lt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 1 (;@3;)
            local.get 2
            i32.const 12
            i32.add
            local.set 3
            local.get 1
            i32.const 65536
            i32.ge_u
            br_if 2 (;@2;)
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 15
            i32.and
            i32.const 224
            i32.or
            i32.store8 offset=12
            i32.const 3
            local.set 1
            br 3 (;@1;)
          end
          local.get 2
          local.get 1
          i32.store8 offset=12
          local.get 2
          i32.const 12
          i32.add
          local.set 3
          i32.const 1
          local.set 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 31
        i32.and
        i32.const 192
        i32.or
        i32.store8 offset=12
        local.get 2
        i32.const 12
        i32.add
        local.set 3
        i32.const 2
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=15
      local.get 2
      local.get 1
      i32.const 18
      i32.shr_u
      i32.const 240
      i32.or
      i32.store8 offset=12
      local.get 2
      local.get 1
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=14
      local.get 2
      local.get 1
      i32.const 12
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=13
      i32.const 4
      local.set 1
    end
    local.get 0
    local.get 3
    local.get 1
    call $<core::fmt::builders::PadAdapter_as_core::fmt::Write>::write_str::h52868ed03f4312a9
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func $core::fmt::Write::write_fmt::h8beba38d970a87e1 (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1052960
    local.get 2
    i32.const 8
    i32.add
    call $core::fmt::write::h755ea4d0970e9999
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func $<&mut_W_as_core::fmt::Write>::write_str::h8442125df66de0a1 (type 0) (param i32 i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 2
    call $<core::fmt::builders::PadAdapter_as_core::fmt::Write>::write_str::h52868ed03f4312a9)
  (func $<&mut_W_as_core::fmt::Write>::write_char::hd45b5cd1ca1e33b0 (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $core::fmt::Write::write_char::h323af399add48192)
  (func $<&mut_W_as_core::fmt::Write>::write_fmt::h1f3c10dda65a48b3 (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1052960
    local.get 2
    i32.const 8
    i32.add
    call $core::fmt::write::h755ea4d0970e9999
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07 (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64 i64)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 3
    global.set 0
    i32.const 1
    local.set 4
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=4
      br_if 0 (;@1;)
      local.get 0
      i32.load8_u offset=5
      local.set 4
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 5
        i32.load8_u
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 4
          i32.const 255
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 1
          local.set 4
          local.get 5
          i32.load offset=24
          i32.const 1052929
          i32.const 2
          local.get 5
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 0)
          br_if 2 (;@1;)
          local.get 0
          i32.load
          local.set 5
        end
        local.get 1
        local.get 5
        local.get 2
        i32.load offset=12
        call_indirect (type 1)
        local.set 4
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        i32.const 255
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.set 4
        local.get 5
        i32.load offset=24
        i32.const 1052988
        i32.const 1
        local.get 5
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 0)
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.set 5
      end
      i32.const 1
      local.set 4
      local.get 3
      i32.const 1
      i32.store8 offset=23
      local.get 3
      i32.const 52
      i32.add
      i32.const 1052932
      i32.store
      local.get 3
      local.get 5
      i64.load offset=24 align=4
      i64.store offset=8
      local.get 3
      local.get 3
      i32.const 23
      i32.add
      i32.store offset=16
      local.get 5
      i64.load offset=8 align=4
      local.set 6
      local.get 5
      i64.load offset=16 align=4
      local.set 7
      local.get 3
      local.get 5
      i32.load8_u offset=32
      i32.store8 offset=56
      local.get 3
      local.get 7
      i64.store offset=40
      local.get 3
      local.get 6
      i64.store offset=32
      local.get 3
      local.get 5
      i64.load align=4
      i64.store offset=24
      local.get 3
      local.get 3
      i32.const 8
      i32.add
      i32.store offset=48
      local.get 1
      local.get 3
      i32.const 24
      i32.add
      local.get 2
      i32.load offset=12
      call_indirect (type 1)
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=48
      i32.const 1052956
      i32.const 2
      local.get 3
      i32.load offset=52
      i32.load offset=12
      call_indirect (type 0)
      local.set 4
    end
    local.get 0
    i32.const 1
    i32.store8 offset=5
    local.get 0
    local.get 4
    i32.store8 offset=4
    local.get 3
    i32.const 64
    i32.add
    global.set 0
    local.get 0)
  (func $core::fmt::num::fmt_u128::hdfb049706065008d (type 20) (param i64 i64 i32 i32) (result i32)
    (local i32 i32 i32 i32 i64 i64 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.const 10000
        i64.lt_u
        i32.const 0
        local.get 1
        i64.eqz
        select
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.wrap_i64
        local.set 5
        i32.const 39
        local.set 6
        br 1 (;@1;)
      end
      i32.const 39
      local.set 6
      local.get 4
      i32.const 32
      i32.add
      local.set 7
      loop  ;; label = @2
        local.get 4
        i32.const 24
        i32.add
        local.get 0
        local.get 1
        i64.const 10000
        i64.const 0
        call $__udivti3
        local.get 4
        i32.const 8
        i32.add
        local.get 4
        i64.load offset=24
        local.tee 8
        local.get 7
        i64.load
        local.tee 9
        i64.const -10000
        i64.const -1
        call $__multi3
        local.get 4
        i32.const 41
        i32.add
        local.get 6
        i32.add
        local.tee 5
        i32.const -4
        i32.add
        local.get 0
        local.get 4
        i64.load offset=8
        i64.add
        i32.wrap_i64
        local.tee 10
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 11
        i32.const 1
        i32.shl
        i32.const 1048934
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 5
        i32.const -2
        i32.add
        local.get 11
        i32.const -100
        i32.mul
        local.get 10
        i32.add
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1048934
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 0
        i64.const 99999999
        i64.gt_u
        local.set 5
        local.get 1
        i64.const 0
        i64.ne
        local.set 10
        local.get 1
        i64.eqz
        local.set 11
        local.get 6
        i32.const -4
        i32.add
        local.set 6
        local.get 8
        local.set 0
        local.get 9
        local.set 1
        local.get 5
        local.get 10
        local.get 11
        select
        br_if 0 (;@2;)
      end
      local.get 8
      i32.wrap_i64
      local.set 5
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.const 99
        i32.gt_s
        br_if 0 (;@2;)
        local.get 5
        local.set 10
        br 1 (;@1;)
      end
      local.get 4
      i32.const 41
      i32.add
      local.get 6
      i32.const -2
      i32.add
      local.tee 6
      i32.add
      local.get 5
      local.get 5
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 10
      i32.const -100
      i32.mul
      i32.add
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1048934
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 10
        i32.const 10
        i32.lt_s
        br_if 0 (;@2;)
        local.get 4
        i32.const 41
        i32.add
        local.get 6
        i32.const -2
        i32.add
        local.tee 6
        i32.add
        local.get 10
        i32.const 1
        i32.shl
        i32.const 1048934
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      local.get 4
      i32.const 41
      i32.add
      local.get 6
      i32.const -1
      i32.add
      local.tee 6
      i32.add
      local.get 10
      i32.const 48
      i32.add
      i32.store8
    end
    local.get 3
    local.get 2
    i32.const 1053048
    i32.const 0
    local.get 4
    i32.const 41
    i32.add
    local.get 6
    i32.add
    i32.const 39
    local.get 6
    i32.sub
    call $core::fmt::Formatter::pad_integral::h997b1c036893746a
    local.set 6
    local.get 4
    i32.const 80
    i32.add
    global.set 0
    local.get 6)
  (func $<core::fmt::Error_as_core::fmt::Debug>::fmt::h306daadc7156780d (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=24
    i32.const 1052991
    i32.const 5
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 0))
  (func $<&T_as_core::fmt::Display>::fmt::h1b3adb1720b7cb28 (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 3
    i32.const 1
    local.set 0
    block  ;; label = @1
      local.get 1
      i32.load offset=24
      i32.const 1052866
      i32.const 12
      local.get 1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 0)
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.load offset=8
          local.tee 0
          br_if 0 (;@3;)
          local.get 3
          i32.load
          local.tee 0
          local.get 3
          i32.load offset=4
          i32.load offset=12
          call_indirect (type 2)
          i64.const 1229646359891580772
          i64.ne
          br_if 1 (;@2;)
          local.get 2
          local.get 0
          i32.store offset=12
          local.get 2
          i32.const 8
          i32.store offset=20
          local.get 2
          local.get 2
          i32.const 12
          i32.add
          i32.store offset=16
          local.get 1
          i32.load offset=24
          local.set 4
          local.get 1
          i32.load offset=28
          local.set 5
          i32.const 1
          local.set 0
          local.get 2
          i32.const 60
          i32.add
          i32.const 1
          i32.store
          local.get 2
          i64.const 2
          i64.store offset=44 align=4
          local.get 2
          i32.const 1052880
          i32.store offset=40
          local.get 2
          local.get 2
          i32.const 16
          i32.add
          i32.store offset=56
          local.get 4
          local.get 5
          local.get 2
          i32.const 40
          i32.add
          call $core::fmt::write::h755ea4d0970e9999
          br_if 2 (;@1;)
          br 1 (;@2;)
        end
        local.get 2
        local.get 0
        i32.store offset=12
        local.get 2
        i32.const 9
        i32.store offset=20
        local.get 2
        local.get 2
        i32.const 12
        i32.add
        i32.store offset=16
        local.get 1
        i32.load offset=24
        local.set 4
        local.get 1
        i32.load offset=28
        local.set 5
        i32.const 1
        local.set 0
        local.get 2
        i32.const 60
        i32.add
        i32.const 1
        i32.store
        local.get 2
        i64.const 2
        i64.store offset=44 align=4
        local.get 2
        i32.const 1052880
        i32.store offset=40
        local.get 2
        local.get 2
        i32.const 16
        i32.add
        i32.store offset=56
        local.get 4
        local.get 5
        local.get 2
        i32.const 40
        i32.add
        call $core::fmt::write::h755ea4d0970e9999
        br_if 1 (;@1;)
      end
      local.get 3
      i32.load offset=12
      local.set 0
      local.get 2
      i32.const 16
      i32.add
      i32.const 20
      i32.add
      i32.const 1
      i32.store
      local.get 2
      i32.const 16
      i32.add
      i32.const 12
      i32.add
      i32.const 1
      i32.store
      local.get 2
      local.get 0
      i32.const 12
      i32.add
      i32.store offset=32
      local.get 2
      local.get 0
      i32.const 8
      i32.add
      i32.store offset=24
      local.get 2
      i32.const 4
      i32.store offset=20
      local.get 2
      local.get 0
      i32.store offset=16
      local.get 1
      i32.load offset=24
      local.set 0
      local.get 1
      i32.load offset=28
      local.set 1
      local.get 2
      i32.const 40
      i32.add
      i32.const 20
      i32.add
      i32.const 3
      i32.store
      local.get 2
      i64.const 3
      i64.store offset=44 align=4
      local.get 2
      i32.const 1052896
      i32.store offset=40
      local.get 2
      local.get 2
      i32.const 16
      i32.add
      i32.store offset=56
      local.get 0
      local.get 1
      local.get 2
      i32.const 40
      i32.add
      call $core::fmt::write::h755ea4d0970e9999
      local.set 0
    end
    local.get 2
    i32.const 64
    i32.add
    global.set 0
    local.get 0)
  (func $sp_io::logging::extern_host_function_impls::log::hbedd53d4c74df795 (type 15) (param i32 i32 i32 i32 i32)
    local.get 0
    i32.const -1
    i32.add
    i32.const 255
    i32.and
    local.get 2
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 1
    i64.extend_i32_u
    i64.or
    local.get 4
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 3
    i64.extend_i32_u
    i64.or
    call $ext_logging_log_version_1)
  (func $import_sp_io (type 13)
    i32.const 1053048
    i64.extend_i32_u
    call $ext_misc_print_utf8_version_1)
  (func $test_return_data (type 21) (param i32 i32) (result i64)
    (local i32 i32 i32 i64 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        i32.const 6
        call $__rust_alloc
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.const 67305985
        i32.store align=1
        local.get 3
        i32.const 1541
        i32.store16 offset=4 align=1
        local.get 2
        local.get 3
        i32.store
        local.get 2
        i64.const 25769803782
        i64.store offset=4 align=4
        i32.const 6
        call $__rust_alloc
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 3
        i32.load align=1
        i32.store align=1
        local.get 4
        i32.const 4
        i32.add
        local.get 3
        i32.const 4
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i64.extend_i32_u
            i64.const 25769803776
            i64.or
            call $ext_test_api_return_input_version_1
            local.tee 5
            i64.const 32
            i64.shr_u
            i32.wrap_i64
            local.tee 6
            br_if 0 (;@4;)
            i32.const 1
            local.set 7
            br 1 (;@3;)
          end
          local.get 5
          i32.wrap_i64
          local.set 7
        end
        local.get 2
        local.get 7
        i32.store offset=16
        local.get 2
        local.get 6
        i32.store offset=24
        local.get 2
        local.get 6
        i32.store offset=20
        local.get 4
        call $__rust_dealloc
        block  ;; label = @3
          local.get 6
          i32.const 6
          i32.ne
          br_if 0 (;@3;)
          local.get 7
          local.get 3
          i32.eq
          br_if 2 (;@1;)
          local.get 3
          local.get 7
          i32.const 6
          call $bcmp
          i32.eqz
          br_if 2 (;@1;)
        end
        local.get 2
        i32.const 68
        i32.add
        i32.const 10
        i32.store
        local.get 2
        i32.const 52
        i32.add
        i32.const 2
        i32.store
        local.get 2
        i64.const 3
        i64.store offset=36 align=4
        local.get 2
        i32.const 1053048
        i32.store offset=32
        local.get 2
        i32.const 10
        i32.store offset=60
        local.get 2
        local.get 2
        i32.store offset=72
        local.get 2
        local.get 2
        i32.const 56
        i32.add
        i32.store offset=48
        local.get 2
        local.get 2
        i32.const 76
        i32.add
        i32.store offset=64
        local.get 2
        local.get 2
        i32.const 72
        i32.add
        i32.store offset=56
        local.get 2
        local.get 2
        i32.const 16
        i32.add
        i32.store offset=76
        local.get 2
        i32.const 32
        i32.add
        i32.const 1053072
        call $core::panicking::panic_fmt::h9d777aa95a13e1cc
        unreachable
      end
      call $alloc::alloc::handle_alloc_error::h95468c66a83efacf
      unreachable
    end
    local.get 7
    call $__rust_dealloc
    local.get 3
    call $__rust_dealloc
    local.get 2
    i32.const 80
    i32.add
    global.set 0
    i64.const 1)
  (func $<&T_as_core::fmt::Debug>::fmt::haa9fd03754d656e8 (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.tee 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load
    local.set 0
    i32.const 1
    local.set 4
    local.get 1
    i32.load offset=24
    i32.const 1052990
    i32.const 1
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 0)
    local.set 5
    local.get 2
    i32.const 0
    i32.store8 offset=5
    local.get 2
    local.get 5
    i32.store8 offset=4
    local.get 2
    local.get 1
    i32.store
    block  ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 2
        local.get 0
        i32.store offset=12
        local.get 2
        local.get 2
        i32.const 12
        i32.add
        i32.const 1053852
        call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
        drop
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 3
        i32.const -1
        i32.add
        local.tee 3
        br_if 0 (;@2;)
      end
      local.get 2
      i32.load8_u offset=4
      local.set 5
    end
    block  ;; label = @1
      local.get 5
      i32.const 255
      i32.and
      br_if 0 (;@1;)
      local.get 2
      i32.load
      local.tee 0
      i32.load offset=24
      i32.const 1052989
      i32.const 1
      local.get 0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 0)
      local.set 4
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 4)
  (func $test_return_option_data (type 21) (param i32 i32) (result i64)
    (local i32 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      i32.const 6
      call $__rust_alloc
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 1541
      i32.store16 offset=4 align=1
      local.get 3
      i32.const 67305985
      i32.store align=1
      i32.const 6
      call $__rust_alloc
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      local.get 3
      i32.load align=1
      i32.store align=1
      local.get 4
      i32.const 4
      i32.add
      local.get 3
      i32.const 4
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
      local.get 2
      local.get 4
      i32.const 6
      i32.const 6
      call $sp_runtime_interface_test_wasm::test_api::extern_host_function_impls::return_option_input::h5b473d1a66f47d84
      local.get 2
      i64.const 25769803782
      i64.store offset=20 align=4
      local.get 2
      local.get 3
      i32.store offset=16
      block  ;; label = @2
        local.get 2
        i32.load
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 8
        i32.add
        i32.load
        i32.const 6
        i32.ne
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 3
          local.get 4
          i32.eq
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i32.const 6
          call $bcmp
          br_if 1 (;@2;)
        end
        local.get 3
        call $__rust_dealloc
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          call $__rust_dealloc
        end
        local.get 2
        i32.const 80
        i32.add
        global.set 0
        i64.const 1
        return
      end
      local.get 2
      i32.const 68
      i32.add
      i32.const 11
      i32.store
      local.get 2
      i32.const 52
      i32.add
      i32.const 2
      i32.store
      local.get 2
      i64.const 3
      i64.store offset=36 align=4
      local.get 2
      i32.const 1053048
      i32.store offset=32
      local.get 2
      i32.const 11
      i32.store offset=60
      local.get 2
      local.get 2
      i32.const 16
      i32.add
      i32.store offset=72
      local.get 2
      local.get 2
      i32.const 56
      i32.add
      i32.store offset=48
      local.get 2
      local.get 2
      i32.const 76
      i32.add
      i32.store offset=64
      local.get 2
      local.get 2
      i32.const 72
      i32.add
      i32.store offset=56
      local.get 2
      local.get 2
      i32.store offset=76
      local.get 2
      i32.const 32
      i32.add
      i32.const 1053244
      call $core::panicking::panic_fmt::h9d777aa95a13e1cc
      unreachable
    end
    call $alloc::alloc::handle_alloc_error::h95468c66a83efacf
    unreachable)
  (func $sp_runtime_interface_test_wasm::test_api::extern_host_function_impls::return_option_input::h5b473d1a66f47d84 (type 19) (param i32 i32 i32 i32)
    (local i32 i64 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i64.extend_i32_u
        i64.const 32
        i64.shl
        local.get 1
        i64.extend_i32_u
        i64.or
        call $ext_test_api_return_option_input_version_1
        local.tee 5
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        local.tee 6
        br_if 0 (;@2;)
        i32.const 1
        local.set 3
        br 1 (;@1;)
      end
      local.get 5
      i32.wrap_i64
      local.set 3
    end
    local.get 4
    local.get 6
    i32.store offset=20
    local.get 4
    local.get 3
    i32.store offset=16
    block  ;; label = @1
      local.get 6
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load8_u
      local.set 7
      local.get 4
      local.get 6
      i32.const -1
      i32.add
      i32.store offset=20
      local.get 4
      local.get 3
      i32.const 1
      i32.add
      i32.store offset=16
      local.get 7
      i32.const 1
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      local.set 6
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              br_table 1 (;@4;) 0 (;@5;) 1 (;@4;)
            end
            local.get 4
            i32.const 8
            i32.add
            local.get 4
            i32.const 16
            i32.add
            call $<parity_scale_codec::compact::Compact<u32>_as_parity_scale_codec::codec::Decode>::decode::h1d407623be6716d8
            local.get 4
            i32.load offset=8
            br_if 3 (;@1;)
            local.get 4
            i32.load offset=20
            local.tee 8
            local.get 4
            i32.load offset=12
            local.tee 7
            i32.lt_u
            br_if 3 (;@1;)
            local.get 7
            i32.const -1
            i32.le_s
            br_if 1 (;@3;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 7
                br_if 0 (;@6;)
                i32.const 1
                local.set 6
                br 1 (;@5;)
              end
              local.get 7
              call $__rust_alloc_zeroed
              local.tee 6
              i32.eqz
              br_if 3 (;@2;)
              local.get 6
              local.get 4
              i32.load offset=16
              local.tee 9
              local.get 7
              call $memcpy
              drop
              local.get 4
              local.get 8
              local.get 7
              i32.sub
              i32.store offset=20
              local.get 4
              local.get 9
              local.get 7
              i32.add
              i32.store offset=16
            end
            local.get 6
            i32.eqz
            br_if 3 (;@1;)
            local.get 7
            i64.extend_i32_u
            local.tee 5
            i64.const 32
            i64.shl
            local.get 5
            i64.or
            local.set 5
          end
          local.get 0
          local.get 5
          i64.store offset=4 align=4
          local.get 0
          local.get 6
          i32.store
          local.get 3
          call $__rust_dealloc
          block  ;; label = @4
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            call $__rust_dealloc
          end
          local.get 4
          i32.const 32
          i32.add
          global.set 0
          return
        end
        call $alloc::raw_vec::RawVec<T_A>::allocate_in::__closure__::h5508a6ea1d2d4629
        unreachable
      end
      call $alloc::alloc::handle_alloc_error::h95468c66a83efacf
      unreachable
    end
    i32.const 1053992
    i32.const 46
    local.get 4
    i32.const 24
    i32.add
    i32.const 1053976
    i32.const 1053868
    call $core::option::expect_none_failed::h7674c343b6d036bd
    unreachable)
  (func $<&T_as_core::fmt::Debug>::fmt::h5f548e5b7a992762 (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load
            local.tee 0
            i32.load
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            local.get 1
            i32.load offset=24
            i32.const 1053844
            i32.const 4
            local.get 1
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type 0)
            local.tee 3
            i32.store8 offset=16
            local.get 2
            local.get 1
            i32.store offset=8
            local.get 2
            i32.const 0
            i32.store8 offset=17
            local.get 2
            i32.const 0
            i32.store offset=12
            local.get 3
            br_if 1 (;@3;)
            local.get 1
            i32.load offset=24
            local.set 3
            local.get 1
            i32.load offset=28
            i32.load offset=12
            local.set 4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.load8_u
                i32.const 4
                i32.and
                br_if 0 (;@6;)
                local.get 3
                i32.const 1052984
                i32.const 1
                local.get 4
                call_indirect (type 0)
                br_if 3 (;@3;)
                local.get 0
                i32.const 8
                i32.add
                i32.load
                local.set 3
                local.get 0
                i32.load
                local.set 0
                local.get 1
                i32.load offset=24
                i32.const 1052990
                i32.const 1
                local.get 1
                i32.load offset=28
                i32.load offset=12
                call_indirect (type 0)
                local.set 4
                local.get 2
                i32.const 0
                i32.store8 offset=45
                local.get 2
                local.get 4
                i32.store8 offset=44
                local.get 2
                local.get 1
                i32.store offset=40
                block  ;; label = @7
                  local.get 3
                  i32.eqz
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    local.get 2
                    local.get 0
                    i32.store offset=24
                    local.get 2
                    i32.const 40
                    i32.add
                    local.get 2
                    i32.const 24
                    i32.add
                    i32.const 1053852
                    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
                    drop
                    local.get 0
                    i32.const 1
                    i32.add
                    local.set 0
                    local.get 3
                    i32.const -1
                    i32.add
                    local.tee 3
                    br_if 0 (;@8;)
                  end
                  local.get 2
                  i32.load8_u offset=44
                  local.set 4
                end
                i32.const 1
                local.set 3
                local.get 4
                i32.const 255
                i32.and
                br_if 1 (;@5;)
                local.get 2
                i32.load offset=40
                local.tee 0
                i32.load offset=24
                i32.const 1052989
                i32.const 1
                local.get 0
                i32.const 28
                i32.add
                i32.load
                i32.load offset=12
                call_indirect (type 0)
                local.set 3
                br 1 (;@5;)
              end
              local.get 3
              i32.const 1052985
              i32.const 2
              local.get 4
              call_indirect (type 0)
              br_if 2 (;@3;)
              local.get 1
              i32.load
              local.set 3
              local.get 2
              i32.const 1
              i32.store8 offset=39
              local.get 2
              i32.const 68
              i32.add
              i32.const 1052932
              i32.store
              local.get 2
              local.get 1
              i32.load8_u offset=32
              i32.store8 offset=72
              local.get 2
              local.get 1
              i64.load offset=16 align=4
              i64.store offset=56
              local.get 2
              local.get 1
              i64.load offset=8 align=4
              i64.store offset=48
              local.get 2
              local.get 3
              i32.store offset=40
              local.get 2
              local.get 1
              i64.load offset=24 align=4
              i64.store offset=24
              local.get 2
              local.get 1
              i32.load offset=4
              i32.store offset=44
              local.get 2
              local.get 2
              i32.const 39
              i32.add
              i32.store offset=32
              local.get 2
              local.get 2
              i32.const 24
              i32.add
              i32.store offset=64
              local.get 0
              i32.const 8
              i32.add
              i32.load
              local.set 3
              local.get 0
              i32.load
              local.set 0
              local.get 2
              i32.const 24
              i32.add
              i32.const 1052990
              i32.const 1
              call $<core::fmt::builders::PadAdapter_as_core::fmt::Write>::write_str::h52868ed03f4312a9
              local.set 4
              local.get 2
              i32.const 0
              i32.store8 offset=85
              local.get 2
              local.get 4
              i32.store8 offset=84
              local.get 2
              local.get 2
              i32.const 40
              i32.add
              i32.store offset=80
              block  ;; label = @6
                local.get 3
                i32.eqz
                br_if 0 (;@6;)
                loop  ;; label = @7
                  local.get 2
                  local.get 0
                  i32.store offset=92
                  local.get 2
                  i32.const 80
                  i32.add
                  local.get 2
                  i32.const 92
                  i32.add
                  i32.const 1053852
                  call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
                  drop
                  local.get 0
                  i32.const 1
                  i32.add
                  local.set 0
                  local.get 3
                  i32.const -1
                  i32.add
                  local.tee 3
                  br_if 0 (;@7;)
                end
                local.get 2
                i32.load8_u offset=84
                local.set 4
              end
              local.get 4
              i32.const 255
              i32.and
              br_if 2 (;@3;)
              local.get 2
              i32.load offset=80
              local.tee 0
              i32.load offset=24
              i32.const 1052989
              i32.const 1
              local.get 0
              i32.const 28
              i32.add
              i32.load
              i32.load offset=12
              call_indirect (type 0)
              br_if 2 (;@3;)
              local.get 2
              i32.load offset=64
              i32.const 1052956
              i32.const 2
              local.get 2
              i32.load offset=68
              i32.load offset=12
              call_indirect (type 0)
              local.set 3
            end
            i32.const 1
            local.set 0
            local.get 2
            i32.const 1
            i32.store offset=12
            local.get 2
            local.get 3
            i32.store8 offset=16
            local.get 3
            br_if 2 (;@2;)
            local.get 1
            i32.load offset=24
            i32.const 1052987
            i32.const 1
            local.get 1
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type 0)
            local.set 0
            br 2 (;@2;)
          end
          local.get 2
          local.get 1
          i32.load offset=24
          i32.const 1053848
          i32.const 4
          local.get 1
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 0)
          local.tee 0
          i32.store8 offset=48
          local.get 2
          local.get 1
          i32.store offset=40
          local.get 2
          i32.const 0
          i32.store8 offset=49
          local.get 2
          i32.const 0
          i32.store offset=44
          br 2 (;@1;)
        end
        i32.const 1
        local.set 0
        local.get 2
        i32.const 1
        i32.store offset=12
        local.get 2
        i32.const 1
        i32.store8 offset=16
      end
      local.get 2
      local.get 0
      i32.store8 offset=16
    end
    local.get 2
    i32.const 96
    i32.add
    global.set 0
    local.get 0)
  (func $test_set_storage (type 21) (param i32 i32) (result i64)
    i32.const 1053260
    i64.extend_i32_u
    i64.const 21474836480
    i64.or
    i32.const 1053265
    i64.extend_i32_u
    i64.const 21474836480
    i64.or
    call $ext_test_api_set_storage_version_1
    i64.const 1)
  (func $test_return_value_into_mutable_reference (type 21) (param i32 i32) (result i64)
    (local i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        i32.const 6
        call $__rust_alloc
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.const 1541
        i32.store16 offset=4 align=1
        local.get 3
        i32.const 67305985
        i32.store align=1
        local.get 3
        i64.extend_i32_u
        i64.const 25769803776
        i64.or
        call $ext_test_api_return_value_into_mutable_reference_version_1
        local.get 2
        i32.const 5
        i32.store offset=4
        local.get 2
        i32.const 1053260
        i32.store
        local.get 2
        i32.const 5
        i32.store offset=12
        local.get 2
        local.get 3
        i32.store offset=8
        i32.const 1053260
        local.get 3
        i32.const 5
        call $bcmp
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.const 52
        i32.add
        i32.const 12
        i32.store
        local.get 2
        i32.const 36
        i32.add
        i32.const 2
        i32.store
        local.get 2
        i64.const 3
        i64.store offset=20 align=4
        local.get 2
        i32.const 1053048
        i32.store offset=16
        local.get 2
        i32.const 12
        i32.store offset=44
        local.get 2
        local.get 2
        i32.store offset=56
        local.get 2
        local.get 2
        i32.const 40
        i32.add
        i32.store offset=32
        local.get 2
        local.get 2
        i32.const 60
        i32.add
        i32.store offset=48
        local.get 2
        local.get 2
        i32.const 56
        i32.add
        i32.store offset=40
        local.get 2
        local.get 2
        i32.const 8
        i32.add
        i32.store offset=60
        local.get 2
        i32.const 16
        i32.add
        i32.const 1053272
        call $core::panicking::panic_fmt::h9d777aa95a13e1cc
        unreachable
      end
      call $alloc::alloc::handle_alloc_error::h95468c66a83efacf
      unreachable
    end
    local.get 3
    call $__rust_dealloc
    local.get 2
    i32.const 64
    i32.add
    global.set 0
    i64.const 1)
  (func $<&T_as_core::fmt::Debug>::fmt::hf0a4786d747b2aa9 (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.tee 0
    i32.load offset=4
    local.set 3
    local.get 0
    i32.load
    local.set 0
    i32.const 1
    local.set 4
    local.get 1
    i32.load offset=24
    i32.const 1052990
    i32.const 1
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 0)
    local.set 5
    local.get 2
    i32.const 0
    i32.store8 offset=5
    local.get 2
    local.get 5
    i32.store8 offset=4
    local.get 2
    local.get 1
    i32.store
    block  ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 2
        local.get 0
        i32.store offset=12
        local.get 2
        local.get 2
        i32.const 12
        i32.add
        i32.const 1053852
        call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
        drop
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 3
        i32.const -1
        i32.add
        local.tee 3
        br_if 0 (;@2;)
      end
      local.get 2
      i32.load8_u offset=4
      local.set 5
    end
    block  ;; label = @1
      local.get 5
      i32.const 255
      i32.and
      br_if 0 (;@1;)
      local.get 2
      i32.load
      local.tee 0
      i32.load offset=24
      i32.const 1052989
      i32.const 1
      local.get 0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 0)
      local.set 4
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 4)
  (func $test_get_and_return_array (type 21) (param i32 i32) (result i64)
    (local i32 i32 i64 i64 i64 i64)
    global.get 0
    i32.const 144
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 32
    i32.add
    i32.const 0
    i32.load16_u offset=1053320 align=1
    local.tee 3
    i32.store16
    local.get 2
    i32.const 8
    i32.add
    i32.const 24
    i32.add
    i32.const 0
    i64.load offset=1053312 align=1
    local.tee 4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    i32.const 0
    i64.load offset=1053304 align=1
    local.tee 5
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    i32.const 0
    i64.load offset=1053296 align=1
    local.tee 6
    i64.store
    local.get 2
    i32.const 0
    i64.load offset=1053288 align=1
    local.tee 7
    i64.store offset=8
    local.get 2
    i32.const 104
    i32.add
    i32.const 32
    i32.add
    local.get 3
    i32.store16
    local.get 2
    i32.const 104
    i32.add
    i32.const 24
    i32.add
    local.get 4
    i64.store
    local.get 2
    i32.const 104
    i32.add
    i32.const 16
    i32.add
    local.get 5
    i64.store
    local.get 2
    i32.const 104
    i32.add
    i32.const 8
    i32.add
    local.get 6
    i64.store
    local.get 2
    local.get 7
    i64.store offset=104
    local.get 2
    i32.const 104
    i32.add
    call $ext_test_api_get_and_return_array_version_1
    local.tee 3
    i64.load align=1
    local.set 4
    local.get 2
    i32.const 48
    i32.add
    i32.const 8
    i32.add
    local.get 3
    i32.const 8
    i32.add
    i64.load align=1
    i64.store
    local.get 2
    local.get 4
    i64.store offset=48
    local.get 3
    call $__rust_dealloc
    local.get 2
    local.get 2
    i32.const 48
    i32.add
    i32.store offset=68
    local.get 2
    i32.const 16
    i32.store offset=76
    local.get 2
    local.get 2
    i32.const 8
    i32.add
    i32.store offset=72
    block  ;; label = @1
      local.get 2
      i32.const 48
      i32.add
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      call $bcmp
      br_if 0 (;@1;)
      local.get 2
      i32.const 144
      i32.add
      global.set 0
      i64.const 1
      return
    end
    local.get 2
    i32.const 92
    i32.add
    i32.const 12
    i32.store
    local.get 2
    i32.const 124
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i64.const 3
    i64.store offset=108 align=4
    local.get 2
    i32.const 1053048
    i32.store offset=104
    local.get 2
    i32.const 13
    i32.store offset=84
    local.get 2
    local.get 2
    i32.const 68
    i32.add
    i32.store offset=96
    local.get 2
    local.get 2
    i32.const 80
    i32.add
    i32.store offset=120
    local.get 2
    local.get 2
    i32.const 100
    i32.add
    i32.store offset=88
    local.get 2
    local.get 2
    i32.const 96
    i32.add
    i32.store offset=80
    local.get 2
    local.get 2
    i32.const 72
    i32.add
    i32.store offset=100
    local.get 2
    i32.const 104
    i32.add
    i32.const 1053324
    call $core::panicking::panic_fmt::h9d777aa95a13e1cc
    unreachable)
  (func $<&T_as_core::fmt::Debug>::fmt::h5043b14c1470b5eb (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    i32.load
    local.get 1
    call $core::array::<impl_core::fmt::Debug_for__T____>::fmt::h318edea1d44901e6)
  (func $test_array_as_mutable_reference (type 21) (param i32 i32) (result i64)
    (local i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    local.get 2
    i64.const 0
    i64.store
    local.get 2
    call $ext_test_api_array_as_mutable_reference_version_1
    block  ;; label = @1
      local.get 2
      i32.const 1053340
      i32.const 16
      call $bcmp
      br_if 0 (;@1;)
      local.get 2
      i32.const 64
      i32.add
      global.set 0
      i64.const 1
      return
    end
    local.get 2
    i32.const 52
    i32.add
    i32.const 14
    i32.store
    local.get 2
    i32.const 36
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i64.const 3
    i64.store offset=20 align=4
    local.get 2
    i32.const 1053048
    i32.store offset=16
    local.get 2
    i32.const 14
    i32.store offset=44
    local.get 2
    local.get 2
    i32.store offset=56
    local.get 2
    i32.const 1053340
    i32.store offset=60
    local.get 2
    local.get 2
    i32.const 40
    i32.add
    i32.store offset=32
    local.get 2
    local.get 2
    i32.const 60
    i32.add
    i32.store offset=48
    local.get 2
    local.get 2
    i32.const 56
    i32.add
    i32.store offset=40
    local.get 2
    i32.const 16
    i32.add
    i32.const 1053356
    call $core::panicking::panic_fmt::h9d777aa95a13e1cc
    unreachable)
  (func $<&T_as_core::fmt::Debug>::fmt::h71f65314f2eeb4d0 (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $core::array::<impl_core::fmt::Debug_for__T____>::fmt::h318edea1d44901e6)
  (func $test_return_input_public_key (type 21) (param i32 i32) (result i64)
    (local i32 i64 i64 i64 i64 i32 i32 i32 i32)
    global.get 0
    i32.const 160
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 24
    i32.add
    i32.const 0
    i64.load offset=1053396 align=1
    local.tee 3
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    i32.const 0
    i64.load offset=1053388 align=1
    local.tee 4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    i32.const 0
    i64.load offset=1053380 align=1
    local.tee 5
    i64.store
    local.get 2
    i32.const 0
    i64.load offset=1053372 align=1
    local.tee 6
    i64.store offset=8
    local.get 2
    i32.const 96
    i32.add
    i32.const 24
    i32.add
    local.get 3
    i64.store
    local.get 2
    i32.const 96
    i32.add
    i32.const 16
    i32.add
    local.get 4
    i64.store
    local.get 2
    i32.const 96
    i32.add
    i32.const 8
    i32.add
    local.get 5
    i64.store
    local.get 2
    local.get 6
    i64.store offset=96
    local.get 2
    i32.const 96
    i32.add
    call $ext_test_api_return_input_public_key_version_1
    local.tee 7
    i32.const 8
    i32.add
    i64.load align=1
    local.set 3
    local.get 7
    i32.const 16
    i32.add
    i64.load align=1
    local.set 4
    local.get 7
    i64.load align=1
    local.set 5
    local.get 2
    i32.const 128
    i32.add
    i32.const 24
    i32.add
    local.tee 8
    local.get 7
    i32.const 24
    i32.add
    i64.load align=1
    i64.store
    local.get 2
    i32.const 128
    i32.add
    i32.const 16
    i32.add
    local.tee 9
    local.get 4
    i64.store
    local.get 2
    i32.const 128
    i32.add
    i32.const 8
    i32.add
    local.tee 10
    local.get 3
    i64.store
    local.get 2
    local.get 5
    i64.store offset=128
    local.get 7
    call $__rust_dealloc
    local.get 2
    i32.const 40
    i32.add
    i32.const 24
    i32.add
    local.get 8
    i64.load
    i64.store
    local.get 2
    i32.const 40
    i32.add
    i32.const 16
    i32.add
    local.get 9
    i64.load
    i64.store
    local.get 2
    i32.const 40
    i32.add
    i32.const 8
    i32.add
    local.get 10
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=128
    i64.store offset=40
    local.get 2
    i32.const 32
    i32.store offset=76
    local.get 2
    local.get 2
    i32.const 8
    i32.add
    i32.store offset=72
    local.get 2
    i32.const 32
    i32.store offset=84
    local.get 2
    local.get 2
    i32.const 40
    i32.add
    i32.store offset=80
    block  ;; label = @1
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 40
      i32.add
      i32.const 32
      call $bcmp
      br_if 0 (;@1;)
      local.get 2
      i32.const 160
      i32.add
      global.set 0
      i64.const 1
      return
    end
    local.get 2
    i32.const 108
    i32.add
    i32.const 12
    i32.store
    local.get 2
    i32.const 148
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i64.const 3
    i64.store offset=132 align=4
    local.get 2
    i32.const 1053048
    i32.store offset=128
    local.get 2
    i32.const 12
    i32.store offset=100
    local.get 2
    local.get 2
    i32.const 72
    i32.add
    i32.store offset=88
    local.get 2
    local.get 2
    i32.const 96
    i32.add
    i32.store offset=144
    local.get 2
    local.get 2
    i32.const 92
    i32.add
    i32.store offset=104
    local.get 2
    local.get 2
    i32.const 88
    i32.add
    i32.store offset=96
    local.get 2
    local.get 2
    i32.const 80
    i32.add
    i32.store offset=92
    local.get 2
    i32.const 128
    i32.add
    i32.const 1053404
    call $core::panicking::panic_fmt::h9d777aa95a13e1cc
    unreachable)
  (func $test_invalid_utf8_data_should_return_an_error (type 21) (param i32 i32) (result i64)
    (local i32)
    block  ;; label = @1
      i32.const 4
      call $__rust_alloc
      local.tee 2
      br_if 0 (;@1;)
      call $alloc::alloc::handle_alloc_error::h95468c66a83efacf
      unreachable
    end
    local.get 2
    i32.const -1768775936
    i32.store align=1
    local.get 2
    i64.extend_i32_u
    i64.const 17179869184
    i64.or
    call $ext_test_api_invalid_utf8_data_version_1
    local.get 2
    call $__rust_dealloc
    i64.const 1)
  (func $test_overwrite_native_function_implementation (type 21) (param i32 i32) (result i64)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1054396
        call_indirect (type 3)
        br_if 0 (;@2;)
        i32.const 0
        i32.load8_u offset=1054400
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        i32.const 1054295
        i32.const 53
        i32.const 1054348
        call $core::panicking::panic::hc1d1fa8a09aabda8
        unreachable
      end
      i32.const 1053420
      i32.const 71
      i32.const 1053492
      call $core::panicking::panic::hc1d1fa8a09aabda8
      unreachable
    end
    i32.const 0
    i32.const 1
    i32.store8 offset=1054400
    i32.const 0
    i32.load offset=1054396
    local.set 2
    i32.const 0
    i32.const 15
    i32.store offset=1054396
    block  ;; label = @1
      local.get 2
      br_if 0 (;@1;)
      call $core::option::expect_failed::h4902c88ba16bbfe6
      unreachable
    end
    i32.const 0
    local.get 2
    i32.store offset=1054396
    i32.const 0
    i32.const 0
    i32.store8 offset=1054400
    i64.const 1)
  (func $sp_runtime_interface_test_wasm::test_overwrite_native_function_implementation::new_implementation::haf6cb9798bde0664 (type 3) (result i32)
    i32.const 1)
  (func $test_u128_i128_as_parameter_and_return_value (type 21) (param i32 i32) (result i64)
    (local i32 i32 i64 i64)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i64.const -1
    i64.store offset=24
    local.get 2
    i64.const -1
    i64.store offset=16
    local.get 2
    i32.const 16
    i32.add
    call $ext_test_api_get_and_return_u128_version_1
    local.tee 3
    i32.const 8
    i32.add
    i64.load align=1
    local.set 4
    local.get 3
    i64.load align=1
    local.set 5
    local.get 3
    call $__rust_dealloc
    local.get 2
    local.get 4
    i64.store offset=8
    local.get 2
    local.get 5
    i64.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        local.get 4
        i64.and
        i64.const -1
        i64.eq
        br_if 0 (;@2;)
        i32.const 1053512
        local.set 3
        br 1 (;@1;)
      end
      local.get 2
      i64.const 0
      i64.store offset=24
      local.get 2
      i64.const 1
      i64.store offset=16
      local.get 2
      i32.const 16
      i32.add
      call $ext_test_api_get_and_return_u128_version_1
      local.tee 3
      i32.const 8
      i32.add
      i64.load align=1
      local.set 4
      local.get 3
      i64.load align=1
      local.set 5
      local.get 3
      call $__rust_dealloc
      local.get 2
      local.get 4
      i64.store offset=8
      local.get 2
      local.get 5
      i64.store
      block  ;; label = @2
        local.get 4
        local.get 5
        i64.const 1
        i64.xor
        i64.or
        i64.eqz
        br_if 0 (;@2;)
        i32.const 1053528
        local.set 3
        br 1 (;@1;)
      end
      local.get 2
      i64.const 0
      i64.store offset=24
      local.get 2
      i64.const 5000
      i64.store offset=16
      local.get 2
      i32.const 16
      i32.add
      call $ext_test_api_get_and_return_u128_version_1
      local.tee 3
      i32.const 8
      i32.add
      i64.load align=1
      local.set 4
      local.get 3
      i64.load align=1
      local.set 5
      local.get 3
      call $__rust_dealloc
      local.get 2
      local.get 4
      i64.store offset=8
      local.get 2
      local.get 5
      i64.store
      block  ;; label = @2
        local.get 4
        local.get 5
        i64.const 5000
        i64.xor
        i64.or
        i64.const 0
        i64.eq
        br_if 0 (;@2;)
        i32.const 1053544
        local.set 3
        br 1 (;@1;)
      end
      local.get 2
      i64.const 0
      i64.store offset=24
      local.get 2
      i64.const -1
      i64.store offset=16
      local.get 2
      i32.const 16
      i32.add
      call $ext_test_api_get_and_return_u128_version_1
      local.tee 3
      i32.const 8
      i32.add
      i64.load align=1
      local.set 4
      local.get 3
      i64.load align=1
      local.set 5
      local.get 3
      call $__rust_dealloc
      local.get 2
      local.get 4
      i64.store offset=8
      local.get 2
      local.get 5
      i64.store
      block  ;; label = @2
        local.get 4
        local.get 5
        i64.const -1
        i64.xor
        i64.or
        i64.const 0
        i64.eq
        br_if 0 (;@2;)
        i32.const 1053560
        local.set 3
        br 1 (;@1;)
      end
      local.get 2
      i64.const 9223372036854775807
      i64.store offset=24
      local.get 2
      i64.const -1
      i64.store offset=16
      local.get 2
      i32.const 16
      i32.add
      call $ext_test_api_get_and_return_i128_version_1
      local.tee 3
      i32.const 8
      i32.add
      i64.load align=1
      local.set 4
      local.get 3
      i64.load align=1
      local.set 5
      local.get 3
      call $__rust_dealloc
      local.get 2
      local.get 4
      i64.store offset=8
      local.get 2
      local.get 5
      i64.store
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          i64.const -1
          i64.xor
          local.get 4
          i64.const 9223372036854775807
          i64.xor
          i64.or
          i64.eqz
          br_if 0 (;@3;)
          i32.const 1053592
          local.set 3
          br 1 (;@2;)
        end
        local.get 2
        i64.const 0
        i64.store offset=16
        local.get 2
        i64.const -9223372036854775808
        i64.store offset=24
        local.get 2
        i32.const 16
        i32.add
        call $ext_test_api_get_and_return_i128_version_1
        local.tee 3
        i32.const 8
        i32.add
        i64.load align=1
        local.set 4
        local.get 3
        i64.load align=1
        local.set 5
        local.get 3
        call $__rust_dealloc
        local.get 2
        local.get 4
        i64.store offset=8
        local.get 2
        local.get 5
        i64.store
        block  ;; label = @3
          local.get 5
          local.get 4
          i64.const -9223372036854775808
          i64.xor
          i64.or
          i64.eqz
          br_if 0 (;@3;)
          i32.const 1053608
          local.set 3
          br 1 (;@2;)
        end
        local.get 2
        i64.const 0
        i64.store offset=24
        local.get 2
        i64.const 1
        i64.store offset=16
        local.get 2
        i32.const 16
        i32.add
        call $ext_test_api_get_and_return_i128_version_1
        local.tee 3
        i32.const 8
        i32.add
        i64.load align=1
        local.set 4
        local.get 3
        i64.load align=1
        local.set 5
        local.get 3
        call $__rust_dealloc
        local.get 2
        local.get 4
        i64.store offset=8
        local.get 2
        local.get 5
        i64.store
        block  ;; label = @3
          local.get 4
          local.get 5
          i64.const 1
          i64.xor
          i64.or
          i64.const 0
          i64.eq
          br_if 0 (;@3;)
          i32.const 1053624
          local.set 3
          br 1 (;@2;)
        end
        local.get 2
        i64.const 0
        i64.store offset=24
        local.get 2
        i64.const 5000
        i64.store offset=16
        local.get 2
        i32.const 16
        i32.add
        call $ext_test_api_get_and_return_i128_version_1
        local.tee 3
        i32.const 8
        i32.add
        i64.load align=1
        local.set 4
        local.get 3
        i64.load align=1
        local.set 5
        local.get 3
        call $__rust_dealloc
        local.get 2
        local.get 4
        i64.store offset=8
        local.get 2
        local.get 5
        i64.store
        block  ;; label = @3
          local.get 4
          local.get 5
          i64.const 5000
          i64.xor
          i64.or
          i64.const 0
          i64.eq
          br_if 0 (;@3;)
          i32.const 1053640
          local.set 3
          br 1 (;@2;)
        end
        local.get 2
        i64.const 0
        i64.store offset=24
        local.get 2
        i64.const -1
        i64.store offset=16
        local.get 2
        i32.const 16
        i32.add
        call $ext_test_api_get_and_return_i128_version_1
        local.tee 3
        i32.const 8
        i32.add
        i64.load align=1
        local.set 4
        local.get 3
        i64.load align=1
        local.set 5
        local.get 3
        call $__rust_dealloc
        local.get 2
        local.get 4
        i64.store offset=8
        local.get 2
        local.get 5
        i64.store
        block  ;; label = @3
          local.get 4
          local.get 5
          i64.const -1
          i64.xor
          i64.or
          i64.const 0
          i64.eq
          br_if 0 (;@3;)
          i32.const 1053656
          local.set 3
          br 1 (;@2;)
        end
        local.get 2
        i32.const 64
        i32.add
        global.set 0
        i64.const 1
        return
      end
      local.get 2
      i32.const 52
      i32.add
      i32.const 16
      i32.store
      local.get 2
      i32.const 36
      i32.add
      i32.const 2
      i32.store
      local.get 2
      local.get 3
      i32.store offset=56
      local.get 2
      i64.const 3
      i64.store offset=20 align=4
      local.get 2
      i32.const 1053048
      i32.store offset=16
      local.get 2
      i32.const 16
      i32.store offset=44
      local.get 2
      local.get 2
      i32.const 40
      i32.add
      i32.store offset=32
      local.get 2
      local.get 2
      i32.const 60
      i32.add
      i32.store offset=48
      local.get 2
      local.get 2
      i32.const 56
      i32.add
      i32.store offset=40
      local.get 2
      local.get 2
      i32.store offset=60
      local.get 2
      i32.const 16
      i32.add
      i32.const 1053672
      call $core::panicking::panic_fmt::h9d777aa95a13e1cc
      unreachable
    end
    local.get 2
    i32.const 52
    i32.add
    i32.const 17
    i32.store
    local.get 2
    i32.const 36
    i32.add
    i32.const 2
    i32.store
    local.get 2
    local.get 3
    i32.store offset=56
    local.get 2
    i64.const 3
    i64.store offset=20 align=4
    local.get 2
    i32.const 1053048
    i32.store offset=16
    local.get 2
    i32.const 17
    i32.store offset=44
    local.get 2
    local.get 2
    i32.const 40
    i32.add
    i32.store offset=32
    local.get 2
    local.get 2
    i32.const 60
    i32.add
    i32.store offset=48
    local.get 2
    local.get 2
    i32.const 56
    i32.add
    i32.store offset=40
    local.get 2
    local.get 2
    i32.store offset=60
    local.get 2
    i32.const 16
    i32.add
    i32.const 1053576
    call $core::panicking::panic_fmt::h9d777aa95a13e1cc
    unreachable)
  (func $<&T_as_core::fmt::Debug>::fmt::ha777830134b94903 (type 1) (param i32 i32) (result i32)
    (local i32 i32 i64 i64)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load
              local.tee 3
              i32.const 16
              i32.and
              br_if 0 (;@5;)
              local.get 0
              i32.const 8
              i32.add
              i64.load
              local.set 4
              local.get 0
              i64.load
              local.set 5
              local.get 3
              i32.const 32
              i32.and
              br_if 1 (;@4;)
              i64.const 0
              local.get 5
              i64.sub
              local.get 5
              local.get 4
              i64.const 0
              i64.lt_s
              local.tee 0
              select
              i64.const 0
              local.get 4
              local.get 5
              i64.const 0
              i64.ne
              i64.extend_i32_u
              i64.add
              i64.sub
              local.get 4
              local.get 0
              select
              local.get 4
              i64.const -1
              i64.gt_s
              local.get 1
              call $core::fmt::num::fmt_u128::hdfb049706065008d
              local.set 0
              br 2 (;@3;)
            end
            local.get 0
            i32.const 8
            i32.add
            i64.load
            local.set 4
            local.get 0
            i64.load
            local.set 5
            i32.const 128
            local.set 0
            block  ;; label = @5
              loop  ;; label = @6
                local.get 0
                i32.eqz
                br_if 1 (;@5;)
                local.get 2
                local.get 0
                i32.add
                i32.const -1
                i32.add
                local.get 5
                i32.wrap_i64
                i32.const 15
                i32.and
                local.tee 3
                i32.const 48
                i32.or
                local.get 3
                i32.const 87
                i32.add
                local.get 3
                i32.const 10
                i32.lt_u
                select
                i32.store8
                local.get 0
                i32.const -1
                i32.add
                local.set 0
                local.get 5
                i64.const 4
                i64.shr_u
                local.get 4
                i64.const 60
                i64.shl
                i64.or
                local.tee 5
                local.get 4
                i64.const 4
                i64.shr_u
                local.tee 4
                i64.or
                i64.const 0
                i64.ne
                br_if 0 (;@6;)
              end
            end
            local.get 0
            i32.const 129
            i32.ge_u
            br_if 2 (;@2;)
            local.get 1
            i32.const 1
            i32.const 1049616
            i32.const 2
            local.get 2
            local.get 0
            i32.add
            i32.const 128
            local.get 0
            i32.sub
            call $core::fmt::Formatter::pad_integral::h997b1c036893746a
            local.set 0
            br 1 (;@3;)
          end
          i32.const 128
          local.set 0
          block  ;; label = @4
            loop  ;; label = @5
              local.get 0
              i32.eqz
              br_if 1 (;@4;)
              local.get 2
              local.get 0
              i32.add
              i32.const -1
              i32.add
              local.get 5
              i32.wrap_i64
              i32.const 15
              i32.and
              local.tee 3
              i32.const 48
              i32.or
              local.get 3
              i32.const 55
              i32.add
              local.get 3
              i32.const 10
              i32.lt_u
              select
              i32.store8
              local.get 0
              i32.const -1
              i32.add
              local.set 0
              local.get 5
              i64.const 4
              i64.shr_u
              local.get 4
              i64.const 60
              i64.shl
              i64.or
              local.tee 5
              local.get 4
              i64.const 4
              i64.shr_u
              local.tee 4
              i64.or
              i64.const 0
              i64.ne
              br_if 0 (;@5;)
            end
          end
          local.get 0
          i32.const 129
          i32.ge_u
          br_if 2 (;@1;)
          local.get 1
          i32.const 1
          i32.const 1049616
          i32.const 2
          local.get 2
          local.get 0
          i32.add
          i32.const 128
          local.get 0
          i32.sub
          call $core::fmt::Formatter::pad_integral::h997b1c036893746a
          local.set 0
        end
        local.get 2
        i32.const 128
        i32.add
        global.set 0
        local.get 0
        return
      end
      local.get 0
      i32.const 128
      call $core::slice::slice_index_order_fail::h7405a4cf9373f8ba
      unreachable
    end
    local.get 0
    i32.const 128
    call $core::slice::slice_index_order_fail::h7405a4cf9373f8ba
    unreachable)
  (func $<&T_as_core::fmt::Debug>::fmt::h73d15fd2bbd018d3 (type 1) (param i32 i32) (result i32)
    (local i32 i32 i64 i64)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load
              local.tee 3
              i32.const 16
              i32.and
              br_if 0 (;@5;)
              local.get 0
              i32.const 8
              i32.add
              i64.load
              local.set 4
              local.get 0
              i64.load
              local.set 5
              local.get 3
              i32.const 32
              i32.and
              br_if 1 (;@4;)
              local.get 5
              local.get 4
              i32.const 1
              local.get 1
              call $core::fmt::num::fmt_u128::hdfb049706065008d
              local.set 0
              br 2 (;@3;)
            end
            local.get 0
            i32.const 8
            i32.add
            i64.load
            local.set 4
            local.get 0
            i64.load
            local.set 5
            i32.const 128
            local.set 0
            block  ;; label = @5
              loop  ;; label = @6
                local.get 0
                i32.eqz
                br_if 1 (;@5;)
                local.get 2
                local.get 0
                i32.add
                i32.const -1
                i32.add
                local.get 5
                i32.wrap_i64
                i32.const 15
                i32.and
                local.tee 3
                i32.const 48
                i32.or
                local.get 3
                i32.const 87
                i32.add
                local.get 3
                i32.const 10
                i32.lt_u
                select
                i32.store8
                local.get 0
                i32.const -1
                i32.add
                local.set 0
                local.get 5
                i64.const 4
                i64.shr_u
                local.get 4
                i64.const 60
                i64.shl
                i64.or
                local.tee 5
                local.get 4
                i64.const 4
                i64.shr_u
                local.tee 4
                i64.or
                i64.const 0
                i64.ne
                br_if 0 (;@6;)
              end
            end
            local.get 0
            i32.const 129
            i32.ge_u
            br_if 2 (;@2;)
            local.get 1
            i32.const 1
            i32.const 1049616
            i32.const 2
            local.get 2
            local.get 0
            i32.add
            i32.const 128
            local.get 0
            i32.sub
            call $core::fmt::Formatter::pad_integral::h997b1c036893746a
            local.set 0
            br 1 (;@3;)
          end
          i32.const 128
          local.set 0
          block  ;; label = @4
            loop  ;; label = @5
              local.get 0
              i32.eqz
              br_if 1 (;@4;)
              local.get 2
              local.get 0
              i32.add
              i32.const -1
              i32.add
              local.get 5
              i32.wrap_i64
              i32.const 15
              i32.and
              local.tee 3
              i32.const 48
              i32.or
              local.get 3
              i32.const 55
              i32.add
              local.get 3
              i32.const 10
              i32.lt_u
              select
              i32.store8
              local.get 0
              i32.const -1
              i32.add
              local.set 0
              local.get 5
              i64.const 4
              i64.shr_u
              local.get 4
              i64.const 60
              i64.shl
              i64.or
              local.tee 5
              local.get 4
              i64.const 4
              i64.shr_u
              local.tee 4
              i64.or
              i64.const 0
              i64.ne
              br_if 0 (;@5;)
            end
          end
          local.get 0
          i32.const 129
          i32.ge_u
          br_if 2 (;@1;)
          local.get 1
          i32.const 1
          i32.const 1049616
          i32.const 2
          local.get 2
          local.get 0
          i32.add
          i32.const 128
          local.get 0
          i32.sub
          call $core::fmt::Formatter::pad_integral::h997b1c036893746a
          local.set 0
        end
        local.get 2
        i32.const 128
        i32.add
        global.set 0
        local.get 0
        return
      end
      local.get 0
      i32.const 128
      call $core::slice::slice_index_order_fail::h7405a4cf9373f8ba
      unreachable
    end
    local.get 0
    i32.const 128
    call $core::slice::slice_index_order_fail::h7405a4cf9373f8ba
    unreachable)
  (func $test_vec_return_value_memory_is_freed (type 21) (param i32 i32) (result i64)
    (local i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    i32.const 0
    local.set 3
    local.get 2
    i32.const 0
    i32.store offset=12
    i32.const 1024
    local.set 4
    loop  ;; label = @1
      local.get 2
      i32.const 16
      i32.add
      call $sp_runtime_interface_test_wasm::test_api::extern_host_function_impls::return_16kb::ha874f3d9f42c41aa
      local.get 2
      local.get 3
      local.get 2
      i32.load offset=24
      i32.add
      local.tee 3
      i32.store offset=12
      block  ;; label = @2
        local.get 2
        i32.load offset=20
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=16
        call $__rust_dealloc
      end
      local.get 4
      i32.const -1
      i32.add
      local.tee 4
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 3
      i32.const 4194304
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      i32.const 64
      i32.add
      global.set 0
      i64.const 1
      return
    end
    local.get 2
    i32.const 52
    i32.add
    i32.const 18
    i32.store
    local.get 2
    i32.const 36
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i32.const 1053688
    i32.store offset=56
    local.get 2
    i64.const 3
    i64.store offset=20 align=4
    local.get 2
    i32.const 1053048
    i32.store offset=16
    local.get 2
    i32.const 18
    i32.store offset=44
    local.get 2
    local.get 2
    i32.const 40
    i32.add
    i32.store offset=32
    local.get 2
    local.get 2
    i32.const 60
    i32.add
    i32.store offset=48
    local.get 2
    local.get 2
    i32.const 56
    i32.add
    i32.store offset=40
    local.get 2
    local.get 2
    i32.const 12
    i32.add
    i32.store offset=60
    local.get 2
    i32.const 16
    i32.add
    i32.const 1053692
    call $core::panicking::panic_fmt::h9d777aa95a13e1cc
    unreachable)
  (func $sp_runtime_interface_test_wasm::test_api::extern_host_function_impls::return_16kb::ha874f3d9f42c41aa (type 6) (param i32)
    (local i32 i64 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              call $ext_test_api_return_16kb_version_1
              local.tee 2
              i64.const 32
              i64.shr_u
              i32.wrap_i64
              local.tee 3
              br_if 0 (;@5;)
              local.get 0
              i32.const 0
              i32.store offset=8
              local.get 0
              i64.const 4
              i64.store align=4
              br 1 (;@4;)
            end
            local.get 1
            local.get 3
            i32.store offset=20
            local.get 1
            local.get 2
            i32.wrap_i64
            local.tee 4
            i32.store offset=16
            local.get 1
            i32.const 8
            i32.add
            local.get 1
            i32.const 16
            i32.add
            call $<parity_scale_codec::compact::Compact<u32>_as_parity_scale_codec::codec::Decode>::decode::h1d407623be6716d8
            local.get 1
            i32.load offset=8
            br_if 3 (;@1;)
            local.get 1
            i32.load offset=20
            local.tee 5
            local.get 1
            i32.load offset=12
            local.tee 6
            i32.const 2
            i32.shl
            local.tee 3
            i32.lt_u
            br_if 3 (;@1;)
            local.get 3
            i32.const -1
            i32.le_s
            br_if 1 (;@3;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                br_if 0 (;@6;)
                i32.const 1
                local.set 7
                br 1 (;@5;)
              end
              local.get 3
              call $__rust_alloc_zeroed
              local.tee 7
              i32.eqz
              br_if 3 (;@2;)
              local.get 7
              local.get 1
              i32.load offset=16
              local.tee 8
              local.get 3
              call $memcpy
              drop
              local.get 1
              local.get 5
              local.get 3
              i32.sub
              i32.store offset=20
              local.get 1
              local.get 8
              local.get 3
              i32.add
              i32.store offset=16
            end
            local.get 7
            i32.eqz
            br_if 3 (;@1;)
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 7
                    i32.const 3
                    i32.and
                    br_if 1 (;@7;)
                    local.get 6
                    i32.const 1073741823
                    i32.and
                    local.tee 3
                    br_if 2 (;@6;)
                    local.get 7
                    call $__rust_dealloc
                  end
                  i32.const 4
                  local.set 7
                  i32.const 0
                  local.set 3
                  br 2 (;@5;)
                end
                local.get 7
                call $__rust_dealloc
                br 5 (;@1;)
              end
              local.get 7
              i32.eqz
              br_if 4 (;@1;)
            end
            local.get 0
            local.get 3
            i32.store offset=8
            local.get 0
            local.get 3
            i32.store offset=4
            local.get 0
            local.get 7
            i32.store
            local.get 4
            call $__rust_dealloc
          end
          local.get 1
          i32.const 32
          i32.add
          global.set 0
          return
        end
        call $alloc::raw_vec::RawVec<T_A>::allocate_in::__closure__::h5508a6ea1d2d4629
        unreachable
      end
      call $alloc::alloc::handle_alloc_error::h95468c66a83efacf
      unreachable
    end
    i32.const 1053992
    i32.const 46
    local.get 1
    i32.const 24
    i32.add
    i32.const 1054144
    i32.const 1054040
    call $core::option::expect_none_failed::h7674c343b6d036bd
    unreachable)
  (func $<&T_as_core::fmt::Debug>::fmt::hdbaca0fdb71ab3b3 (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load
              local.tee 3
              i32.const 16
              i32.and
              br_if 0 (;@5;)
              local.get 0
              i32.load
              local.set 4
              local.get 3
              i32.const 32
              i32.and
              br_if 1 (;@4;)
              local.get 4
              i64.extend_i32_u
              local.get 1
              call $core::fmt::num::imp::fmt_u64::h8041c6249cc163db
              local.set 0
              br 2 (;@3;)
            end
            local.get 0
            i32.load
            local.set 4
            i32.const 0
            local.set 0
            loop  ;; label = @5
              local.get 2
              local.get 0
              i32.add
              i32.const 127
              i32.add
              local.get 4
              i32.const 15
              i32.and
              local.tee 3
              i32.const 48
              i32.or
              local.get 3
              i32.const 87
              i32.add
              local.get 3
              i32.const 10
              i32.lt_u
              select
              i32.store8
              local.get 0
              i32.const -1
              i32.add
              local.set 0
              local.get 4
              i32.const 4
              i32.shr_u
              local.tee 4
              br_if 0 (;@5;)
            end
            local.get 0
            i32.const 128
            i32.add
            local.tee 4
            i32.const 129
            i32.ge_u
            br_if 2 (;@2;)
            local.get 1
            i32.const 1
            i32.const 1049616
            i32.const 2
            local.get 2
            local.get 0
            i32.add
            i32.const 128
            i32.add
            i32.const 0
            local.get 0
            i32.sub
            call $core::fmt::Formatter::pad_integral::h997b1c036893746a
            local.set 0
            br 1 (;@3;)
          end
          i32.const 0
          local.set 0
          loop  ;; label = @4
            local.get 2
            local.get 0
            i32.add
            i32.const 127
            i32.add
            local.get 4
            i32.const 15
            i32.and
            local.tee 3
            i32.const 48
            i32.or
            local.get 3
            i32.const 55
            i32.add
            local.get 3
            i32.const 10
            i32.lt_u
            select
            i32.store8
            local.get 0
            i32.const -1
            i32.add
            local.set 0
            local.get 4
            i32.const 4
            i32.shr_u
            local.tee 4
            br_if 0 (;@4;)
          end
          local.get 0
          i32.const 128
          i32.add
          local.tee 4
          i32.const 129
          i32.ge_u
          br_if 2 (;@1;)
          local.get 1
          i32.const 1
          i32.const 1049616
          i32.const 2
          local.get 2
          local.get 0
          i32.add
          i32.const 128
          i32.add
          i32.const 0
          local.get 0
          i32.sub
          call $core::fmt::Formatter::pad_integral::h997b1c036893746a
          local.set 0
        end
        local.get 2
        i32.const 128
        i32.add
        global.set 0
        local.get 0
        return
      end
      local.get 4
      i32.const 128
      call $core::slice::slice_index_order_fail::h7405a4cf9373f8ba
      unreachable
    end
    local.get 4
    i32.const 128
    call $core::slice::slice_index_order_fail::h7405a4cf9373f8ba
    unreachable)
  (func $test_encoded_return_value_memory_is_freed (type 21) (param i32 i32) (result i64)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    i32.const 0
    local.set 3
    local.get 2
    i32.const 0
    i32.store offset=12
    i32.const 1024
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            i32.const 16384
            call $__rust_alloc_zeroed
            local.tee 5
            i32.eqz
            br_if 1 (;@3;)
            local.get 2
            i32.const 16
            i32.add
            local.get 5
            i32.const 16384
            i32.const 16384
            call $sp_runtime_interface_test_wasm::test_api::extern_host_function_impls::return_option_input::h5b473d1a66f47d84
            local.get 2
            i32.load offset=16
            local.tee 6
            i32.eqz
            br_if 2 (;@2;)
            local.get 2
            i32.load offset=24
            local.set 5
            block  ;; label = @5
              local.get 2
              i32.load offset=20
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              call $__rust_dealloc
            end
            local.get 2
            local.get 3
            local.get 5
            i32.add
            local.tee 3
            i32.store offset=12
            local.get 4
            i32.const -1
            i32.add
            local.tee 4
            br_if 0 (;@4;)
          end
          local.get 3
          i32.const 16777216
          i32.eq
          br_if 2 (;@1;)
          local.get 2
          i32.const 52
          i32.add
          i32.const 18
          i32.store
          local.get 2
          i32.const 36
          i32.add
          i32.const 2
          i32.store
          local.get 2
          i32.const 1053768
          i32.store offset=56
          local.get 2
          i64.const 3
          i64.store offset=20 align=4
          local.get 2
          i32.const 1053048
          i32.store offset=16
          local.get 2
          i32.const 18
          i32.store offset=44
          local.get 2
          local.get 2
          i32.const 40
          i32.add
          i32.store offset=32
          local.get 2
          local.get 2
          i32.const 60
          i32.add
          i32.store offset=48
          local.get 2
          local.get 2
          i32.const 56
          i32.add
          i32.store offset=40
          local.get 2
          local.get 2
          i32.const 12
          i32.add
          i32.store offset=60
          local.get 2
          i32.const 16
          i32.add
          i32.const 1053772
          call $core::panicking::panic_fmt::h9d777aa95a13e1cc
          unreachable
        end
        call $alloc::alloc::handle_alloc_error::h95468c66a83efacf
        unreachable
      end
      i32.const 1053708
      i32.const 43
      i32.const 1053752
      call $core::panicking::panic::hc1d1fa8a09aabda8
      unreachable
    end
    local.get 2
    i32.const 64
    i32.add
    global.set 0
    i64.const 1)
  (func $test_array_return_value_memory_is_freed (type 21) (param i32 i32) (result i64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store8 offset=15
    i32.const 1048576
    local.set 3
    local.get 2
    i32.const 72
    i32.add
    local.set 4
    local.get 2
    i32.const 64
    i32.add
    local.set 5
    local.get 2
    i32.const 56
    i32.add
    local.set 6
    local.get 2
    i32.const 48
    i32.add
    local.set 7
    i32.const 0
    local.set 8
    loop  ;; label = @1
      local.get 4
      i32.const 0
      i32.store16
      local.get 5
      i64.const 0
      i64.store
      local.get 6
      i64.const 0
      i64.store
      local.get 7
      i64.const 0
      i64.store
      local.get 2
      i64.const 0
      i64.store offset=40
      local.get 2
      i32.const 40
      i32.add
      call $ext_test_api_get_and_return_array_version_1
      local.tee 9
      i32.load8_u offset=1
      local.set 10
      local.get 9
      call $__rust_dealloc
      local.get 2
      local.get 8
      local.get 10
      i32.add
      local.tee 8
      i32.store8 offset=15
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 8
      i32.const 255
      i32.and
      br_if 0 (;@1;)
      local.get 2
      i32.const 80
      i32.add
      global.set 0
      i64.const 1
      return
    end
    local.get 2
    i32.const 28
    i32.add
    i32.const 19
    i32.store
    local.get 2
    i32.const 60
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i32.const 1053788
    i32.store offset=32
    local.get 2
    i64.const 3
    i64.store offset=44 align=4
    local.get 2
    i32.const 1053048
    i32.store offset=40
    local.get 2
    i32.const 19
    i32.store offset=20
    local.get 2
    local.get 2
    i32.const 16
    i32.add
    i32.store offset=56
    local.get 2
    local.get 2
    i32.const 36
    i32.add
    i32.store offset=24
    local.get 2
    local.get 2
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 2
    local.get 2
    i32.const 15
    i32.add
    i32.store offset=36
    local.get 2
    i32.const 40
    i32.add
    i32.const 1053792
    call $core::panicking::panic_fmt::h9d777aa95a13e1cc
    unreachable)
  (func $<&T_as_core::fmt::Debug>::fmt::h8d165ac6bb6f657c (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load
              local.tee 3
              i32.const 16
              i32.and
              br_if 0 (;@5;)
              local.get 0
              i32.load8_u
              local.set 4
              local.get 3
              i32.const 32
              i32.and
              br_if 1 (;@4;)
              local.get 4
              i64.extend_i32_u
              i64.const 255
              i64.and
              local.get 1
              call $core::fmt::num::imp::fmt_u64::h8041c6249cc163db
              local.set 0
              br 2 (;@3;)
            end
            local.get 0
            i32.load8_u
            local.set 4
            i32.const 0
            local.set 0
            loop  ;; label = @5
              local.get 2
              local.get 0
              i32.add
              i32.const 127
              i32.add
              local.get 4
              i32.const 15
              i32.and
              local.tee 3
              i32.const 48
              i32.or
              local.get 3
              i32.const 87
              i32.add
              local.get 3
              i32.const 10
              i32.lt_u
              select
              i32.store8
              local.get 0
              i32.const -1
              i32.add
              local.set 0
              local.get 4
              i32.const 4
              i32.shr_u
              i32.const 15
              i32.and
              local.tee 4
              br_if 0 (;@5;)
            end
            local.get 0
            i32.const 128
            i32.add
            local.tee 4
            i32.const 129
            i32.ge_u
            br_if 2 (;@2;)
            local.get 1
            i32.const 1
            i32.const 1049616
            i32.const 2
            local.get 2
            local.get 0
            i32.add
            i32.const 128
            i32.add
            i32.const 0
            local.get 0
            i32.sub
            call $core::fmt::Formatter::pad_integral::h997b1c036893746a
            local.set 0
            br 1 (;@3;)
          end
          i32.const 0
          local.set 0
          loop  ;; label = @4
            local.get 2
            local.get 0
            i32.add
            i32.const 127
            i32.add
            local.get 4
            i32.const 15
            i32.and
            local.tee 3
            i32.const 48
            i32.or
            local.get 3
            i32.const 55
            i32.add
            local.get 3
            i32.const 10
            i32.lt_u
            select
            i32.store8
            local.get 0
            i32.const -1
            i32.add
            local.set 0
            local.get 4
            i32.const 4
            i32.shr_u
            i32.const 15
            i32.and
            local.tee 4
            br_if 0 (;@4;)
          end
          local.get 0
          i32.const 128
          i32.add
          local.tee 4
          i32.const 129
          i32.ge_u
          br_if 2 (;@1;)
          local.get 1
          i32.const 1
          i32.const 1049616
          i32.const 2
          local.get 2
          local.get 0
          i32.add
          i32.const 128
          i32.add
          i32.const 0
          local.get 0
          i32.sub
          call $core::fmt::Formatter::pad_integral::h997b1c036893746a
          local.set 0
        end
        local.get 2
        i32.const 128
        i32.add
        global.set 0
        local.get 0
        return
      end
      local.get 4
      i32.const 128
      call $core::slice::slice_index_order_fail::h7405a4cf9373f8ba
      unreachable
    end
    local.get 4
    i32.const 128
    call $core::slice::slice_index_order_fail::h7405a4cf9373f8ba
    unreachable)
  (func $test_ext_blake2_256 (type 21) (param i32 i32) (result i64)
    (local i32 i32 i32 i32 i32 i64 i64 i64)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 96
    i32.add
    i32.const 24
    i32.add
    local.tee 3
    i64.const 0
    i64.store
    local.get 2
    i32.const 96
    i32.add
    i32.const 16
    i32.add
    local.tee 4
    i64.const 0
    i64.store
    local.get 2
    i32.const 96
    i32.add
    i32.const 8
    i32.add
    local.tee 5
    i64.const 0
    i64.store
    local.get 2
    i64.const 0
    i64.store offset=96
    i32.const 1053808
    i32.const 20
    local.get 2
    i32.const 96
    i32.add
    call $ext_blake2_256
    local.get 2
    i32.const 24
    i32.add
    local.get 3
    i64.load
    i64.store
    local.get 2
    i32.const 16
    i32.add
    local.get 4
    i64.load
    i64.store
    local.get 2
    i32.const 8
    i32.add
    local.get 5
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=96
    i64.store
    i32.const 1053808
    i64.extend_i32_u
    i64.const 85899345920
    i64.or
    call $ext_hashing_blake2_256_version_1
    local.tee 6
    i64.load align=1
    local.set 7
    local.get 6
    i32.const 8
    i32.add
    i64.load align=1
    local.set 8
    local.get 6
    i32.const 16
    i32.add
    i64.load align=1
    local.set 9
    local.get 3
    local.get 6
    i32.const 24
    i32.add
    i64.load align=1
    i64.store
    local.get 4
    local.get 9
    i64.store
    local.get 5
    local.get 8
    i64.store
    local.get 2
    local.get 7
    i64.store offset=96
    local.get 6
    call $__rust_dealloc
    local.get 2
    local.get 2
    i32.const 96
    i32.add
    i32.store offset=36
    local.get 2
    local.get 2
    i32.store offset=40
    local.get 2
    i32.const 32
    i32.store offset=44
    block  ;; label = @1
      local.get 2
      i32.const 96
      i32.add
      local.get 2
      i32.const 32
      call $bcmp
      br_if 0 (;@1;)
      local.get 2
      i32.const 128
      i32.add
      global.set 0
      i64.const 1
      return
    end
    local.get 2
    i32.const 84
    i32.add
    i32.const 12
    i32.store
    local.get 2
    i32.const 48
    i32.add
    i32.const 20
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i64.const 3
    i64.store offset=52 align=4
    local.get 2
    i32.const 1053048
    i32.store offset=48
    local.get 2
    i32.const 20
    i32.store offset=76
    local.get 2
    local.get 2
    i32.const 36
    i32.add
    i32.store offset=88
    local.get 2
    local.get 2
    i32.const 72
    i32.add
    i32.store offset=64
    local.get 2
    local.get 2
    i32.const 92
    i32.add
    i32.store offset=80
    local.get 2
    local.get 2
    i32.const 88
    i32.add
    i32.store offset=72
    local.get 2
    local.get 2
    i32.const 40
    i32.add
    i32.store offset=92
    local.get 2
    i32.const 48
    i32.add
    i32.const 1053828
    call $core::panicking::panic_fmt::h9d777aa95a13e1cc
    unreachable)
  (func $<&T_as_core::fmt::Debug>::fmt::hcedf78cf81749d6c (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    i32.load
    local.set 0
    i32.const 1
    local.set 3
    local.get 1
    i32.load offset=24
    i32.const 1052990
    i32.const 1
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 0)
    local.set 4
    local.get 2
    i32.const 0
    i32.store8 offset=5
    local.get 2
    local.get 4
    i32.store8 offset=4
    local.get 2
    local.get 1
    i32.store
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 1
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 2
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 3
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 4
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 5
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 6
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 7
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 8
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 9
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 10
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 11
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 12
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 13
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 14
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 15
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 16
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 17
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 18
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 19
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 20
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 21
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 22
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 23
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 24
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 25
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 26
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 27
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 28
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 29
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 30
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 31
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    drop
    block  ;; label = @1
      local.get 2
      i32.load8_u offset=4
      br_if 0 (;@1;)
      local.get 2
      i32.load
      local.tee 0
      i32.load offset=24
      i32.const 1052989
      i32.const 1
      local.get 0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 0)
      local.set 3
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 3)
  (func $core::array::<impl_core::fmt::Debug_for__T____>::fmt::h318edea1d44901e6 (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    i32.const 1
    local.set 3
    local.get 1
    i32.load offset=24
    i32.const 1052990
    i32.const 1
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 0)
    local.set 4
    local.get 2
    i32.const 0
    i32.store8 offset=5
    local.get 2
    local.get 4
    i32.store8 offset=4
    local.get 2
    local.get 1
    i32.store
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 1
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 2
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 3
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 4
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 5
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 6
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 7
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 8
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 9
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 10
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 11
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 12
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 13
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 14
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    local.set 1
    local.get 2
    local.get 0
    i32.const 15
    i32.add
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 1053852
    call $core::fmt::builders::DebugSet::entry::ha6ff3dcf31579c07
    drop
    block  ;; label = @1
      local.get 2
      i32.load8_u offset=4
      br_if 0 (;@1;)
      local.get 2
      i32.load
      local.tee 0
      i32.load offset=24
      i32.const 1052989
      i32.const 1
      local.get 0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 0)
      local.set 3
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 3)
  (func $<parity_scale_codec::compact::Compact<u32>_as_parity_scale_codec::codec::Decode>::decode::h1d407623be6716d8 (type 14) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load
        local.tee 3
        i32.load8_u
        local.set 4
        local.get 1
        local.get 2
        i32.const -1
        i32.add
        local.tee 5
        i32.store offset=4
        i32.const 1
        local.set 6
        local.get 1
        local.get 3
        i32.const 1
        i32.add
        i32.store
        block  ;; label = @3
          local.get 4
          i32.const 3
          i32.and
          local.tee 7
          i32.const 3
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 7
                br_table 0 (;@6;) 1 (;@5;) 2 (;@4;) 0 (;@6;)
              end
              local.get 4
              i32.const 2
              i32.shr_u
              local.set 7
              i32.const 0
              local.set 6
              br 4 (;@1;)
            end
            i32.const 1
            local.set 6
            block  ;; label = @5
              local.get 5
              br_if 0 (;@5;)
              br 4 (;@1;)
            end
            local.get 3
            i32.load8_u offset=1
            local.set 5
            local.get 1
            local.get 2
            i32.const -2
            i32.add
            i32.store offset=4
            local.get 1
            local.get 3
            i32.const 2
            i32.add
            i32.store
            local.get 5
            i32.const 8
            i32.shl
            local.get 4
            i32.or
            local.tee 1
            i32.const 65535
            i32.and
            i32.const 256
            i32.lt_u
            br_if 3 (;@1;)
            local.get 1
            i32.const 65532
            i32.and
            i32.const 2
            i32.shr_u
            local.set 7
            i32.const 0
            local.set 6
            br 3 (;@1;)
          end
          local.get 5
          i32.const 3
          i32.lt_u
          br_if 1 (;@2;)
          local.get 3
          i32.const 3
          i32.add
          i32.load8_u
          local.set 6
          local.get 3
          i32.load16_u offset=1 align=1
          local.set 7
          local.get 1
          local.get 2
          i32.const -4
          i32.add
          i32.store offset=4
          local.get 1
          local.get 3
          i32.const 4
          i32.add
          i32.store
          local.get 7
          local.get 6
          i32.const 16
          i32.shl
          i32.or
          i32.const 8
          i32.shl
          local.get 4
          i32.or
          local.tee 1
          i32.const 65536
          i32.lt_u
          local.set 6
          local.get 1
          i32.const 2
          i32.shr_u
          local.set 7
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 4
          i32.const 3
          i32.le_u
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
        local.get 5
        i32.const 4
        i32.lt_u
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=1 align=1
        local.set 7
        local.get 1
        local.get 2
        i32.const -5
        i32.add
        i32.store offset=4
        local.get 1
        local.get 3
        i32.const 5
        i32.add
        i32.store
        local.get 7
        i32.const 1073741824
        i32.lt_u
        local.set 6
        br 1 (;@1;)
      end
      i32.const 1
      local.set 6
    end
    local.get 0
    local.get 7
    i32.store offset=4
    local.get 0
    local.get 6
    i32.store)
  (func $sp_runtime_interface_test_wasm::test_api::extern_host_function_impls::overwrite_native_function_implementation::h2e02ac6e3930550c (type 3) (result i32)
    call $ext_test_api_overwrite_native_function_implementation_version_1
    i32.const 1
    i32.eq)
  (func $memset (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $memcpy (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $bcmp (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load8_u
          local.tee 4
          local.get 1
          i32.load8_u
          local.tee 5
          i32.ne
          br_if 1 (;@2;)
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          i32.eqz
          br_if 2 (;@1;)
          br 0 (;@3;)
        end
      end
      local.get 4
      local.get 5
      i32.sub
      local.set 3
    end
    local.get 3)
  (func $__ashlti3 (type 22) (param i32 i64 i64 i32)
    (local i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 64
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const 0
        local.get 3
        i32.sub
        i32.const 63
        i32.and
        i64.extend_i32_u
        i64.shr_u
        local.get 2
        local.get 3
        i32.const 63
        i32.and
        i64.extend_i32_u
        local.tee 4
        i64.shl
        i64.or
        local.set 2
        local.get 1
        local.get 4
        i64.shl
        local.set 1
        br 1 (;@1;)
      end
      local.get 1
      local.get 3
      i32.const 63
      i32.and
      i64.extend_i32_u
      i64.shl
      local.set 2
      i64.const 0
      local.set 1
    end
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 2
    i64.store offset=8)
  (func $__lshrti3 (type 22) (param i32 i64 i64 i32)
    (local i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 64
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 3
        i32.const 63
        i32.and
        i64.extend_i32_u
        local.tee 4
        i64.shr_u
        local.get 2
        i32.const 0
        local.get 3
        i32.sub
        i32.const 63
        i32.and
        i64.extend_i32_u
        i64.shl
        i64.or
        local.set 1
        local.get 2
        local.get 4
        i64.shr_u
        local.set 2
        br 1 (;@1;)
      end
      local.get 2
      local.get 3
      i32.const 63
      i32.and
      i64.extend_i32_u
      i64.shr_u
      local.set 1
      i64.const 0
      local.set 2
    end
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 2
    i64.store offset=8)
  (func $__multi3 (type 23) (param i32 i64 i64 i64 i64)
    (local i64 i64)
    local.get 0
    local.get 3
    i64.const 32
    i64.shr_u
    local.tee 5
    local.get 1
    i64.const 32
    i64.shr_u
    local.tee 6
    i64.mul
    local.get 3
    local.get 2
    i64.mul
    i64.add
    local.get 4
    local.get 1
    i64.mul
    i64.add
    local.get 3
    i64.const 4294967295
    i64.and
    local.tee 3
    local.get 1
    i64.const 4294967295
    i64.and
    local.tee 1
    i64.mul
    local.tee 4
    i64.const 32
    i64.shr_u
    local.get 3
    local.get 6
    i64.mul
    i64.add
    local.tee 3
    i64.const 32
    i64.shr_u
    i64.add
    local.get 3
    i64.const 4294967295
    i64.and
    local.get 5
    local.get 1
    i64.mul
    i64.add
    local.tee 3
    i64.const 32
    i64.shr_u
    i64.add
    i64.store offset=8
    local.get 0
    local.get 3
    i64.const 32
    i64.shl
    local.get 4
    i64.const 4294967295
    i64.and
    i64.or
    i64.store)
  (func $__udivti3 (type 23) (param i32 i64 i64 i64 i64)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    i32.const 0
    call $__udivmodti4
    local.get 5
    i64.load
    local.set 1
    local.get 0
    local.get 5
    i32.const 8
    i32.add
    i64.load
    i64.store offset=8
    local.get 0
    local.get 1
    i64.store
    local.get 5
    i32.const 16
    i32.add
    global.set 0)
  (func $__udivmodti4 (type 24) (param i32 i64 i64 i64 i64 i32)
    (local i32 i32 i32 i64 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 6
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 2
                        i64.eqz
                        br_if 0 (;@10;)
                        local.get 3
                        i64.eqz
                        br_if 1 (;@9;)
                        local.get 4
                        i64.eqz
                        br_if 2 (;@8;)
                        local.get 4
                        i64.clz
                        i32.wrap_i64
                        local.get 2
                        i64.clz
                        i32.wrap_i64
                        i32.sub
                        local.tee 7
                        i32.const 63
                        i32.gt_u
                        br_if 3 (;@7;)
                        i32.const 127
                        local.get 7
                        i32.sub
                        local.set 8
                        local.get 7
                        i32.const 1
                        i32.add
                        local.set 7
                        br 8 (;@2;)
                      end
                      block  ;; label = @10
                        local.get 4
                        i64.eqz
                        br_if 0 (;@10;)
                        local.get 5
                        br_if 4 (;@6;)
                        br 6 (;@4;)
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 5
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 3
                          i64.const 0
                          i64.eq
                          br_if 6 (;@5;)
                          local.get 5
                          i64.const 0
                          i64.store offset=8
                          local.get 5
                          local.get 1
                          local.get 3
                          i64.rem_u
                          i64.store
                          br 1 (;@10;)
                        end
                        local.get 3
                        i64.const 0
                        i64.eq
                        br_if 5 (;@5;)
                      end
                      local.get 1
                      local.get 3
                      i64.div_u
                      local.set 1
                      br 6 (;@3;)
                    end
                    local.get 4
                    i64.eqz
                    br_if 3 (;@5;)
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i64.eqz
                          br_if 0 (;@11;)
                          local.get 4
                          i64.popcnt
                          i64.const 1
                          i64.eq
                          br_if 1 (;@10;)
                          local.get 4
                          i64.clz
                          i32.wrap_i64
                          local.get 2
                          i64.clz
                          i32.wrap_i64
                          i32.sub
                          local.tee 7
                          i32.const 62
                          i32.gt_u
                          br_if 2 (;@9;)
                          i32.const 127
                          local.get 7
                          i32.sub
                          local.set 8
                          local.get 7
                          i32.const 1
                          i32.add
                          local.set 7
                          br 9 (;@2;)
                        end
                        block  ;; label = @11
                          local.get 5
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 5
                          i64.const 0
                          i64.store
                          local.get 5
                          local.get 2
                          local.get 4
                          i64.rem_u
                          i64.store offset=8
                        end
                        local.get 2
                        local.get 4
                        i64.div_u
                        local.set 1
                        br 7 (;@3;)
                      end
                      block  ;; label = @10
                        local.get 5
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 5
                        local.get 1
                        i64.store
                        local.get 5
                        local.get 4
                        i64.const -1
                        i64.add
                        local.get 2
                        i64.and
                        i64.store offset=8
                      end
                      local.get 2
                      local.get 4
                      i64.ctz
                      i64.const 63
                      i64.and
                      i64.shr_u
                      local.set 1
                      br 6 (;@3;)
                    end
                    local.get 5
                    i32.eqz
                    br_if 4 (;@4;)
                    br 2 (;@6;)
                  end
                  block  ;; label = @8
                    local.get 3
                    i64.popcnt
                    i64.const 1
                    i64.eq
                    br_if 0 (;@8;)
                    i32.const -65
                    local.get 3
                    i64.clz
                    i32.wrap_i64
                    local.get 2
                    i64.clz
                    i32.wrap_i64
                    i32.sub
                    local.tee 7
                    i32.sub
                    local.set 8
                    local.get 7
                    i32.const 65
                    i32.add
                    local.set 7
                    br 6 (;@2;)
                  end
                  block  ;; label = @8
                    local.get 5
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 5
                    i64.const 0
                    i64.store offset=8
                    local.get 5
                    local.get 3
                    i64.const -1
                    i64.add
                    local.get 1
                    i64.and
                    i64.store
                  end
                  local.get 3
                  i64.const 1
                  i64.eq
                  br_if 6 (;@1;)
                  local.get 6
                  i32.const 32
                  i32.add
                  local.get 1
                  local.get 2
                  local.get 3
                  i64.ctz
                  i32.wrap_i64
                  call $__lshrti3
                  local.get 6
                  i32.const 40
                  i32.add
                  i64.load
                  local.set 2
                  local.get 6
                  i64.load offset=32
                  local.set 1
                  br 6 (;@1;)
                end
                local.get 5
                i32.eqz
                br_if 2 (;@4;)
              end
              local.get 5
              local.get 1
              i64.store
              local.get 5
              local.get 2
              i64.store offset=8
              i64.const 0
              local.set 1
              br 2 (;@3;)
            end
            unreachable
            unreachable
          end
          i64.const 0
          local.set 1
        end
        i64.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 6
      local.get 1
      local.get 2
      local.get 8
      i32.const 127
      i32.and
      call $__ashlti3
      local.get 6
      i32.const 16
      i32.add
      local.get 1
      local.get 2
      local.get 7
      i32.const 127
      i32.and
      call $__lshrti3
      local.get 6
      i32.const 8
      i32.add
      i64.load
      local.set 2
      local.get 6
      i32.const 16
      i32.add
      i32.const 8
      i32.add
      i64.load
      local.set 9
      local.get 6
      i64.load
      local.set 1
      local.get 6
      i64.load offset=16
      local.set 10
      block  ;; label = @2
        block  ;; label = @3
          local.get 7
          br_if 0 (;@3;)
          i64.const 0
          local.set 11
          i64.const 0
          local.set 12
          br 1 (;@2;)
        end
        i64.const 0
        local.set 12
        i64.const 0
        local.set 13
        loop  ;; label = @3
          local.get 9
          i64.const 1
          i64.shl
          local.get 10
          i64.const 63
          i64.shr_u
          i64.or
          local.tee 11
          local.get 11
          i64.const -1
          i64.xor
          local.get 4
          i64.add
          local.get 10
          i64.const 1
          i64.shl
          local.get 2
          i64.const 63
          i64.shr_u
          i64.or
          local.tee 10
          i64.const -1
          i64.xor
          local.tee 11
          local.get 3
          i64.add
          local.get 11
          i64.lt_u
          i64.extend_i32_u
          i64.add
          i64.const 63
          i64.shr_s
          local.tee 11
          local.get 4
          i64.and
          i64.sub
          local.get 10
          local.get 11
          local.get 3
          i64.and
          local.tee 14
          i64.lt_u
          i64.extend_i32_u
          i64.sub
          local.set 9
          local.get 10
          local.get 14
          i64.sub
          local.set 10
          i64.const 0
          local.get 2
          i64.const 1
          i64.shl
          local.get 1
          i64.const 63
          i64.shr_u
          i64.or
          i64.or
          local.set 2
          local.get 13
          local.get 1
          i64.const 1
          i64.shl
          i64.or
          local.set 1
          local.get 11
          i64.const 1
          i64.and
          local.tee 11
          local.set 13
          local.get 7
          i32.const -1
          i32.add
          local.tee 7
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        local.get 10
        i64.store
        local.get 5
        local.get 9
        i64.store offset=8
      end
      local.get 12
      local.get 2
      i64.const 1
      i64.shl
      local.get 1
      i64.const 63
      i64.shr_u
      i64.or
      i64.or
      local.set 2
      local.get 11
      local.get 1
      i64.const 1
      i64.shl
      i64.or
      local.set 1
    end
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 2
    i64.store offset=8
    local.get 6
    i32.const 48
    i32.add
    global.set 0)
  (table (;0;) 34 34 funcref)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1054404))
  (global (;2;) i32 (i32.const 1054404))
  (export "__indirect_function_table" (table 0))
  (export "import_sp_io" (func $import_sp_io))
  (export "test_return_data" (func $test_return_data))
  (export "test_return_option_data" (func $test_return_option_data))
  (export "test_set_storage" (func $test_set_storage))
  (export "test_return_value_into_mutable_reference" (func $test_return_value_into_mutable_reference))
  (export "test_get_and_return_array" (func $test_get_and_return_array))
  (export "test_array_as_mutable_reference" (func $test_array_as_mutable_reference))
  (export "test_return_input_public_key" (func $test_return_input_public_key))
  (export "test_invalid_utf8_data_should_return_an_error" (func $test_invalid_utf8_data_should_return_an_error))
  (export "test_overwrite_native_function_implementation" (func $test_overwrite_native_function_implementation))
  (export "test_u128_i128_as_parameter_and_return_value" (func $test_u128_i128_as_parameter_and_return_value))
  (export "test_vec_return_value_memory_is_freed" (func $test_vec_return_value_memory_is_freed))
  (export "test_encoded_return_value_memory_is_freed" (func $test_encoded_return_value_memory_is_freed))
  (export "test_array_return_value_memory_is_freed" (func $test_array_return_value_memory_is_freed))
  (export "test_ext_blake2_256" (func $test_ext_blake2_256))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (elem (;0;) (i32.const 1) $core::fmt::num::imp::<impl_core::fmt::Display_for_u32>::fmt::h7f0cf35638f3b831 $core::ops::function::FnOnce::call_once::ha43e5a3f94681fe4 $<&T_as_core::fmt::Debug>::fmt::h9a9a096f5c126a08 $<&T_as_core::fmt::Display>::fmt::ha85ab5c1b1ac2ab6 $<&T_as_core::fmt::Display>::fmt::h1b3adb1720b7cb28 $<core::ops::range::Range<Idx>_as_core::fmt::Debug>::fmt::hb15360d9fd0c9845 $<char_as_core::fmt::Debug>::fmt::hb0f9000402a50a08 $<&T_as_core::fmt::Display>::fmt::hb7221991a49e7417 $<&T_as_core::fmt::Display>::fmt::hc5dff42c5e52f2b2 $<&T_as_core::fmt::Debug>::fmt::haa9fd03754d656e8 $<&T_as_core::fmt::Debug>::fmt::h5f548e5b7a992762 $<&T_as_core::fmt::Debug>::fmt::hf0a4786d747b2aa9 $<&T_as_core::fmt::Debug>::fmt::h5043b14c1470b5eb $<&T_as_core::fmt::Debug>::fmt::h71f65314f2eeb4d0 $sp_runtime_interface_test_wasm::test_overwrite_native_function_implementation::new_implementation::haf6cb9798bde0664 $<&T_as_core::fmt::Debug>::fmt::ha777830134b94903 $<&T_as_core::fmt::Debug>::fmt::h73d15fd2bbd018d3 $<&T_as_core::fmt::Debug>::fmt::hdbaca0fdb71ab3b3 $<&T_as_core::fmt::Debug>::fmt::h8d165ac6bb6f657c $<&T_as_core::fmt::Debug>::fmt::hcedf78cf81749d6c $core::ptr::drop_in_place::h01d3a07d41e67b5f $<&mut_W_as_core::fmt::Write>::write_str::hfabb95587de39d08 $<&mut_W_as_core::fmt::Write>::write_char::hcec48694facba40a $<&mut_W_as_core::fmt::Write>::write_fmt::h7d7d5955c2920077 $<core::fmt::Error_as_core::fmt::Debug>::fmt::h306daadc7156780d $<T_as_core::any::Any>::type_id::hdbe3f0a3bcb32287 $<core::fmt::builders::PadAdapter_as_core::fmt::Write>::write_str::h52868ed03f4312a9 $core::fmt::Write::write_char::h323af399add48192 $core::fmt::Write::write_fmt::h8beba38d970a87e1 $<&mut_W_as_core::fmt::Write>::write_str::h8442125df66de0a1 $<&mut_W_as_core::fmt::Write>::write_char::hd45b5cd1ca1e33b0 $<&mut_W_as_core::fmt::Write>::write_fmt::h1f3c10dda65a48b3 $sp_runtime_interface_test_wasm::test_api::extern_host_function_impls::overwrite_native_function_implementation::h2e02ac6e3930550c)
  (data (;0;) (i32.const 1048576) "capacity overflow\00\00\00$\00\10\00\17\00\00\00\f0\02\00\00\05\00\00\00src/liballoc/raw_vec.rs\00\cb\00\10\00F\00\00\00X\01\00\00\13\00\00\00\15\00\00\00\04\00\00\00\04\00\00\00\16\00\00\00\17\00\00\00\18\00\00\00a formatting trait implementation returned an error\00\15\00\00\00\00\00\00\00\01\00\00\00\19\00\00\00\b8\00\10\00\13\00\00\00;\02\00\00\05\00\00\00src/liballoc/fmt.rs/rustc/4ad62488258972bdb0e2df225d100f99ef58dbad/src/libcore/fmt/mod.rs\00\00\004\01\10\00 \00\00\00T\01\10\00\12\00\00\00\15\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00index out of bounds: the len is  but the index is 00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00\00h\02\10\00\06\00\00\00n\02\10\00\22\00\00\00P\02\10\00\18\00\00\00\b3\0a\00\00\05\00\00\00src/libcore/slice/mod.rsindex  out of range for slice of length \b0\02\10\00\16\00\00\00\c6\02\10\00\0d\00\00\00P\02\10\00\18\00\00\00\b9\0a\00\00\05\00\00\00slice index starts at  but ends at [...]\8e\03\10\00\0b\00\00\00\9a\10\10\00\16\00\00\009\12\10\00\01\00\00\00x\03\10\00\16\00\00\00\92\08\00\00\09\00\00\00x\10\10\00\0e\00\00\00\86\10\10\00\04\00\00\00\8a\10\10\00\10\00\00\009\12\10\00\01\00\00\00x\03\10\00\16\00\00\00\96\08\00\00\05\00\00\00x\03\10\00\16\00\00\00\a7\08\00\00\0e\00\00\00\8e\03\10\00\0b\00\00\00\99\03\10\00&\00\00\00\bf\03\10\00\08\00\00\00\c7\03\10\00\06\00\00\009\12\10\00\01\00\00\00x\03\10\00\16\00\00\00\a9\08\00\00\05\00\00\00src/libcore/str/mod.rsbyte index  is not a char boundary; it is inside  (bytes ) of `\00\00\00\0e\04\10\00\02\00\00\00\f8\03\10\00\16\00\00\00F\04\00\00$\00\00\00\f8\03\10\00\16\00\00\00<\04\00\00\11\00\00\00src/libcore/fmt/mod.rs..0x\04\0f\15\1b\19\03\12\17\11\00\00\0e\16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\13\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\07\0a\00\08\0c\1d\1c\18\1a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\05\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\0b\00\09\00\14\00\0d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0f\12\00\00\00\00\00\00\00\00\00\00\00\00\00\1f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00IFf\1d\00\00\00\00\00\00\00\00\00\00\00\00\8a>\00\00\00\00\00\00\00\00\00\00\00\00\00KS\00\00\00\00\00\00\00\00\00\00\00\00g#B\00\00\00\00\00\00\00\00\00\00\00\00=\00\00\00\00\00#\00\00\00\00\00\00\00\00\00u\00\00-\00\00\00\00\00\00\00\00\00\00\00\00\82N<\00\00\00\00\00\00\00\00\00\00\00\00c\00\00\00%\00Z\00\00\00\00\00\00\00\816\00\00\03\00\00\00\00\00\00\00\00\00\00/\00\00\00\00\00\00\00\00\10\00\00\00\00\00\13\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00C\00r\00\89\00\00\00\00\00\00\00\00\00\00\07\00\00\00}\05\18?\007\87\09@d\00\00!\00\00\00\00\00\00\00\00\00\00\00\00\00\0a\00\00A\00\00\00\00\00\00\00\00\00\00\00\00\0c\000\00\5c\00\00\00\19wq\00`G5D.\00\00t9\11e,Q^\7fP\00\00\0041\00\00\00S\00\00\00\00\00\00:\00\00\00\008\1a\00\88_+ki]O]\84\80*h\14;\00\17\00\00\00\00\00\00\00\00\00\00\00\00\00U\00\00W\00\00\00\83\00\00\00\00\00\00\00\00Y\00\00\00\00\00\00&n\1b\16\00\00\00\00\00mJ\1c\00\00\00\00\00\00\00\00\00\00$\00\00|\00R\00{\06\15\00\00\00\00H\00\00\00\00~(v'l)\00\22[\0ea\0dVpb\04\85 x\02\00\00z\1ey\01T\003\00\00\00\86sX\00MEo\0bj\00\002lL\00\00\89\8a\00\00\8a\8a\8a>\00\00\00\00\00\00\00\00\00\00\00\f8\0a\10\00\1a\00\00\008\00\00\00\0f\00\00\00\f8\0a\10\00\1a\00\00\009\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\0d\00\00\00\00\00\00\00\1c\00\00\00\00\00\00\00@\00\00\00\00\00\00\00\b6\00\00\00\00\00\00\00\bf\00\00\00\00\00\00\00\f8\03\00\00\00\00\00\00\f0\07\00\00\00\00\00\00\ff\07\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\1e\00\00\00\00\00\00\008\00\00\00\00\00\00\00?\00\00\00\00\00\00\80\7f\00\00\00\00\00\00\00\80\00\00\00\00\00\00\c0\ff\01\00\00\00\00\00\80\ff\03\00\00\00\00\00\00\80\07\00\00\00\00\00\00\00\7f\00\00\00\00\00\01 \80\00\00\00\00\00\00\00\a3\00\00\00\00\00\00\fc\7f\03\00\00\00\00\00\00\00\06\00\00\00\00\00\00\ff\07\00\00\00\00\00\00\80\09\00\00\00\00\00\00\00\0e\00\00\00\00\80\00~\0e\00\00\00\00d \00 \00\00\00\00@\fe\0f \00\00\00\00\01\00\000\00\00\00\00\00\00\00@\00\00\00\00\5c\00\00@\00\00\00\00\00\00\00`\00\00\00\00\00\84\5c\80\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\00\e0\00\00\00\00\00\00\00\00\01\00\00\00\00\00\f0\0c\01\00\00\00D0`\00\0c\00\00\00\c1=`\00\0c\00\00\00\1e \80\00\0c\00\00\00\1e \c0\00\0c\00\00\00\fe!\fe\00\0c\00\00\00\00\00\00\00 \00\00\00\00\00\00\00`\00\00\00D\08\00\00`\00\00\00\00\00\00\00\f0\00\00\00`\00\00\00\00\02\00\00\7f\ff\ff\f9\db\07\00\00\00\00\00\80\f8\07\00\00\00\00\00\e0\bc\0f\00\00\00\00\00\00 !\00\00\03\00\00\00<;\00\00\e7\0f\00\00\00<\00\00\00\00\c0\9f\9f=\00\00\00\00\c0\fb\ef>\00\00\00\00\00\00\c0?\00\00\00\00\00\00\00\f0\00\00\00\00\00\00\00\fc\00\00\10\00\00\f8\fe\ff\00\00\ff\ff\00\00\ff\ff\00\00\ff\ff\ff\ff\ff\ff\00\00\00\f8\ff\ff\00\00\01\00\00\00\00\00\c0\ff\01\00\00\00\ff\ff\ff\ff\01\00\00\00\00\00\00\00\03\00\00\00\00\00\00\80\03\00\00\00\00\00@\a3\03\00\00\00\00\00\00\00\08\00\00\00\0c\00\00\00\0c\00\04\00\00\00\00\f8\0f\00\00\00\00\00\00\00\18\00\00\00\1c\00\00\00\1c\00\00\00\00\c3\01\00\1e\00\00\00\00\00\00\00\1f\00\01\00\80\00\c0\1f\1f\00\07\00\00\00\80\ef\1f\00\ff\ff\ff\ff\ff\1f \00\869\02\00\00\00#\00\02\00\00\00\000@\00\00\00\00\00\00~f\00\00\00\fc\ff\ff\fcm\00\00\00\00\00\00\00\7f\00\00\00\00\00\00(\bf\00\00\00\00\00\00\f0\cf\00\00\00\00\03\00\00\a0\02\00\00\f7\ff\fd!\10\03\03\00\00\00\00\00x\06\00\00\00\00\00\80\ff\06\00\00\00\00\00\00\c0\07\00\00\00\00\00\00\f2\07\00\00\00\00\87\01\04\0e\06\00\00\00\00\00\00\10\08\10\00\00\00\00\00\10\07\00\00\00\00\00\00\14\0f\00\00\00\00\00\f0\17\00\00\00\00\00\00\f2\1f\df\e0\ff\fe\ff\ff\ff\1f\00\00\00\00\00\00\00 \00\00\00\00\00\f8\0f \07\00\00\00\00\00\c83\00\00\00\00\00\00\b0?\00\00\00\00\00\80\f7?\04\00\00\00\00\00\00@\1e \80\00\0c\00\00@\00\00\00\00\00\80\d3@\02\00\00\00\00\00\00P\03\00\00\00\00\00\00X\00\00\00\00\00\e0\fdf\fe\07\00\00\00\00\f8y\03\00\00\00\00\00\c0\7f\00\00\00\00\00\00\fe\7f\00\00\00\00\00\00\ff\7f\00\00\00\00\00\00\00\80\7f\00\00\00\00\00\00\800\00\00\00\ff\ff\03\80n\f0\00\00\00\00\00\87\02\00\00\00\00\00\00\90\00\00@\7f\e5\1f\f8\9f\00\00\00\00\00\00\f9\a5\00\00\00\00\00\00\f8\a7\00\00\00\00\00\80<\b0\00\00\00\00\00\00~\b4\00\00\00\00\00\00\7f\bf\00\00\fe\ff\ff\ff\ff\bf\11\00\00\00\00\00\00\c0\00\00\00\00\00\00\9d\c1\02\00\00\00\00\00\00\d0\00\00\00\00\a0\c3\07\f8\ff\ff\ff\ff\ff\ff\7f\f8\ff\ff\ff\ff\ff\ff\ff\fb\be!\00\00\0c\00\00\fc\00\00\00\00\00\00\00\ff\02\00\00\00\00\00\00\ff\00\00\02\00\00\00\ff\ff\00\00\f8\ff\fb\ff\ff\ff\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ffsrc/libcore/unicode/mod.rs\00\01\03\05\05\06\06\03\07\06\08\08\09\11\0a\1c\0b\19\0c\14\0d\12\0e\0d\0f\04\10\03\12\12\13\09\16\01\17\05\18\02\19\03\1a\07\1c\02\1d\01\1f\16 \03+\04,\02-\0b.\010\031\022\01\a7\02\a9\02\aa\04\ab\08\fa\02\fb\05\fd\04\fe\03\ff\09\adxy\8b\8d\a20WX\8b\8c\90\1c\1d\dd\0e\0fKL\fb\fc./?\5c]_\b5\e2\84\8d\8e\91\92\a9\b1\ba\bb\c5\c6\c9\ca\de\e4\e5\ff\00\04\11\12)147:;=IJ]\84\8e\92\a9\b1\b4\ba\bb\c6\ca\ce\cf\e4\e5\00\04\0d\0e\11\12)14:;EFIJ^de\84\91\9b\9d\c9\ce\cf\0d\11)EIWde\8d\91\a9\b4\ba\bb\c5\c9\df\e4\e5\f0\04\0d\11EIde\80\81\84\b2\bc\be\bf\d5\d7\f0\f1\83\85\8b\a4\a6\be\bf\c5\c7\ce\cf\da\dbH\98\bd\cd\c6\ce\cfINOWY^_\89\8e\8f\b1\b6\b7\bf\c1\c6\c7\d7\11\16\17[\5c\f6\f7\fe\ff\80\0dmq\de\df\0e\0f\1fno\1c\1d_}~\ae\af\bb\bc\fa\16\17\1e\1fFGNOXZ\5c^~\7f\b5\c5\d4\d5\dc\f0\f1\f5rs\8ftu\96\97/_&./\a7\af\b7\bf\c7\cf\d7\df\9a@\97\980\8f\1f\c0\c1\ce\ffNOZ[\07\08\0f\10'/\ee\efno7=?BE\90\91\fe\ffSgu\c8\c9\d0\d1\d8\d9\e7\fe\ff\00 _\22\82\df\04\82D\08\1b\04\06\11\81\ac\0e\80\ab5\1e\15\80\e0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0aP\0f\12\07U\08\02\04\1c\0a\09\03\08\03\07\03\02\03\03\03\0c\04\05\03\0b\06\01\0e\15\05:\03\11\07\06\05\10\07W\07\02\07\15\0dP\04C\03-\03\01\04\11\06\0f\0c:\04\1d%_ m\04j%\80\c8\05\82\b0\03\1a\06\82\fd\03Y\07\15\0b\17\09\14\0c\14\0cj\06\0a\06\1a\06Y\07+\05F\0a,\04\0c\04\01\031\0b,\04\1a\06\0b\03\80\ac\06\0a\06\1fAL\04-\03t\08<\03\0f\03<\078\08+\05\82\ff\11\18\08/\11-\03 \10!\0f\80\8c\04\82\97\19\0b\15\88\94\05/\05;\07\02\0e\18\09\80\b00t\0c\80\d6\1a\0c\05\80\ff\05\80\b6\05$\0c\9b\c6\0a\d20\10\84\8d\037\09\81\5c\14\80\b8\08\80\c705\04\0a\068\08F\08\0c\06t\0b\1e\03Z\04Y\09\80\83\18\1c\0a\16\09H\08\80\8a\06\ab\a4\0c\17\041\a1\04\81\da&\07\0c\05\05\80\a5\11\81m\10x(*\06L\04\80\8d\04\80\be\03\1b\03\0f\0d\00X\10\10\00 \00\00\00\1a\00\00\00(\00\00\00\00\06\01\01\03\01\04\02\08\08\09\02\0a\05\0b\02\10\01\11\04\12\05\13\11\14\02\15\02\17\02\19\04\1c\05\1d\08$\01j\03k\02\bc\02\d1\02\d4\0c\d5\09\d6\02\d7\02\da\01\e0\05\e1\02\e8\02\ee \f0\04\f9\06\fa\02\0c';>NO\8f\9e\9e\9f\06\07\096=>V\f3\d0\d1\04\14\1867VW\bd5\ce\cf\e0\12\87\89\8e\9e\04\0d\0e\11\12)14:EFIJNOdeZ\5c\b6\b7\1b\1c\a8\a9\d8\d9\097\90\91\a8\07\0a;>fi\8f\92o_\ee\efZb\9a\9b'(U\9d\a0\a1\a3\a4\a7\a8\ad\ba\bc\c4\06\0b\0c\15\1d:?EQ\a6\a7\cc\cd\a0\07\19\1a\22%>?\c5\c6\04 #%&(38:HJLPSUVXZ\5c^`cefksx}\7f\8a\a4\aa\af\b0\c0\d0\0cr\a3\a4\cb\ccno^\22{\05\03\04-\03e\04\01/.\80\82\1d\031\0f\1c\04$\09\1e\05+\05D\04\0e*\80\aa\06$\04$\04(\084\0b\01\80\90\817\09\16\0a\08\80\989\03c\08\090\16\05!\03\1b\05\01@8\04K\05/\04\0a\07\09\07@ '\04\0c\096\03:\05\1a\07\04\0c\07PI73\0d3\07.\08\0a\81&\1f\80\81(\08*\80\86\17\09N\04\1e\0fC\0e\19\07\0a\06G\09'\09u\0b?A*\06;\05\0a\06Q\06\01\05\10\03\05\80\8b` H\08\0a\80\a6^\22E\0b\0a\06\0d\139\07\0a6,\04\10\80\c0<dS\0c\01\80\a0E\1bH\08S\1d9\81\07F\0a\1d\03GI7\03\0e\08\0a\069\07\0a\816\19\80\c72\0d\83\9bfu\0b\80\c4\8a\bc\84/\8f\d1\82G\a1\b9\829\07*\04\02`&\0aF\0a(\05\13\82\b0[eK\049\07\11@\04\1c\97\f8\08\82\f3\a5\0d\81\1f1\03\11\04\08\81\8c\89\04k\05\0d\03\09\07\10\93`\80\f6\0as\08n\17F\80\9a\14\0cW\09\19\80\87\81G\03\85B\0f\15\85P+\80\d5-\03\1a\04\02\81p:\05\01\85\00\80\d7)L\04\0a\04\02\83\11DL=\80\c2<\06\01\04U\05\1b4\02\81\0e,\04d\0cV\0a\0d\03]\03=9\1d\0d,\04\09\07\02\0e\06\80\9a\83\d6\0a\0d\03\0b\05t\0cY\07\0c\14\0c\048\08\0a\06(\08\1eRw\031\03\80\a6\0c\14\04\03\05\03\0d\06\85jsrc/libcore/unicode/printable.rsbegin <= end ( <= ) when slicing ` is out of bounds of `x\11\10\00\00\00\00\00\c0\10\10\00\02\00\00\00: panicked at \00\00\f9\10\10\00\01\00\00\00\fa\10\10\00\03\00\00\00x\11\10\00\00\00\00\00\f8\10\10\00\01\00\00\00\f8\10\10\00\01\00\00\00:'',     , \00\15\00\00\00\0c\00\00\00\04\00\00\00\1b\00\00\00\1c\00\00\00\1d\00\00\00,\0a\00\00\15\00\00\00\04\00\00\00\04\00\00\00\1e\00\00\00\1f\00\00\00 \00\00\00((\0a)\0a][Errorx\11\10\00\00\00\00\00runtimeRuntime memory exhausted. Aborting\00\00\00\00\12\10\00-\00\00\00-\12\10\00\0c\00\00\009\12\10\00\01\00\00\00\a0\11\10\00`\00\00\00x\00\00\00\09\00\00\00/Users/stefaniedoll/Parity/Substrate/substrate/primitives/runtime-interface/test-wasm/src/lib.rsassertion failed: `(left == right)`\0a  left: ``,\0a right: ``\00\00\a0\11\10\00`\00\00\00\7f\00\00\00\09\00\00\00helloworld\00\00\a0\11\10\00`\00\00\00\8f\00\00\00\09\00\00\00\18\03\17\14\02\10 \01\0c\1a\1b\08\1d\1f\06\05\04\13\0a\1c\22\15\12!\09\0d\16\19\0f\0b\1e\07\0e\11\00\00\a0\11\10\00`\00\00\00\9b\00\00\00\09\00\00\00\01\02\03\04\05\06\07\08\09\0a\0b\0c\0d\0e\0f\10\a0\11\10\00`\00\00\00\a2\00\00\00\09\00\00\00\01\02\03\04\05\06\07\08\09\0a\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f \a0\11\10\00`\00\00\00\b0\00\00\00\09\00\00\00assertion failed: !test_api::overwrite_native_function_implementation()\00\a0\11\10\00`\00\00\00\c1\00\00\00\09\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\88\13\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\a0\11\10\00`\00\00\00\cb\00\00\00\0d\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\88\13\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\a0\11\10\00`\00\00\00\cf\00\00\00\0d\00\00\00\00\00@\00\a0\11\10\00`\00\00\00\d8\00\00\00\09\00\00\00called `Option::unwrap()` on a `None` value\00\a0\11\10\00`\00\00\00\de\00\00\00\14\00\00\00\00\00\00\01\a0\11\10\00`\00\00\00\e0\00\00\00\09\00\00\00\00\00\00\00\a0\11\10\00`\00\00\00\e8\00\00\00\09\00\00\00hey, hash me please!\a0\11\10\00`\00\00\00\f2\00\00\00\09\00\00\00SomeNone\15\00\00\00\04\00\00\00\04\00\00\00\13\00\00\00\bc\14\10\00Z\00\00\00\08\01\00\00\09\00\00\00/Users/stefaniedoll/Parity/Substrate/substrate/primitives/runtime-interface/src/pass_by.rs\00\00\15\00\00\00\00\00\00\00\01\00\00\00\19\00\00\00Host to wasm values are encoded correctly; qed\00\00h\15\10\00X\00\00\00\cd\00\00\00\0d\00\00\00/Users/stefaniedoll/Parity/Substrate/substrate/primitives/runtime-interface/src/impls.rs\15\00\00\00\00\00\00\00\01\00\00\00\19\00\00\00Value is only taken on drop; qed\00\16\10\00W\00\00\00\8d\00\00\00,\00\00\00/Users/stefaniedoll/Parity/Substrate/substrate/primitives/runtime-interface/src/wasm.rsTrying to replace an already replaced implementation!\9c\16\10\00\1e\00\00\00\02\00\00\00\02\00\00\00<::core::macros::panic macros>")
  (data (;1;) (i32.const 1054396) "!\00\00\00\00\00\00\00"))
