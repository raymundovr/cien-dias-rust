(module
  (type (;0;) (func))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i32) (result i64)))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32)))
  (type (;7;) (func (param i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (result i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32)))
  (type (;11;) (func (param i32 i32 i32 i32)))
  (type (;12;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i32 i32 i32 i32 i32 i32 i32)))
  (type (;15;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;16;) (func (param i64 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "fd_write" (func $_ZN4wasi13lib_generated22wasi_snapshot_preview18fd_write17ha5cbe20048f60fc8E (type 8)))
  (import "wasi_snapshot_preview1" "environ_get" (func $__imported_wasi_snapshot_preview1_environ_get (type 5)))
  (import "wasi_snapshot_preview1" "environ_sizes_get" (func $__imported_wasi_snapshot_preview1_environ_sizes_get (type 5)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $__imported_wasi_snapshot_preview1_proc_exit (type 1)))
  (func $__wasm_call_ctors (type 0)
    call $__wasilibc_initialize_environ_eagerly)
  (func $_start (type 0)
    (local i32)
    block  ;; label = @1
      call $__original_main
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call $exit
      unreachable
    end)
  (func $_ZN3std7process8ExitCode6to_i3217h788e8a55ccac6451E (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 0
    local.set 4
    local.get 3
    local.get 4
    i32.store8 offset=15
    i32.const 15
    local.set 5
    local.get 3
    local.get 5
    i32.add
    local.set 6
    local.get 6
    local.set 7
    local.get 7
    call $_ZN3std3sys4wasi7process8ExitCode6as_i3217hd707a68cfde3c063E
    local.set 8
    i32.const 16
    local.set 9
    local.get 3
    local.get 9
    i32.add
    local.set 10
    local.get 10
    global.set $__stack_pointer
    local.get 8
    return)
  (func $_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hbe7638c246030d79E (type 9) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    i32.const 0
    local.set 0
    i32.const 1
    local.set 1
    local.get 0
    local.get 1
    i32.and
    local.set 2
    local.get 2
    call $_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17hb876a66d61ca3176E
    local.set 3
    i32.const 1
    local.set 4
    local.get 3
    local.get 4
    i32.and
    local.set 5
    local.get 5
    return)
  (func $_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17hb876a66d61ca3176E (type 4) (param i32) (result i32)
    (local i32)
    local.get 0
    local.set 1
    local.get 1
    return)
  (func $_ZN4core3fmt9Arguments6new_v117h9ef4fca8afb3461aE (type 10) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 5
    i32.const 48
    local.set 6
    local.get 5
    local.get 6
    i32.sub
    local.set 7
    local.get 7
    global.set $__stack_pointer
    local.get 2
    local.set 8
    local.get 4
    local.set 9
    local.get 8
    local.get 9
    i32.lt_u
    local.set 10
    i32.const 1
    local.set 11
    local.get 10
    local.get 11
    i32.and
    local.set 12
    block  ;; label = @1
      block  ;; label = @2
        local.get 12
        br_if 0 (;@2;)
        i32.const 1
        local.set 13
        local.get 4
        local.get 13
        i32.add
        local.set 14
        local.get 2
        local.set 15
        local.get 14
        local.set 16
        local.get 15
        local.get 16
        i32.gt_u
        local.set 17
        i32.const 1
        local.set 18
        local.get 17
        local.get 18
        i32.and
        local.set 19
        local.get 7
        local.get 19
        i32.store8 offset=15
        br 1 (;@1;)
      end
      i32.const 1
      local.set 20
      local.get 7
      local.get 20
      i32.store8 offset=15
    end
    local.get 7
    i32.load8_u offset=15
    local.set 21
    i32.const 1
    local.set 22
    local.get 21
    local.get 22
    i32.and
    local.set 23
    block  ;; label = @1
      local.get 23
      br_if 0 (;@1;)
      i32.const 0
      local.set 24
      local.get 7
      local.get 24
      i32.store offset=40
      local.get 0
      local.get 1
      i32.store
      local.get 0
      local.get 2
      i32.store offset=4
      local.get 7
      i32.load offset=40
      local.set 25
      local.get 7
      i32.load offset=44
      local.set 26
      local.get 0
      local.get 25
      i32.store offset=8
      local.get 0
      local.get 26
      i32.store offset=12
      local.get 0
      local.get 3
      i32.store offset=16
      local.get 0
      local.get 4
      i32.store offset=20
      i32.const 48
      local.set 27
      local.get 7
      local.get 27
      i32.add
      local.set 28
      local.get 28
      global.set $__stack_pointer
      return
    end
    i32.const 16
    local.set 29
    local.get 7
    local.get 29
    i32.add
    local.set 30
    local.get 30
    local.set 31
    i32.const 1048588
    local.set 32
    local.get 32
    local.set 33
    i32.const 1
    local.set 34
    i32.const 1048596
    local.set 35
    local.get 35
    local.set 36
    i32.const 0
    local.set 37
    local.get 31
    local.get 33
    local.get 34
    local.get 36
    local.get 37
    call $_ZN4core3fmt9Arguments6new_v117h9ef4fca8afb3461aE
    i32.const 16
    local.set 38
    local.get 7
    local.get 38
    i32.add
    local.set 39
    local.get 39
    local.set 40
    i32.const 1048672
    local.set 41
    local.get 41
    local.set 42
    local.get 40
    local.get 42
    call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
    unreachable)
  (func $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hf807556a99eec383E (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 4
    local.get 4
    call $_ZN4core3ops8function6FnOnce9call_once17h34e352b439c901a1E
    local.set 5
    i32.const 16
    local.set 6
    local.get 3
    local.get 6
    i32.add
    local.set 7
    local.get 7
    global.set $__stack_pointer
    local.get 5
    return)
  (func $_ZN4core3ops8function6FnOnce9call_once17h34e352b439c901a1E (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=4
    i32.const 4
    local.set 4
    local.get 3
    local.get 4
    i32.add
    local.set 5
    local.get 5
    local.set 6
    local.get 6
    call $_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h4e24ac503c69cf8cE
    local.set 7
    i32.const 16
    local.set 8
    local.get 3
    local.get 8
    i32.add
    local.set 9
    local.get 9
    global.set $__stack_pointer
    local.get 7
    return)
  (func $_ZN4core3ops8function6FnOnce9call_once17hc6a7f1a92d3c0412E (type 1) (param i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 0
    call_indirect (type 0)
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.add
    local.set 5
    local.get 5
    global.set $__stack_pointer
    return)
  (func $_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17he1573f359a613b09E (type 1) (param i32)
    return)
  (func $_ZN3std2rt10lang_start17h5721fd3f1fffe9f8E (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=12
    i32.const 12
    local.set 6
    local.get 5
    local.get 6
    i32.add
    local.set 7
    local.get 7
    local.set 8
    i32.const 1048688
    local.set 9
    local.get 9
    local.set 10
    local.get 8
    local.get 10
    local.get 1
    local.get 2
    call $_ZN3std2rt19lang_start_internal17h357a5b85e7ff400eE
    local.set 11
    local.get 5
    local.get 11
    i32.store offset=8
    local.get 5
    i32.load offset=8
    local.set 12
    i32.const 16
    local.set 13
    local.get 5
    local.get 13
    i32.add
    local.set 14
    local.get 14
    global.set $__stack_pointer
    local.get 12
    return)
  (func $_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h4e24ac503c69cf8cE (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.load
    local.set 1
    local.get 1
    call $_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hb6e0d5aac5978514E
    call $_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hbe7638c246030d79E
    local.set 2
    i32.const 1
    local.set 3
    local.get 2
    local.get 3
    i32.and
    local.set 4
    local.get 4
    call $_ZN3std7process8ExitCode6to_i3217h788e8a55ccac6451E
    local.set 5
    local.get 5
    return)
  (func $_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hb6e0d5aac5978514E (type 1) (param i32)
    local.get 0
    call $_ZN4core3ops8function6FnOnce9call_once17hc6a7f1a92d3c0412E
    call $_ZN4core4hint9black_box17h096d506235c709a1E
    return)
  (func $_ZN10hola_mundo4main17h1d24e09ef05d951cE (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 0
    i32.const 32
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    i32.const 8
    local.set 3
    local.get 2
    local.get 3
    i32.add
    local.set 4
    local.get 4
    local.set 5
    i32.const 1048724
    local.set 6
    local.get 6
    local.set 7
    i32.const 1
    local.set 8
    i32.const 1048732
    local.set 9
    local.get 9
    local.set 10
    i32.const 0
    local.set 11
    local.get 5
    local.get 7
    local.get 8
    local.get 10
    local.get 11
    call $_ZN4core3fmt9Arguments6new_v117h9ef4fca8afb3461aE
    i32.const 8
    local.set 12
    local.get 2
    local.get 12
    i32.add
    local.set 13
    local.get 13
    local.set 14
    local.get 14
    call $_ZN3std2io5stdio6_print17h10f44ed2e1581f9bE
    i32.const 32
    local.set 15
    local.get 2
    local.get 15
    i32.add
    local.set 16
    local.get 16
    global.set $__stack_pointer
    return)
  (func $__original_main (type 9) (result i32)
    (local i32 i32 i32)
    i32.const 4
    local.set 0
    i32.const 0
    local.set 1
    local.get 0
    local.get 1
    local.get 1
    call $_ZN3std2rt10lang_start17h5721fd3f1fffe9f8E
    local.set 2
    local.get 2
    return)
  (func $main (type 5) (param i32 i32) (result i32)
    (local i32)
    call $__original_main
    local.set 2
    local.get 2
    return)
  (func $_ZN4core4hint9black_box17h096d506235c709a1E (type 0)
    (local i32)
    return)
  (func $__rust_alloc (type 5) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    call $__rdl_alloc
    local.set 2
    local.get 2
    return)
  (func $__rust_dealloc (type 6) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $__rdl_dealloc
    return)
  (func $__rust_realloc (type 8) (param i32 i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__rdl_realloc
    local.set 4
    local.get 4
    return)
  (func $__rust_alloc_error_handler (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call $__rg_oom
    return)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h2c9ea59ee3a5dbc5E (type 2) (param i32) (result i64)
    i64.const -6900145445684355387)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h75ce0f4d68bbb2c5E (type 2) (param i32) (result i64)
    i64.const -1168863921878326592)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17ha809a2d0acb08a8eE (type 2) (param i32) (result i64)
    i64.const -5139102199292759541)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0c6ee3d143a9dea1E (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      local.get 1
      call $_ZN4core3fmt9Formatter15debug_lower_hex17h94d0dcacea6d66a5E
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        call $_ZN4core3fmt9Formatter15debug_upper_hex17h8aed1da6860e1649E
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        call $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17ha4db52968ea7b1d8E
        return
      end
      local.get 0
      local.get 1
      call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h9160270fe535dfe0E
      return
    end
    local.get 0
    local.get 1
    call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h2ab909d98eb1d84bE)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h50bc5dc57687cc47E (type 5) (param i32 i32) (result i32)
    local.get 1
    i32.const 1048732
    i32.const 2
    call $_ZN4core3fmt9Formatter3pad17hdffb817b8a6961faE)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hbe7df2b7f23aed8aE (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17hb997cbd94fa7b7fcE)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9de8a96643c354bE (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.load
    i32.load
    local.get 1
    call $_ZN64_$LT$alloc..ffi..c_str..NulError$u20$as$u20$core..fmt..Debug$GT$3fmt17h9a89a8ad3ecea7a5E)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h71856d8bb90844f7E (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hfc8318cab0d901c2E)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcee21abe5ad85d30E (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_ZN70_$LT$core..panic..location..Location$u20$as$u20$core..fmt..Display$GT$3fmt17h99d2a8b701e773a5E)
  (func $_ZN4core3fmt5Write10write_char17h358ec89c8ac32558E (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
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
            i32.const 12
            i32.shr_u
            i32.const 224
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
            i32.store8 offset=13
            i32.const 3
            local.set 1
            br 3 (;@1;)
          end
          local.get 2
          local.get 1
          i32.store8 offset=12
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
        i32.const 192
        i32.or
        i32.store8 offset=12
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
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 3
      i32.const 4
      i32.add
      i32.load
      local.get 3
      i32.const 8
      i32.add
      local.tee 4
      i32.load
      local.tee 0
      i32.sub
      local.get 1
      i32.ge_u
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      local.get 1
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h1092057c8f533414E
      local.get 4
      i32.load
      local.set 0
    end
    local.get 3
    i32.load
    local.get 0
    i32.add
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $memcpy
    drop
    local.get 4
    local.get 0
    local.get 1
    i32.add
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    i32.const 0)
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h1092057c8f533414E (type 6) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 1
      local.get 2
      i32.add
      local.tee 2
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 4
      i32.const 1
      i32.shl
      local.tee 1
      local.get 2
      local.get 1
      local.get 2
      i32.gt_u
      select
      local.tee 1
      i32.const 8
      local.get 1
      i32.const 8
      i32.gt_u
      select
      local.set 1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          br_if 0 (;@3;)
          i32.const 0
          local.set 2
          br 1 (;@2;)
        end
        local.get 3
        local.get 4
        i32.store offset=20
        local.get 3
        local.get 0
        i32.load
        i32.store offset=16
        i32.const 1
        local.set 2
      end
      local.get 3
      local.get 2
      i32.store offset=24
      local.get 3
      local.get 1
      i32.const 1
      local.get 3
      i32.const 16
      i32.add
      call $_ZN5alloc7raw_vec11finish_grow17h6208821f5469ce7cE
      block  ;; label = @2
        local.get 3
        i32.load
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.const 8
        i32.add
        i32.load
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=4
        local.get 0
        call $_ZN5alloc5alloc18handle_alloc_error17h978fb356bc87755dE
        unreachable
      end
      local.get 3
      i32.load offset=4
      local.set 2
      local.get 0
      i32.const 4
      i32.add
      local.get 1
      i32.store
      local.get 0
      local.get 2
      i32.store
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    call $_ZN5alloc7raw_vec17capacity_overflow17h985fea32c04a3f34E
    unreachable)
  (func $_ZN4core3fmt5Write10write_char17h61e215b863f0ca6dE (type 5) (param i32 i32) (result i32)
    (local i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=4
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
            i32.store8 offset=6
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=4
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=5
            i32.const 3
            local.set 1
            br 3 (;@1;)
          end
          local.get 2
          local.get 1
          i32.store8 offset=4
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
        i32.store8 offset=5
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=4
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
      i32.store8 offset=7
      local.get 2
      local.get 1
      i32.const 18
      i32.shr_u
      i32.const 240
      i32.or
      i32.store8 offset=4
      local.get 2
      local.get 1
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=6
      local.get 2
      local.get 1
      i32.const 12
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=5
      i32.const 4
      local.set 1
    end
    local.get 2
    i32.const 8
    i32.add
    local.get 0
    i32.load
    local.get 2
    i32.const 4
    i32.add
    local.get 1
    call $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17h549df2080f337efeE
    block  ;; label = @1
      local.get 2
      i32.load8_u offset=8
      local.tee 1
      i32.const 4
      i32.eq
      br_if 0 (;@1;)
      local.get 2
      i64.load offset=8
      local.set 3
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=4
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.add
        i32.load
        local.tee 4
        i32.load
        local.get 4
        i32.load offset=4
        i32.load
        call_indirect (type 1)
        block  ;; label = @3
          local.get 4
          i32.load offset=4
          local.tee 5
          i32.load offset=4
          local.tee 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load
          local.get 6
          local.get 5
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get 4
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 0
      local.get 3
      i64.store offset=4 align=4
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
    i32.const 4
    i32.ne)
  (func $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17h549df2080f337efeE (type 11) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load
              local.tee 1
              i32.load offset=8
              br_if 0 (;@5;)
              local.get 1
              i32.const -1
              i32.store offset=8
              local.get 4
              i32.const 10
              local.get 2
              local.get 3
              call $_ZN4core5slice6memchr7memrchr17hfd97be038f192a1eE
              local.get 1
              i32.const 12
              i32.add
              local.set 5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  i32.load
                  br_if 0 (;@7;)
                  local.get 1
                  i32.const 20
                  i32.add
                  i32.load
                  local.tee 6
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 1
                  i32.load offset=12
                  local.tee 7
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 6
                  local.get 7
                  i32.add
                  i32.const -1
                  i32.add
                  i32.load8_u
                  i32.const 10
                  i32.ne
                  br_if 1 (;@6;)
                  local.get 4
                  i32.const 8
                  i32.add
                  local.get 5
                  call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf17h65a18ae04feeeca6E
                  local.get 4
                  i32.load8_u offset=8
                  i32.const 4
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 4
                  i64.load offset=8
                  local.tee 8
                  i32.wrap_i64
                  i32.const 255
                  i32.and
                  i32.const 4
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 0
                  local.get 8
                  i64.store align=4
                  br 6 (;@1;)
                end
                local.get 4
                i32.load offset=4
                i32.const 1
                i32.add
                local.tee 6
                local.get 3
                i32.gt_u
                br_if 2 (;@4;)
                block  ;; label = @7
                  local.get 1
                  i32.const 20
                  i32.add
                  i32.load
                  local.tee 7
                  i32.eqz
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 1
                    i32.const 16
                    i32.add
                    i32.load
                    local.get 7
                    i32.sub
                    local.get 6
                    i32.le_u
                    br_if 0 (;@8;)
                    local.get 1
                    i32.load offset=12
                    local.get 7
                    i32.add
                    local.get 2
                    local.get 6
                    call $memcpy
                    drop
                    local.get 1
                    i32.const 20
                    i32.add
                    local.get 7
                    local.get 6
                    i32.add
                    i32.store
                    br 5 (;@3;)
                  end
                  local.get 4
                  i32.const 8
                  i32.add
                  local.get 5
                  local.get 2
                  local.get 6
                  call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h5ef8adb53b509a22E
                  local.get 4
                  i32.load8_u offset=8
                  i32.const 4
                  i32.eq
                  br_if 4 (;@3;)
                  local.get 4
                  i64.load offset=8
                  local.tee 8
                  i32.wrap_i64
                  i32.const 255
                  i32.and
                  i32.const 4
                  i32.eq
                  br_if 4 (;@3;)
                  local.get 0
                  local.get 8
                  i64.store align=4
                  br 6 (;@1;)
                end
                local.get 4
                i32.const 8
                i32.add
                local.get 5
                local.get 2
                local.get 6
                call $_ZN60_$LT$std..io..stdio..StdoutRaw$u20$as$u20$std..io..Write$GT$9write_all17h8008b773c794b33fE
                local.get 4
                i32.load8_u offset=8
                i32.const 4
                i32.eq
                br_if 4 (;@2;)
                local.get 4
                i64.load offset=8
                local.tee 8
                i32.wrap_i64
                i32.const 255
                i32.and
                i32.const 4
                i32.eq
                br_if 4 (;@2;)
                local.get 0
                local.get 8
                i64.store align=4
                br 5 (;@1;)
              end
              block  ;; label = @6
                local.get 1
                i32.const 16
                i32.add
                i32.load
                local.get 1
                i32.const 20
                i32.add
                local.tee 7
                i32.load
                local.tee 6
                i32.sub
                local.get 3
                i32.gt_u
                br_if 0 (;@6;)
                local.get 0
                local.get 5
                local.get 2
                local.get 3
                call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h5ef8adb53b509a22E
                br 5 (;@1;)
              end
              local.get 1
              i32.load offset=12
              local.get 6
              i32.add
              local.get 2
              local.get 3
              call $memcpy
              drop
              local.get 0
              i32.const 4
              i32.store8
              local.get 7
              local.get 6
              local.get 3
              i32.add
              i32.store
              br 4 (;@1;)
            end
            i32.const 1048832
            i32.const 16
            local.get 4
            i32.const 8
            i32.add
            i32.const 1048944
            i32.const 1050672
            call $_ZN4core6result13unwrap_failed17h42eb2bde7057019eE
            unreachable
          end
          i32.const 1048864
          i32.const 35
          i32.const 1049784
          call $_ZN4core9panicking5panic17h6405394cda32a2f1E
          unreachable
        end
        local.get 4
        i32.const 8
        i32.add
        local.get 5
        call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf17h65a18ae04feeeca6E
        local.get 4
        i32.load8_u offset=8
        i32.const 4
        i32.eq
        br_if 0 (;@2;)
        local.get 4
        i64.load offset=8
        local.tee 8
        i32.wrap_i64
        i32.const 255
        i32.and
        i32.const 4
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 8
        i64.store align=4
        br 1 (;@1;)
      end
      local.get 2
      local.get 6
      i32.add
      local.set 7
      block  ;; label = @2
        local.get 1
        i32.const 16
        i32.add
        i32.load
        local.get 1
        i32.const 20
        i32.add
        local.tee 9
        i32.load
        local.tee 2
        i32.sub
        local.get 3
        local.get 6
        i32.sub
        local.tee 3
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 5
        local.get 7
        local.get 3
        call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h5ef8adb53b509a22E
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=12
      local.get 2
      i32.add
      local.get 7
      local.get 3
      call $memcpy
      drop
      local.get 0
      i32.const 4
      i32.store8
      local.get 9
      local.get 2
      local.get 3
      i32.add
      i32.store
    end
    local.get 1
    local.get 1
    i32.load offset=8
    i32.const 1
    i32.add
    i32.store offset=8
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN4core3fmt5Write10write_char17hb7aaed9e8182ef91E (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
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
            i32.const 12
            i32.shr_u
            i32.const 224
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
            i32.store8 offset=13
            i32.const 3
            local.set 1
            br 3 (;@1;)
          end
          local.get 2
          local.get 1
          i32.store8 offset=12
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
        i32.const 192
        i32.or
        i32.store8 offset=12
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
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h29fd8facc77f926dE
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h29fd8facc77f926dE (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 0
    local.set 4
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            local.get 3
            local.get 2
            i32.store offset=12
            local.get 3
            local.get 1
            i32.store offset=8
            local.get 3
            i32.const 16
            i32.add
            i32.const 2
            local.get 3
            i32.const 8
            i32.add
            i32.const 1
            call $_ZN4wasi13lib_generated8fd_write17h1a5ab77e414e78b1E
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.load16_u offset=16
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load offset=20
                  local.tee 5
                  br_if 1 (;@6;)
                  i32.const 1050616
                  local.set 5
                  i64.const 2
                  local.set 6
                  br 5 (;@2;)
                end
                local.get 3
                local.get 3
                i32.load16_u offset=18
                i32.store16 offset=30
                local.get 3
                i32.const 30
                i32.add
                call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
                i32.const 65535
                i32.and
                local.tee 5
                call $_ZN3std3sys4wasi17decode_error_kind17h9480121bcf427010E
                i32.const 255
                i32.and
                i32.const 35
                i32.eq
                br_if 1 (;@5;)
                i64.const 0
                local.set 6
                br 4 (;@2;)
              end
              local.get 2
              local.get 5
              i32.lt_u
              br_if 2 (;@3;)
              local.get 1
              local.get 5
              i32.add
              local.set 1
              local.get 2
              local.get 5
              i32.sub
              local.set 2
            end
            local.get 2
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        local.get 5
        local.get 2
        i32.const 1050788
        call $_ZN4core5slice5index26slice_start_index_len_fail17h4a9053b9acbf3e79E
        unreachable
      end
      local.get 5
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.get 6
      i64.or
      local.set 6
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=4
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.add
        i32.load
        local.tee 2
        i32.load
        local.get 2
        i32.load offset=4
        i32.load
        call_indirect (type 1)
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          local.tee 1
          i32.load offset=4
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.load
          local.get 5
          local.get 1
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get 2
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 0
      local.get 6
      i64.store offset=4 align=4
      i32.const 1
      local.set 4
    end
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $_ZN4core3fmt5Write9write_fmt17h199e7d453caedcf5E (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
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
    i32.const 1048736
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h2ef748b44faf8d91E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN4core3fmt5Write9write_fmt17h3ef9142786c68774E (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
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
    i32.const 1048760
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h2ef748b44faf8d91E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN4core3fmt5Write9write_fmt17hcd88d4c641337d08E (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
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
    i32.const 1048808
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h2ef748b44faf8d91E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN3std9panicking12default_hook17h8dec56909080be36E (type 1) (param i32)
    (local i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=1059480
          br_if 0 (;@3;)
          i32.const 0
          i32.const 1
          i32.store8 offset=1059480
          i32.const 0
          i32.const 0
          i32.store offset=1059484
          br 1 (;@2;)
        end
        i32.const 1
        local.set 2
        i32.const 0
        i32.load offset=1059484
        i32.const 1
        i32.gt_u
        br_if 1 (;@1;)
      end
      call $_ZN3std5panic19get_backtrace_style17hec1c4aeab13bb0c7E
      i32.const 255
      i32.and
      local.set 2
    end
    local.get 1
    local.get 2
    i32.store8 offset=27
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                call $_ZN4core5panic10panic_info9PanicInfo8location17h2213c5464e558925E
                local.tee 2
                i32.eqz
                br_if 0 (;@6;)
                local.get 1
                local.get 2
                i32.store offset=28
                local.get 1
                i32.const 16
                i32.add
                local.get 0
                call $_ZN4core5panic10panic_info9PanicInfo7payload17h896f9bee6424fa6fE
                local.get 1
                i32.load offset=16
                local.tee 2
                local.get 1
                i32.load offset=20
                i32.load offset=12
                call_indirect (type 2)
                local.set 3
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 2
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 3
                      i64.const -5139102199292759541
                      i64.eq
                      br_if 1 (;@8;)
                    end
                    local.get 1
                    i32.const 8
                    i32.add
                    local.get 0
                    call $_ZN4core5panic10panic_info9PanicInfo7payload17h896f9bee6424fa6fE
                    i32.const 1051696
                    local.set 4
                    i32.const 12
                    local.set 0
                    local.get 1
                    i32.load offset=8
                    local.tee 2
                    local.get 1
                    i32.load offset=12
                    i32.load offset=12
                    call_indirect (type 2)
                    local.set 3
                    block  ;; label = @9
                      local.get 2
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 3
                      i64.const -6900145445684355387
                      i64.ne
                      br_if 0 (;@9;)
                      local.get 2
                      i32.const 8
                      i32.add
                      i32.load
                      local.set 0
                      local.get 2
                      i32.load
                      local.set 4
                    end
                    local.get 1
                    local.get 4
                    i32.store offset=32
                    br 1 (;@7;)
                  end
                  local.get 1
                  local.get 2
                  i32.load
                  i32.store offset=32
                  local.get 2
                  i32.load offset=4
                  local.set 0
                end
                local.get 1
                local.get 0
                i32.store offset=36
                i32.const 0
                i32.load offset=1059472
                br_if 1 (;@5;)
                i32.const 0
                i32.const -1
                i32.store offset=1059472
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=1059476
                  local.tee 0
                  br_if 0 (;@7;)
                  i32.const 0
                  i32.const 0
                  local.get 1
                  call $_ZN3std6thread6Thread3new17h6cf2bfb440960e73E
                  local.tee 0
                  i32.store offset=1059476
                end
                local.get 0
                local.get 0
                i32.load
                local.tee 2
                i32.const 1
                i32.add
                i32.store
                local.get 2
                i32.const -1
                i32.le_s
                br_if 2 (;@4;)
                i32.const 0
                i32.const 0
                i32.load offset=1059472
                i32.const 1
                i32.add
                i32.store offset=1059472
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 2
                    br 1 (;@7;)
                  end
                  local.get 0
                  i32.const 20
                  i32.add
                  i32.load
                  i32.const -1
                  i32.add
                  local.set 4
                  local.get 0
                  i32.load offset=16
                  local.set 2
                end
                local.get 1
                local.get 4
                i32.const 9
                local.get 2
                select
                i32.store offset=44
                local.get 1
                local.get 2
                i32.const 1051708
                local.get 2
                select
                i32.store offset=40
                local.get 1
                local.get 1
                i32.const 27
                i32.add
                i32.store offset=60
                local.get 1
                local.get 1
                i32.const 28
                i32.add
                i32.store offset=56
                local.get 1
                local.get 1
                i32.const 32
                i32.add
                i32.store offset=52
                local.get 1
                local.get 1
                i32.const 40
                i32.add
                i32.store offset=48
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=1059393
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 0
                  i32.const 1
                  i32.store8 offset=1059393
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=1059460
                    br_if 0 (;@8;)
                    i32.const 0
                    i64.const 1
                    i64.store offset=1059460 align=4
                    br 1 (;@7;)
                  end
                  i32.const 0
                  i32.load offset=1059464
                  local.set 2
                  i32.const 0
                  i32.const 0
                  i32.store offset=1059464
                  local.get 2
                  br_if 4 (;@3;)
                end
                local.get 1
                i32.const 48
                i32.add
                local.get 1
                i32.const 72
                i32.add
                i32.const 1051720
                call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h60073348c4141754E
                i32.const 0
                local.set 4
                i32.const 0
                local.set 2
                br 4 (;@2;)
              end
              i32.const 1048899
              i32.const 43
              i32.const 1051680
              call $_ZN4core9panicking5panic17h6405394cda32a2f1E
              unreachable
            end
            i32.const 1048832
            i32.const 16
            local.get 1
            i32.const 72
            i32.add
            i32.const 1048944
            i32.const 1051480
            call $_ZN4core6result13unwrap_failed17h42eb2bde7057019eE
            unreachable
          end
          unreachable
          unreachable
        end
        local.get 2
        i32.load8_u offset=8
        local.set 4
        local.get 2
        i32.const 1
        i32.store8 offset=8
        local.get 1
        local.get 4
        i32.const 1
        i32.and
        local.tee 4
        i32.store8 offset=71
        local.get 4
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load offset=1059456
              i32.const 2147483647
              i32.and
              br_if 0 (;@5;)
              local.get 1
              i32.const 48
              i32.add
              local.get 2
              i32.const 12
              i32.add
              i32.const 1051760
              call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h60073348c4141754E
              br 1 (;@4;)
            end
            call $_ZN3std9panicking11panic_count17is_zero_slow_path17hb89fa1133dd94c56E
            local.set 4
            local.get 1
            i32.const 48
            i32.add
            local.get 2
            i32.const 12
            i32.add
            i32.const 1051760
            call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h60073348c4141754E
            local.get 4
            i32.eqz
            br_if 1 (;@3;)
          end
          i32.const 0
          i32.load offset=1059456
          i32.const 2147483647
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          call $_ZN3std9panicking11panic_count17is_zero_slow_path17hb89fa1133dd94c56E
          br_if 0 (;@3;)
          local.get 2
          i32.const 1
          i32.store8 offset=9
        end
        i32.const 1
        local.set 4
        i32.const 0
        i32.const 1
        i32.store8 offset=1059393
        local.get 2
        i32.const 0
        i32.store8 offset=8
        block  ;; label = @3
          i32.const 0
          i32.load offset=1059460
          br_if 0 (;@3;)
          i32.const 0
          local.get 2
          i32.store offset=1059464
          i32.const 1
          local.set 4
          i32.const 0
          i32.const 1
          i32.store offset=1059460
          br 1 (;@2;)
        end
        i32.const 0
        i32.load offset=1059464
        local.set 5
        i32.const 0
        local.get 2
        i32.store offset=1059464
        local.get 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        local.get 5
        i32.load
        local.tee 6
        i32.const -1
        i32.add
        i32.store
        i32.const 1
        local.set 4
        local.get 6
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 5
        call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17had169b135673bc74E
      end
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 0
        i32.load
        local.tee 5
        i32.const -1
        i32.add
        i32.store
        local.get 5
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hf9e7890f89f2fbb1E
      end
      block  ;; label = @2
        local.get 4
        i32.const -1
        i32.xor
        local.get 2
        i32.const 0
        i32.ne
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 2
        i32.load
        local.tee 0
        i32.const -1
        i32.add
        i32.store
        local.get 0
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17had169b135673bc74E
      end
      local.get 1
      i32.const 96
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 1
    i32.const 92
    i32.add
    i32.const 0
    i32.store
    local.get 1
    i32.const 88
    i32.add
    i32.const 1048832
    i32.store
    local.get 1
    i64.const 1
    i64.store offset=76 align=4
    local.get 1
    i32.const 1052504
    i32.store offset=72
    local.get 1
    i32.const 71
    i32.add
    local.get 1
    i32.const 72
    i32.add
    call $_ZN4core9panicking13assert_failed17h823c04ec63ff58adE
    unreachable)
  (func $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h8a071956dd7a48d2E (type 3) (param i32 i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 2
    i32.load
    local.set 0
    local.get 2
    i32.const 0
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1024
        i32.const 1
        call $__rust_alloc
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 0
        i32.store8 offset=28
        local.get 0
        i32.const 0
        i32.store8 offset=24
        local.get 0
        i64.const 1024
        i64.store offset=16 align=4
        local.get 0
        local.get 2
        i32.store offset=12
        local.get 0
        i32.const 0
        i32.store offset=8
        local.get 0
        i64.const 0
        i64.store align=4
        return
      end
      i32.const 1048899
      i32.const 43
      i32.const 1051044
      call $_ZN4core9panicking5panic17h6405394cda32a2f1E
      unreachable
    end
    i32.const 1024
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h978fb356bc87755dE
    unreachable)
  (func $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h8b8633a15344f1e2E (type 3) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.load
    i32.store offset=12
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN3std4sync4once4Once9call_once28_$u7b$$u7b$closure$u7d$$u7d$17h02a899a6c50ac4afE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std4sync4once4Once9call_once28_$u7b$$u7b$closure$u7d$$u7d$17h02a899a6c50ac4afE (type 3) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.tee 0
    i32.load8_u
    local.set 3
    local.get 0
    i32.const 0
    i32.store8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            i32.const 0
            i32.load offset=1059396
            local.tee 0
            i32.const 3
            i32.ne
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                i32.const 1059400
                i32.const 0
                local.get 0
                i32.const 3
                i32.eq
                select
                local.tee 3
                i32.load
                i32.const 1059468
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                i32.load8_u offset=1059428
                local.set 4
                i32.const 1
                local.set 0
                i32.const 0
                i32.const 1
                i32.store8 offset=1059428
                local.get 4
                i32.const 1
                i32.and
                br_if 2 (;@4;)
                local.get 3
                i32.const 1059468
                i32.store
                br 1 (;@5;)
              end
              i32.const 0
              i32.load offset=1059404
              local.tee 4
              i32.const 1
              i32.add
              local.tee 0
              local.get 4
              i32.lt_u
              br_if 3 (;@2;)
            end
            i32.const 0
            local.get 0
            i32.store offset=1059404
            i32.const 0
            i32.load offset=1059408
            br_if 3 (;@1;)
            i32.const 0
            i32.const -1
            i32.store offset=1059408
            block  ;; label = @5
              i32.const 0
              i32.load8_u offset=1059424
              br_if 0 (;@5;)
              local.get 2
              i32.const 1059412
              call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf17h65a18ae04feeeca6E
              local.get 2
              i32.load8_u
              i32.const 3
              i32.ne
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=4
              local.tee 0
              i32.load
              local.get 0
              i32.load offset=4
              i32.load
              call_indirect (type 1)
              block  ;; label = @6
                local.get 0
                i32.load offset=4
                local.tee 4
                i32.load offset=4
                local.tee 5
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.load
                local.get 5
                local.get 4
                i32.load offset=8
                call $__rust_dealloc
              end
              local.get 0
              i32.const 12
              i32.const 4
              call $__rust_dealloc
            end
            block  ;; label = @5
              i32.const 0
              i32.load offset=1059416
              local.tee 0
              i32.eqz
              br_if 0 (;@5;)
              i32.const 0
              i32.load offset=1059412
              local.get 0
              i32.const 1
              call $__rust_dealloc
            end
            i32.const 0
            i64.const 0
            i64.store offset=1059416 align=4
            i32.const 0
            i32.const 1
            i32.store offset=1059412
            i32.const 0
            i32.const 0
            i32.load offset=1059408
            i32.const 1
            i32.add
            i32.store offset=1059408
            i32.const 0
            i32.const 0
            i32.load offset=1059404
            i32.const -1
            i32.add
            local.tee 0
            i32.store offset=1059404
            i32.const 0
            i32.const 0
            i32.store8 offset=1059424
            local.get 0
            br_if 0 (;@4;)
            local.get 3
            i32.const 0
            i32.store
            i32.const 0
            i32.const 0
            i32.store8 offset=1059428
          end
          local.get 2
          i32.const 16
          i32.add
          global.set $__stack_pointer
          return
        end
        i32.const 1048899
        i32.const 43
        i32.const 1050992
        call $_ZN4core9panicking5panic17h6405394cda32a2f1E
        unreachable
      end
      i32.const 1051344
      i32.const 38
      i32.const 1051420
      call $_ZN4core6option13expect_failed17h71dab1eaa8cb15ffE
      unreachable
    end
    i32.const 1048832
    i32.const 16
    local.get 2
    i32.const 8
    i32.add
    i32.const 1048944
    i32.const 1050656
    call $_ZN4core6result13unwrap_failed17h42eb2bde7057019eE
    unreachable)
  (func $_ZN4core9panicking13assert_failed17h823c04ec63ff58adE (type 3) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 1049634
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store
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
    i32.const 0
    local.get 2
    i32.const 1049036
    local.get 2
    i32.const 4
    i32.add
    i32.const 1049036
    local.get 2
    i32.const 8
    i32.add
    i32.const 1052568
    call $_ZN4core9panicking19assert_failed_inner17h8664cfe8c86a498cE
    unreachable)
  (func $_ZN4core3ptr100drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h335d06f119438367E (type 1) (param i32))
  (func $_ZN4core3ptr103drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$$GT$17hce023cec8850c6daE (type 1) (param i32)
    (local i32)
    local.get 0
    i32.load
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=4
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=1059456
      i32.const 2147483647
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      call $_ZN3std9panicking11panic_count17is_zero_slow_path17hb89fa1133dd94c56E
      br_if 0 (;@1;)
      local.get 1
      i32.const 1
      i32.store8 offset=1
    end
    local.get 1
    i32.const 0
    i32.store8)
  (func $_ZN3std9panicking11panic_count17is_zero_slow_path17hb89fa1133dd94c56E (type 9) (result i32)
    block  ;; label = @1
      i32.const 0
      i32.load8_u offset=1059480
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=1059484
      i32.eqz
      return
    end
    i32.const 0
    i32.const 1
    i32.store8 offset=1059480
    i32.const 0
    i32.const 0
    i32.store offset=1059484
    i32.const 1)
  (func $_ZN4core3ptr226drop_in_place$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$..from..StringError$GT$17h2170f7965e0d706dE (type 1) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.get 1
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hf9e7890f89f2fbb1E (type 1) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=16
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 0
      i32.store8
      local.get 0
      i32.const 20
      i32.add
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=16
      local.get 1
      i32.const 1
      call $__rust_dealloc
    end
    block  ;; label = @1
      local.get 0
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.const -1
      i32.add
      i32.store offset=4
      local.get 1
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 32
      i32.const 8
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr70drop_in_place$LT$std..panicking..begin_panic_handler..PanicPayload$GT$17h347aec0313a987b0E (type 1) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h53cb1572dbe1c03bE (type 1) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load8_u
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 1
      i32.load
      local.get 1
      i32.load offset=4
      i32.load
      call_indirect (type 1)
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 2
        i32.load offset=4
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load
        local.get 3
        local.get 2
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get 0
      i32.load offset=4
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr87drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$$RF$mut$u20$$u5b$u8$u5d$$GT$$GT$17h4575af63a2563a2dE (type 1) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=4
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.tee 1
      i32.load
      local.get 1
      i32.load offset=4
      i32.load
      call_indirect (type 1)
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 2
        i32.load offset=4
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load
        local.get 3
        local.get 2
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get 0
      i32.load offset=8
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end)
  (func $_ZN4core6option15Option$LT$T$GT$6unwrap17h7696a2373454ebc9E (type 5) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 1048899
      i32.const 43
      local.get 1
      call $_ZN4core9panicking5panic17h6405394cda32a2f1E
      unreachable
    end
    local.get 0)
  (func $_ZN4core6option15Option$LT$T$GT$6unwrap17h81ffd8d7f386cd65E (type 4) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 1048899
      i32.const 43
      i32.const 1051964
      call $_ZN4core9panicking5panic17h6405394cda32a2f1E
      unreachable
    end
    local.get 0)
  (func $_ZN4core9panicking13assert_failed17hef91d98d653cd256E (type 6) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 1051176
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    local.get 1
    i64.load align=4
    i64.store offset=8
    i32.const 0
    local.get 3
    i32.const 1049052
    local.get 3
    i32.const 4
    i32.add
    i32.const 1049052
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking19assert_failed_inner17h8664cfe8c86a498cE
    unreachable)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h108c6840d23e7c95E (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_ZN4core3fmt5Write10write_char17h358ec89c8ac32558E)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h139bac260cf569fdE (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_ZN4core3fmt5Write10write_char17h61e215b863f0ca6dE)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h515886c78afc694cE (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 0
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
            i32.const 12
            i32.shr_u
            i32.const 224
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
            i32.store8 offset=13
            i32.const 3
            local.set 1
            br 3 (;@1;)
          end
          local.get 2
          local.get 1
          i32.store8 offset=12
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
        i32.const 192
        i32.or
        i32.store8 offset=12
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
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h29fd8facc77f926dE
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hd35612ea4bacacf5E (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h0ce4ef053653999cE
    drop
    i32.const 0)
  (func $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h0ce4ef053653999cE (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 128
              i32.lt_u
              br_if 0 (;@5;)
              local.get 2
              i32.const 0
              i32.store offset=12
              local.get 1
              i32.const 2048
              i32.lt_u
              br_if 1 (;@4;)
              local.get 1
              i32.const 65536
              i32.ge_u
              br_if 2 (;@3;)
              local.get 2
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=14
              local.get 2
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 224
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
              i32.store8 offset=13
              i32.const 3
              local.set 1
              br 3 (;@2;)
            end
            block  ;; label = @5
              local.get 0
              i32.load offset=8
              local.tee 3
              local.get 0
              i32.const 4
              i32.add
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 0
              local.get 3
              call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf469c4dc046cd481E
              local.get 0
              i32.load offset=8
              local.set 3
            end
            local.get 0
            local.get 3
            i32.const 1
            i32.add
            i32.store offset=8
            local.get 0
            i32.load
            local.get 3
            i32.add
            local.get 1
            i32.store8
            br 3 (;@1;)
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
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 1
          br 1 (;@2;)
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
      block  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.get 0
        i32.const 8
        i32.add
        local.tee 4
        i32.load
        local.tee 3
        i32.sub
        local.get 1
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        local.get 1
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h1092057c8f533414E
        local.get 4
        i32.load
        local.set 3
      end
      local.get 0
      i32.load
      local.get 3
      i32.add
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call $memcpy
      drop
      local.get 4
      local.get 3
      local.get 1
      i32.add
      i32.store
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    i32.const 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h130f99f124dee891E (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
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
    i32.const 1048736
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h2ef748b44faf8d91E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h2d571acce61e149dE (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
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
    i32.const 1048760
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h2ef748b44faf8d91E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h374b2d257d29c421E (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
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
    i32.const 1048808
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h2ef748b44faf8d91E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h64a94de5d3773034E (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
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
    i32.const 1048784
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h2ef748b44faf8d91E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha3405926a339532fE (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 3
      i32.const 4
      i32.add
      i32.load
      local.get 3
      i32.const 8
      i32.add
      local.tee 4
      i32.load
      local.tee 0
      i32.sub
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      local.get 2
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h1092057c8f533414E
      local.get 4
      i32.load
      local.set 0
    end
    local.get 3
    i32.load
    local.get 0
    i32.add
    local.get 1
    local.get 2
    call $memcpy
    drop
    local.get 4
    local.get 0
    local.get 2
    i32.add
    i32.store
    i32.const 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hc459e8f6dc90b575E (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load
      i32.load
      local.tee 3
      i32.const 4
      i32.add
      i32.load
      local.get 3
      i32.const 8
      i32.add
      local.tee 4
      i32.load
      local.tee 0
      i32.sub
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      local.get 2
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h1092057c8f533414E
      local.get 4
      i32.load
      local.set 0
    end
    local.get 3
    i32.load
    local.get 0
    i32.add
    local.get 1
    local.get 2
    call $memcpy
    drop
    local.get 4
    local.get 0
    local.get 2
    i32.add
    i32.store
    i32.const 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hc75216ac55fa425fE (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 2
    call $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h29fd8facc77f926dE)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hea1067a2ece8e5ffE (type 7) (param i32 i32 i32) (result i32)
    (local i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    i32.load
    local.tee 0
    i32.load
    local.get 1
    local.get 2
    call $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17h549df2080f337efeE
    block  ;; label = @1
      local.get 3
      i32.load8_u offset=8
      local.tee 1
      i32.const 4
      i32.eq
      br_if 0 (;@1;)
      local.get 3
      i64.load offset=8
      local.set 4
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=4
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.add
        i32.load
        local.tee 2
        i32.load
        local.get 2
        i32.load offset=4
        i32.load
        call_indirect (type 1)
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          local.tee 5
          i32.load offset=4
          local.tee 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.load
          local.get 6
          local.get 5
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get 2
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 0
      local.get 4
      i64.store offset=4 align=4
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
    i32.const 4
    i32.ne)
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf469c4dc046cd481E (type 3) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 1
      i32.const 1
      i32.add
      local.tee 3
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 4
      i32.const 1
      i32.shl
      local.tee 1
      local.get 3
      local.get 1
      local.get 3
      i32.gt_u
      select
      local.tee 1
      i32.const 8
      local.get 1
      i32.const 8
      i32.gt_u
      select
      local.set 1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          br_if 0 (;@3;)
          i32.const 0
          local.set 3
          br 1 (;@2;)
        end
        local.get 2
        local.get 4
        i32.store offset=20
        local.get 2
        local.get 0
        i32.load
        i32.store offset=16
        i32.const 1
        local.set 3
      end
      local.get 2
      local.get 3
      i32.store offset=24
      local.get 2
      local.get 1
      i32.const 1
      local.get 2
      i32.const 16
      i32.add
      call $_ZN5alloc7raw_vec11finish_grow17h6208821f5469ce7cE
      block  ;; label = @2
        local.get 2
        i32.load
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 8
        i32.add
        i32.load
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=4
        local.get 0
        call $_ZN5alloc5alloc18handle_alloc_error17h978fb356bc87755dE
        unreachable
      end
      local.get 2
      i32.load offset=4
      local.set 3
      local.get 0
      i32.const 4
      i32.add
      local.get 1
      i32.store
      local.get 0
      local.get 3
      i32.store
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    call $_ZN5alloc7raw_vec17capacity_overflow17h985fea32c04a3f34E
    unreachable)
  (func $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17had169b135673bc74E (type 1) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.const 16
      i32.add
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=12
      local.get 1
      i32.const 1
      call $__rust_dealloc
    end
    block  ;; label = @1
      local.get 0
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.const -1
      i32.add
      i32.store offset=4
      local.get 1
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 24
      i32.const 4
      call $__rust_dealloc
    end)
  (func $_ZN5alloc7raw_vec11finish_grow17h6208821f5469ce7cE (type 11) (param i32 i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 1
                  local.set 4
                  local.get 1
                  i32.const 0
                  i32.lt_s
                  br_if 1 (;@6;)
                  local.get 3
                  i32.load offset=8
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 3
                  i32.load offset=4
                  local.tee 5
                  br_if 2 (;@5;)
                  local.get 1
                  br_if 4 (;@3;)
                  local.get 2
                  local.set 3
                  br 5 (;@2;)
                end
                local.get 0
                local.get 1
                i32.store offset=4
                i32.const 1
                local.set 4
              end
              i32.const 0
              local.set 1
              br 4 (;@1;)
            end
            local.get 3
            i32.load
            local.get 5
            local.get 2
            local.get 1
            call $__rust_realloc
            local.set 3
            br 2 (;@2;)
          end
          local.get 1
          br_if 0 (;@3;)
          local.get 2
          local.set 3
          br 1 (;@2;)
        end
        local.get 1
        local.get 2
        call $__rust_alloc
        local.set 3
      end
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        i32.store offset=4
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 2
      local.set 1
    end
    local.get 0
    local.get 4
    i32.store
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    i32.store)
  (func $_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h7d8e2150b648531dE (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.const 8
    i32.add
    i32.load
    local.get 1
    call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hfc8318cab0d901c2E)
  (func $_ZN70_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hfee43d8350e7c81bE (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        br_if 0 (;@2;)
        local.get 2
        local.get 1
        i32.const 1049203
        i32.const 2
        call $_ZN4core3fmt9Formatter11debug_tuple17h7aa349266244812cE
        local.get 2
        local.get 0
        i32.store offset=12
        local.get 2
        local.get 2
        i32.const 12
        i32.add
        i32.const 1049224
        call $_ZN4core3fmt8builders10DebugTuple5field17he06b0dd27394f923E
        drop
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.const 1049200
      i32.const 3
      call $_ZN4core3fmt9Formatter11debug_tuple17h7aa349266244812cE
      local.get 2
      local.get 0
      i32.store offset=12
      local.get 2
      local.get 2
      i32.const 12
      i32.add
      i32.const 1049208
      call $_ZN4core3fmt8builders10DebugTuple5field17he06b0dd27394f923E
      drop
    end
    local.get 2
    call $_ZN4core3fmt8builders10DebugTuple6finish17h6e906ebc6223618aE
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN3std4sync4once4Once10call_inner17h4769e389a12e9f35E (type 10) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 8
    i32.add
    i32.const 2
    i32.or
    local.set 6
    local.get 0
    i32.load
    local.set 7
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
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
                                  local.get 7
                                  br_table 1 (;@14;) 0 (;@15;) 2 (;@13;) 5 (;@10;) 2 (;@13;)
                                end
                                local.get 1
                                i32.eqz
                                br_if 2 (;@12;)
                              end
                              local.get 0
                              i32.const 2
                              local.get 0
                              i32.load
                              local.tee 8
                              local.get 8
                              local.get 7
                              i32.eq
                              local.tee 9
                              select
                              i32.store
                              local.get 9
                              br_if 2 (;@11;)
                              local.get 8
                              local.set 7
                              br 12 (;@1;)
                            end
                            block  ;; label = @13
                              local.get 7
                              i32.const 3
                              i32.and
                              i32.const 2
                              i32.ne
                              br_if 0 (;@13;)
                              loop  ;; label = @14
                                local.get 7
                                local.set 9
                                i32.const 0
                                i32.load offset=1059472
                                br_if 5 (;@9;)
                                i32.const 0
                                i32.const -1
                                i32.store offset=1059472
                                block  ;; label = @15
                                  i32.const 0
                                  i32.load offset=1059476
                                  local.tee 8
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  i32.const 0
                                  local.get 7
                                  call $_ZN3std6thread6Thread3new17h6cf2bfb440960e73E
                                  local.tee 8
                                  i32.store offset=1059476
                                end
                                local.get 8
                                local.get 8
                                i32.load
                                local.tee 7
                                i32.const 1
                                i32.add
                                i32.store
                                local.get 7
                                i32.const -1
                                i32.le_s
                                br_if 6 (;@8;)
                                i32.const 0
                                i32.const 0
                                i32.load offset=1059472
                                i32.const 1
                                i32.add
                                i32.store offset=1059472
                                local.get 8
                                i32.eqz
                                br_if 7 (;@7;)
                                local.get 0
                                local.get 6
                                local.get 0
                                i32.load
                                local.tee 7
                                local.get 7
                                local.get 9
                                i32.eq
                                select
                                i32.store
                                local.get 5
                                i32.const 0
                                i32.store8 offset=16
                                local.get 5
                                local.get 8
                                i32.store offset=8
                                local.get 5
                                local.get 9
                                i32.const -4
                                i32.and
                                i32.store offset=12
                                block  ;; label = @15
                                  local.get 7
                                  local.get 9
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.load8_u offset=16
                                  i32.eqz
                                  br_if 9 (;@6;)
                                  br 12 (;@3;)
                                end
                                block  ;; label = @15
                                  local.get 5
                                  i32.load offset=8
                                  local.tee 8
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 8
                                  local.get 8
                                  i32.load
                                  local.tee 9
                                  i32.const -1
                                  i32.add
                                  i32.store
                                  local.get 9
                                  i32.const 1
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.load offset=8
                                  call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hf9e7890f89f2fbb1E
                                end
                                local.get 7
                                i32.const 3
                                i32.and
                                i32.const 2
                                i32.eq
                                br_if 0 (;@14;)
                                br 12 (;@2;)
                              end
                            end
                            i32.const 1051060
                            i32.const 64
                            local.get 4
                            call $_ZN4core9panicking5panic17h6405394cda32a2f1E
                            unreachable
                          end
                          local.get 5
                          i32.const 28
                          i32.add
                          i32.const 0
                          i32.store
                          local.get 5
                          i32.const 1048832
                          i32.store offset=24
                          local.get 5
                          i64.const 1
                          i64.store offset=12 align=4
                          local.get 5
                          i32.const 1051168
                          i32.store offset=8
                          local.get 5
                          i32.const 8
                          i32.add
                          local.get 4
                          call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
                          unreachable
                        end
                        local.get 5
                        local.get 7
                        i32.const 1
                        i32.eq
                        i32.store8 offset=12
                        local.get 5
                        i32.const 3
                        i32.store offset=8
                        local.get 2
                        local.get 5
                        i32.const 8
                        i32.add
                        local.get 3
                        i32.load offset=16
                        call_indirect (type 3)
                        local.get 0
                        i32.load
                        local.set 7
                        local.get 0
                        local.get 5
                        i32.load offset=8
                        i32.store
                        local.get 5
                        local.get 7
                        i32.const 3
                        i32.and
                        local.tee 8
                        i32.store
                        local.get 8
                        i32.const 2
                        i32.ne
                        br_if 5 (;@5;)
                        local.get 7
                        i32.const -2
                        i32.add
                        local.tee 8
                        i32.eqz
                        br_if 0 (;@10;)
                        loop  ;; label = @11
                          local.get 8
                          i32.load
                          local.set 7
                          local.get 8
                          i32.const 0
                          i32.store
                          local.get 7
                          i32.eqz
                          br_if 7 (;@4;)
                          local.get 8
                          i32.load offset=4
                          local.set 9
                          local.get 8
                          i32.const 1
                          i32.store8 offset=8
                          local.get 7
                          i32.const 24
                          i32.add
                          call $_ZN3std10sys_common13thread_parker7generic6Parker6unpark17heb38c3567832d1bdE
                          local.get 7
                          local.get 7
                          i32.load
                          local.tee 8
                          i32.const -1
                          i32.add
                          i32.store
                          block  ;; label = @12
                            local.get 8
                            i32.const 1
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 7
                            call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hf9e7890f89f2fbb1E
                          end
                          local.get 9
                          local.set 8
                          local.get 9
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 5
                      i32.const 32
                      i32.add
                      global.set $__stack_pointer
                      return
                    end
                    i32.const 1048832
                    i32.const 16
                    local.get 5
                    i32.const 1048944
                    i32.const 1051480
                    call $_ZN4core6result13unwrap_failed17h42eb2bde7057019eE
                    unreachable
                  end
                  unreachable
                  unreachable
                end
                i32.const 1049372
                i32.const 94
                i32.const 1049496
                call $_ZN4core6option13expect_failed17h71dab1eaa8cb15ffE
                unreachable
              end
              loop  ;; label = @6
                call $_ZN3std6thread4park17h5332f1828b1fc02fE
                local.get 5
                i32.load8_u offset=16
                i32.eqz
                br_if 0 (;@6;)
                br 3 (;@3;)
              end
            end
            local.get 5
            i32.const 0
            i32.store offset=8
            local.get 5
            local.get 5
            i32.const 8
            i32.add
            i32.const 1051180
            call $_ZN4core9panicking13assert_failed17hef91d98d653cd256E
            unreachable
          end
          i32.const 1048899
          i32.const 43
          i32.const 1051196
          call $_ZN4core9panicking5panic17h6405394cda32a2f1E
          unreachable
        end
        local.get 5
        i32.load offset=8
        local.tee 7
        i32.eqz
        br_if 0 (;@2;)
        local.get 7
        local.get 7
        i32.load
        local.tee 8
        i32.const -1
        i32.add
        i32.store
        local.get 8
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=8
        call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hf9e7890f89f2fbb1E
        local.get 0
        i32.load
        local.set 7
        br 1 (;@1;)
      end
      local.get 0
      i32.load
      local.set 7
      br 0 (;@1;)
    end)
  (func $_ZN3std2rt19lang_start_internal17h357a5b85e7ff400eE (type 8) (param i32 i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 8
    i32.add
    i32.const 1049240
    i32.const 4
    call $_ZN72_$LT$$RF$str$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17hef2276e19d27c613E
    block  ;; label = @1
      local.get 4
      i32.load offset=8
      br_if 0 (;@1;)
      local.get 4
      i32.load offset=12
      local.get 4
      i32.const 16
      i32.add
      i32.load
      call $_ZN3std6thread6Thread3new17h6cf2bfb440960e73E
      call $_ZN3std10sys_common11thread_info3set17h3252bd4a84d7aa24E
      local.get 0
      local.get 1
      i32.load offset=20
      call_indirect (type 4)
      local.set 0
      block  ;; label = @2
        i32.const 0
        i32.load offset=1059388
        i32.const 3
        i32.eq
        br_if 0 (;@2;)
        local.get 4
        i32.const 1
        i32.store8 offset=40
        local.get 4
        local.get 4
        i32.const 40
        i32.add
        i32.store offset=72
        i32.const 1059388
        i32.const 0
        local.get 4
        i32.const 72
        i32.add
        i32.const 1050944
        i32.const 1049356
        call $_ZN3std4sync4once4Once10call_inner17h4769e389a12e9f35E
      end
      local.get 4
      i32.const 112
      i32.add
      global.set $__stack_pointer
      local.get 0
      return
    end
    local.get 4
    local.get 4
    i32.const 8
    i32.add
    i32.const 4
    i32.or
    i32.store offset=28
    local.get 4
    i32.const 40
    i32.add
    i32.const 20
    i32.add
    i32.const 1
    i32.store
    local.get 4
    i32.const 72
    i32.add
    i32.const 20
    i32.add
    i32.const 1
    i32.store
    local.get 4
    i64.const 2
    i64.store offset=44 align=4
    local.get 4
    i32.const 1049268
    i32.store offset=40
    local.get 4
    i32.const 5
    i32.store offset=68
    local.get 4
    i64.const 1
    i64.store offset=76 align=4
    local.get 4
    i32.const 1049324
    i32.store offset=72
    local.get 4
    i32.const 6
    i32.store offset=100
    local.get 4
    local.get 4
    i32.const 64
    i32.add
    i32.store offset=56
    local.get 4
    local.get 4
    i32.const 72
    i32.add
    i32.store offset=64
    local.get 4
    local.get 4
    i32.const 96
    i32.add
    i32.store offset=88
    local.get 4
    local.get 4
    i32.const 28
    i32.add
    i32.store offset=96
    local.get 4
    i32.const 32
    i32.add
    local.get 4
    i32.const 104
    i32.add
    local.get 4
    i32.const 40
    i32.add
    call $_ZN3std2io5Write9write_fmt17h397b3193dd120aaaE
    local.get 4
    i32.const 32
    i32.add
    call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h53cb1572dbe1c03bE
    call $_ZN3std3sys4wasi14abort_internal17hcdc2cafa96f87113E
    unreachable)
  (func $_ZN3std6thread6Thread3new17h6cf2bfb440960e73E (type 5) (param i32 i32) (result i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        i32.const 32
        i32.const 8
        call $__rust_alloc
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 0
        i32.store offset=16
        local.get 3
        i64.const 4294967297
        i64.store
        local.get 3
        i32.const 20
        i32.add
        local.get 1
        i32.store
        i32.const 0
        i32.load8_u offset=1059392
        local.set 0
        i32.const 0
        i32.const 1
        i32.store8 offset=1059392
        local.get 2
        local.get 0
        i32.store8 offset=7
        local.get 0
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i64.load offset=1059368
            local.tee 4
            i64.const -1
            i64.eq
            br_if 0 (;@4;)
            i32.const 0
            local.get 4
            i64.const 1
            i64.add
            i64.store offset=1059368
            local.get 4
            i64.const 0
            i64.ne
            br_if 1 (;@3;)
            i32.const 1048899
            i32.const 43
            i32.const 1049592
            call $_ZN4core9panicking5panic17h6405394cda32a2f1E
            unreachable
          end
          i32.const 0
          i32.const 0
          i32.store8 offset=1059392
          local.get 2
          i32.const 28
          i32.add
          i32.const 0
          i32.store
          local.get 2
          i32.const 1048832
          i32.store offset=24
          local.get 2
          i64.const 1
          i64.store offset=12 align=4
          local.get 2
          i32.const 1049568
          i32.store offset=8
          local.get 2
          i32.const 8
          i32.add
          i32.const 1049576
          call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
          unreachable
        end
        local.get 3
        i64.const 0
        i64.store offset=24
        local.get 3
        local.get 4
        i64.store offset=8
        i32.const 0
        i32.const 0
        i32.store8 offset=1059392
        local.get 2
        i32.const 32
        i32.add
        global.set $__stack_pointer
        local.get 3
        return
      end
      i32.const 32
      i32.const 8
      call $_ZN5alloc5alloc18handle_alloc_error17h978fb356bc87755dE
      unreachable
    end
    local.get 2
    i32.const 8
    i32.add
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get 2
    i32.const 24
    i32.add
    i32.const 1048832
    i32.store
    local.get 2
    i64.const 1
    i64.store offset=12 align=4
    local.get 2
    i32.const 1052504
    i32.store offset=8
    local.get 2
    i32.const 7
    i32.add
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core9panicking13assert_failed17h823c04ec63ff58adE
    unreachable)
  (func $_ZN3std10sys_common11thread_info3set17h3252bd4a84d7aa24E (type 1) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1059472
        br_if 0 (;@2;)
        i32.const 0
        i32.const -1
        i32.store offset=1059472
        i32.const 0
        i32.load offset=1059476
        br_if 1 (;@1;)
        i32.const 0
        local.get 0
        i32.store offset=1059476
        i32.const 0
        i32.const 0
        i32.store offset=1059472
        local.get 1
        i32.const 64
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 1048832
      i32.const 16
      local.get 1
      i32.const 40
      i32.add
      i32.const 1048944
      i32.const 1051496
      call $_ZN4core6result13unwrap_failed17h42eb2bde7057019eE
      unreachable
    end
    local.get 1
    i32.const 8
    i32.add
    i32.const 20
    i32.add
    i32.const 1
    i32.store
    local.get 1
    i32.const 40
    i32.add
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get 1
    i64.const 2
    i64.store offset=12 align=4
    local.get 1
    i32.const 1049268
    i32.store offset=8
    local.get 1
    i32.const 5
    i32.store offset=36
    local.get 1
    i32.const 1048832
    i32.store offset=56
    local.get 1
    i64.const 1
    i64.store offset=44 align=4
    local.get 1
    i32.const 1051552
    i32.store offset=40
    local.get 1
    local.get 1
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 1
    local.get 1
    i32.const 40
    i32.add
    i32.store offset=32
    local.get 1
    local.get 1
    i32.const 40
    i32.add
    local.get 1
    i32.const 8
    i32.add
    call $_ZN3std2io5Write9write_fmt17h397b3193dd120aaaE
    local.get 1
    call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h53cb1572dbe1c03bE
    call $_ZN3std3sys4wasi14abort_internal17hcdc2cafa96f87113E
    unreachable)
  (func $_ZN3std2io5Write9write_fmt17h397b3193dd120aaaE (type 6) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 4
    i32.store8 offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    i32.const 24
    i32.add
    i32.const 16
    i32.add
    local.get 2
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    local.get 2
    i64.load align=4
    i64.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 8
        i32.add
        i32.const 1050856
        local.get 3
        i32.const 24
        i32.add
        call $_ZN4core3fmt5write17h2ef748b44faf8d91E
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 3
          i32.load8_u offset=12
          i32.const 4
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.const 1050820
          i64.extend_i32_u
          i64.const 32
          i64.shl
          i64.const 2
          i64.or
          i64.store align=4
          br 2 (;@1;)
        end
        local.get 0
        local.get 3
        i64.load offset=12 align=4
        i64.store align=4
        br 1 (;@1;)
      end
      local.get 0
      i32.const 4
      i32.store8
      local.get 3
      i32.load8_u offset=12
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.const 16
      i32.add
      i32.load
      local.tee 2
      i32.load
      local.get 2
      i32.load offset=4
      i32.load
      call_indirect (type 1)
      block  ;; label = @2
        local.get 2
        i32.load offset=4
        local.tee 1
        i32.load offset=4
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load
        local.get 0
        local.get 1
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get 3
      i32.load offset=16
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std3sys4wasi14abort_internal17hcdc2cafa96f87113E (type 0)
    call $abort
    unreachable)
  (func $_ZN3std10sys_common13thread_parker7generic6Parker6unpark17heb38c3567832d1bdE (type 1) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 2
    local.get 0
    i32.const 2
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            br_table 2 (;@2;) 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          local.get 1
          i32.const 28
          i32.add
          i32.const 0
          i32.store
          local.get 1
          i32.const 1048832
          i32.store offset=24
          local.get 1
          i64.const 1
          i64.store offset=12 align=4
          local.get 1
          i32.const 1052948
          i32.store offset=8
          local.get 1
          i32.const 8
          i32.add
          i32.const 1052956
          call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
          unreachable
        end
        local.get 0
        i32.load8_u offset=4
        local.set 2
        local.get 0
        i32.const 1
        i32.store8 offset=4
        local.get 1
        local.get 2
        i32.const 1
        i32.and
        local.tee 2
        i32.store8 offset=7
        local.get 2
        br_if 1 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        local.set 0
        i32.const 0
        local.set 2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=1059456
                  i32.const 2147483647
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  call $_ZN3std9panicking11panic_count17is_zero_slow_path17hb89fa1133dd94c56E
                  local.set 2
                  local.get 0
                  i32.load8_u offset=1
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 2
                  i32.const 1
                  i32.xor
                  local.set 2
                  br 1 (;@6;)
                end
                local.get 0
                i32.load8_u offset=1
                i32.eqz
                br_if 2 (;@4;)
              end
              local.get 1
              local.get 2
              i32.store8 offset=12
              local.get 1
              local.get 0
              i32.store offset=8
              i32.const 1048960
              i32.const 43
              local.get 1
              i32.const 8
              i32.add
              i32.const 1049020
              i32.const 1052972
              call $_ZN4core6result13unwrap_failed17h42eb2bde7057019eE
              unreachable
            end
            local.get 2
            i32.eqz
            br_if 1 (;@3;)
          end
          i32.const 0
          i32.load offset=1059456
          i32.const 2147483647
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          call $_ZN3std9panicking11panic_count17is_zero_slow_path17hb89fa1133dd94c56E
          br_if 0 (;@3;)
          local.get 0
          i32.const 1
          i32.store8 offset=1
        end
        local.get 0
        i32.const 0
        i32.store8
      end
      local.get 1
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 1
    i32.const 28
    i32.add
    i32.const 0
    i32.store
    local.get 1
    i32.const 24
    i32.add
    i32.const 1048832
    i32.store
    local.get 1
    i64.const 1
    i64.store offset=12 align=4
    local.get 1
    i32.const 1052504
    i32.store offset=8
    local.get 1
    i32.const 7
    i32.add
    local.get 1
    i32.const 8
    i32.add
    call $_ZN4core9panicking13assert_failed17h823c04ec63ff58adE
    unreachable)
  (func $_ZN3std6thread4park17h5332f1828b1fc02fE (type 0)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=1059472
                    br_if 0 (;@8;)
                    i32.const 0
                    i32.const -1
                    i32.store offset=1059472
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1059476
                      local.tee 1
                      br_if 0 (;@9;)
                      i32.const 0
                      i32.const 0
                      local.get 1
                      call $_ZN3std6thread6Thread3new17h6cf2bfb440960e73E
                      local.tee 1
                      i32.store offset=1059476
                    end
                    local.get 1
                    local.get 1
                    i32.load
                    local.tee 2
                    i32.const 1
                    i32.add
                    i32.store
                    local.get 2
                    i32.const -1
                    i32.le_s
                    br_if 1 (;@7;)
                    i32.const 0
                    i32.const 0
                    i32.load offset=1059472
                    i32.const 1
                    i32.add
                    i32.store offset=1059472
                    local.get 1
                    i32.eqz
                    br_if 2 (;@6;)
                    local.get 1
                    i32.const 0
                    local.get 1
                    i32.load offset=24
                    local.tee 2
                    local.get 2
                    i32.const 2
                    i32.eq
                    local.tee 2
                    select
                    i32.store offset=24
                    block  ;; label = @9
                      local.get 2
                      br_if 0 (;@9;)
                      local.get 1
                      i32.const 24
                      i32.add
                      local.tee 2
                      i32.load8_u offset=4
                      local.set 3
                      local.get 2
                      i32.const 1
                      i32.store8 offset=4
                      local.get 0
                      local.get 3
                      i32.const 1
                      i32.and
                      local.tee 3
                      i32.store8 offset=4
                      local.get 3
                      br_if 4 (;@5;)
                      local.get 2
                      i32.const 4
                      i32.add
                      local.set 4
                      i32.const 0
                      local.set 5
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1059456
                        i32.const 2147483647
                        i32.and
                        i32.eqz
                        br_if 0 (;@10;)
                        call $_ZN3std9panicking11panic_count17is_zero_slow_path17hb89fa1133dd94c56E
                        i32.const 1
                        i32.xor
                        local.set 5
                      end
                      local.get 4
                      i32.load8_u offset=1
                      br_if 5 (;@4;)
                      local.get 2
                      local.get 2
                      i32.load
                      local.tee 3
                      i32.const 1
                      local.get 3
                      select
                      i32.store
                      local.get 3
                      i32.eqz
                      br_if 8 (;@1;)
                      local.get 3
                      i32.const 2
                      i32.ne
                      br_if 6 (;@3;)
                      local.get 2
                      i32.load
                      local.set 3
                      local.get 2
                      i32.const 0
                      i32.store
                      local.get 0
                      local.get 3
                      i32.store offset=4
                      local.get 3
                      i32.const 2
                      i32.ne
                      br_if 7 (;@2;)
                      block  ;; label = @10
                        local.get 5
                        br_if 0 (;@10;)
                        i32.const 0
                        i32.load offset=1059456
                        i32.const 2147483647
                        i32.and
                        i32.eqz
                        br_if 0 (;@10;)
                        call $_ZN3std9panicking11panic_count17is_zero_slow_path17hb89fa1133dd94c56E
                        br_if 0 (;@10;)
                        local.get 4
                        i32.const 1
                        i32.store8 offset=1
                      end
                      local.get 4
                      i32.const 0
                      i32.store8
                    end
                    local.get 1
                    local.get 1
                    i32.load
                    local.tee 2
                    i32.const -1
                    i32.add
                    i32.store
                    block  ;; label = @9
                      local.get 2
                      i32.const 1
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 1
                      call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hf9e7890f89f2fbb1E
                    end
                    local.get 0
                    i32.const 32
                    i32.add
                    global.set $__stack_pointer
                    return
                  end
                  i32.const 1048832
                  i32.const 16
                  local.get 0
                  i32.const 8
                  i32.add
                  i32.const 1048944
                  i32.const 1051480
                  call $_ZN4core6result13unwrap_failed17h42eb2bde7057019eE
                  unreachable
                end
                unreachable
                unreachable
              end
              i32.const 1049372
              i32.const 94
              i32.const 1049496
              call $_ZN4core6option13expect_failed17h71dab1eaa8cb15ffE
              unreachable
            end
            local.get 0
            i32.const 28
            i32.add
            i32.const 0
            i32.store
            local.get 0
            i32.const 24
            i32.add
            i32.const 1048832
            i32.store
            local.get 0
            i64.const 1
            i64.store offset=12 align=4
            local.get 0
            i32.const 1052504
            i32.store offset=8
            local.get 0
            i32.const 4
            i32.add
            local.get 0
            i32.const 8
            i32.add
            call $_ZN4core9panicking13assert_failed17h823c04ec63ff58adE
            unreachable
          end
          local.get 0
          local.get 5
          i32.store8 offset=12
          local.get 0
          local.get 4
          i32.store offset=8
          i32.const 1048960
          i32.const 43
          local.get 0
          i32.const 8
          i32.add
          i32.const 1049020
          i32.const 1052800
          call $_ZN4core6result13unwrap_failed17h42eb2bde7057019eE
          unreachable
        end
        local.get 0
        i32.const 28
        i32.add
        i32.const 0
        i32.store
        local.get 0
        i32.const 1048832
        i32.store offset=24
        local.get 0
        i64.const 1
        i64.store offset=12 align=4
        local.get 0
        i32.const 1052840
        i32.store offset=8
        local.get 0
        i32.const 8
        i32.add
        i32.const 1052848
        call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
        unreachable
      end
      local.get 0
      i32.const 28
      i32.add
      i32.const 0
      i32.store
      local.get 0
      i32.const 24
      i32.add
      i32.const 1048832
      i32.store
      local.get 0
      i64.const 1
      i64.store offset=12 align=4
      local.get 0
      i32.const 1052896
      i32.store offset=8
      local.get 0
      i32.const 4
      i32.add
      local.get 0
      i32.const 8
      i32.add
      i32.const 1052904
      call $_ZN4core9panicking13assert_failed17hef91d98d653cd256E
      unreachable
    end
    local.get 0
    i32.const 28
    i32.add
    i32.const 0
    i32.store
    local.get 0
    i32.const 1048832
    i32.store offset=24
    local.get 0
    i64.const 1
    i64.store offset=12 align=4
    local.get 0
    i32.const 1052392
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 1052456
    call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
    unreachable)
  (func $_ZN3std3env11current_dir17h68c09426d5d24bc0E (type 1) (param i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 512
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 512
            i32.const 1
            call $__rust_alloc
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 512
            i32.store offset=4
            local.get 1
            local.get 3
            i32.store
            local.get 3
            i32.const 512
            call $getcwd
            br_if 1 (;@3;)
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=1059984
                  local.tee 2
                  i32.const 68
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 512
                  local.set 2
                  br 1 (;@6;)
                end
                local.get 0
                i64.const 1
                i64.store align=4
                local.get 0
                i32.const 8
                i32.add
                local.get 2
                i32.store
                i32.const 512
                local.set 2
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 1
                local.get 2
                i32.store offset=8
                local.get 1
                local.get 2
                i32.const 1
                call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h1092057c8f533414E
                local.get 1
                i32.load
                local.tee 3
                local.get 1
                i32.load offset=4
                local.tee 2
                call $getcwd
                br_if 3 (;@3;)
                i32.const 0
                i32.load offset=1059984
                local.tee 4
                i32.const 68
                i32.eq
                br_if 0 (;@6;)
              end
              local.get 0
              i64.const 1
              i64.store align=4
              local.get 0
              i32.const 8
              i32.add
              local.get 4
              i32.store
              local.get 2
              i32.eqz
              br_if 3 (;@2;)
            end
            local.get 3
            local.get 2
            i32.const 1
            call $__rust_dealloc
            br 2 (;@2;)
          end
          i32.const 512
          i32.const 1
          call $_ZN5alloc5alloc18handle_alloc_error17h978fb356bc87755dE
          unreachable
        end
        local.get 1
        local.get 3
        call $strlen
        local.tee 4
        i32.store offset=8
        block  ;; label = @3
          local.get 2
          local.get 4
          i32.le_u
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              br_if 0 (;@5;)
              i32.const 1
              local.set 5
              local.get 3
              local.get 2
              i32.const 1
              call $__rust_dealloc
              br 1 (;@4;)
            end
            local.get 3
            local.get 2
            i32.const 1
            local.get 4
            call $__rust_realloc
            local.tee 5
            i32.eqz
            br_if 3 (;@1;)
          end
          local.get 1
          local.get 4
          i32.store offset=4
          local.get 1
          local.get 5
          i32.store
        end
        local.get 0
        local.get 1
        i64.load
        i64.store offset=4 align=4
        local.get 0
        i32.const 0
        i32.store
        local.get 0
        i32.const 12
        i32.add
        local.get 1
        i32.const 8
        i32.add
        i32.load
        i32.store
      end
      local.get 1
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 4
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h978fb356bc87755dE
    unreachable)
  (func $_ZN3std3env7_var_os17ha91cdc66697672a5E (type 6) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    local.get 2
    call $_ZN72_$LT$$RF$str$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17hef2276e19d27c613E
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.load offset=8
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 3
              i32.const 20
              i32.add
              i32.load
              local.tee 1
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.const 16
              i32.add
              i32.load
              local.get 1
              i32.const 1
              call $__rust_dealloc
            end
            local.get 0
            i32.const 0
            i32.store
            br 1 (;@3;)
          end
          local.get 3
          i32.const 16
          i32.add
          i32.load
          local.set 4
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.load offset=12
              local.tee 2
              call $getenv
              local.tee 5
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                block  ;; label = @7
                  local.get 5
                  call $strlen
                  local.tee 1
                  br_if 0 (;@7;)
                  i32.const 1
                  local.set 6
                  br 1 (;@6;)
                end
                local.get 1
                i32.const 0
                i32.lt_s
                br_if 4 (;@2;)
                local.get 1
                i32.const 1
                call $__rust_alloc
                local.tee 6
                i32.eqz
                br_if 5 (;@1;)
              end
              local.get 6
              local.get 5
              local.get 1
              call $memcpy
              local.set 5
              local.get 0
              i32.const 8
              i32.add
              local.get 1
              i32.store
              local.get 0
              local.get 1
              i32.store offset=4
              local.get 0
              local.get 5
              i32.store
              br 1 (;@4;)
            end
            local.get 0
            i32.const 0
            i32.store
          end
          local.get 2
          i32.const 0
          i32.store8
          local.get 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 4
          i32.const 1
          call $__rust_dealloc
        end
        local.get 3
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      call $_ZN5alloc7raw_vec17capacity_overflow17h985fea32c04a3f34E
      unreachable
    end
    local.get 1
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h978fb356bc87755dE
    unreachable)
  (func $_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hd20c3c83e26fca9cE (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load8_u
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 3 (;@2;) 0 (;@5;)
            end
            local.get 2
            local.get 0
            i32.const 4
            i32.add
            i32.load
            local.tee 0
            i32.store offset=4
            local.get 2
            i32.const 8
            i32.add
            local.get 0
            call $_ZN3std3sys4wasi2os12error_string17h2b92a107b9120b6aE
            local.get 2
            i32.const 60
            i32.add
            i32.const 2
            i32.store
            local.get 2
            i32.const 36
            i32.add
            i32.const 7
            i32.store
            local.get 2
            i64.const 3
            i64.store offset=44 align=4
            local.get 2
            i32.const 1050564
            i32.store offset=40
            local.get 2
            i32.const 8
            i32.store offset=28
            local.get 2
            local.get 2
            i32.const 24
            i32.add
            i32.store offset=56
            local.get 2
            local.get 2
            i32.const 4
            i32.add
            i32.store offset=32
            local.get 2
            local.get 2
            i32.const 8
            i32.add
            i32.store offset=24
            local.get 1
            local.get 2
            i32.const 40
            i32.add
            call $_ZN4core3fmt9Formatter9write_fmt17hec9643383b3d06f7E
            local.set 0
            local.get 2
            i32.load offset=12
            local.tee 1
            i32.eqz
            br_if 3 (;@1;)
            local.get 2
            i32.load offset=8
            local.get 1
            i32.const 1
            call $__rust_dealloc
            br 3 (;@1;)
          end
          local.get 0
          i32.load8_u offset=1
          local.set 0
          local.get 2
          i32.const 60
          i32.add
          i32.const 1
          i32.store
          local.get 2
          i64.const 1
          i64.store offset=44 align=4
          local.get 2
          i32.const 1049624
          i32.store offset=40
          local.get 2
          i32.const 9
          i32.store offset=12
          local.get 2
          local.get 0
          i32.const 32
          i32.xor
          i32.const 63
          i32.and
          i32.const 2
          i32.shl
          local.tee 0
          i32.const 1052988
          i32.add
          i32.load
          i32.store offset=28
          local.get 2
          local.get 0
          i32.const 1053244
          i32.add
          i32.load
          i32.store offset=24
          local.get 2
          local.get 2
          i32.const 8
          i32.add
          i32.store offset=56
          local.get 2
          local.get 2
          i32.const 24
          i32.add
          i32.store offset=8
          local.get 1
          local.get 2
          i32.const 40
          i32.add
          call $_ZN4core3fmt9Formatter9write_fmt17hec9643383b3d06f7E
          local.set 0
          br 2 (;@1;)
        end
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 0
        i32.load
        local.get 0
        i32.load offset=4
        local.get 1
        call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hfc8318cab0d901c2E
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 0
      i32.load
      local.get 1
      local.get 0
      i32.load offset=4
      i32.load offset=16
      call_indirect (type 5)
      local.set 0
    end
    local.get 2
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN3std3sys4wasi17decode_error_kind17h9480121bcf427010E (type 4) (param i32) (result i32)
    (local i32)
    i32.const 40
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 65535
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 2
      local.set 1
      i32.const 1052714
      call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 3
      local.set 1
      i32.const 1052716
      call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 1
      local.set 1
      i32.const 1052718
      call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 1052720
      call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 11
      local.set 1
      i32.const 1052722
      call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 7
      local.set 1
      i32.const 1052724
      call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 6
      local.set 1
      i32.const 1052726
      call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 9
      local.set 1
      i32.const 1052728
      call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 8
      local.set 1
      i32.const 1052730
      call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      local.set 1
      i32.const 1052732
      call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 35
      local.set 1
      i32.const 1052734
      call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 20
      local.set 1
      i32.const 1052736
      call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 22
      local.set 1
      i32.const 1052738
      call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 12
      local.set 1
      i32.const 1052740
      call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 13
      local.set 1
      i32.const 1052742
      call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 36
      local.set 1
      i32.const 1052744
      call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 38
      i32.const 40
      i32.const 1052746
      call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      select
      local.set 1
    end
    local.get 1)
  (func $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf17h65a18ae04feeeca6E (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 8
          i32.add
          i32.load
          local.tee 3
          br_if 0 (;@3;)
          local.get 0
          i32.const 4
          i32.store8
          br 1 (;@2;)
        end
        local.get 1
        i32.load
        local.set 4
        i32.const 0
        local.set 5
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                local.get 5
                i32.lt_u
                br_if 0 (;@6;)
                local.get 2
                local.get 3
                local.get 5
                i32.sub
                local.tee 6
                i32.store offset=12
                local.get 2
                local.get 4
                local.get 5
                i32.add
                local.tee 7
                i32.store offset=8
                local.get 2
                i32.const 16
                i32.add
                i32.const 1
                local.get 2
                i32.const 8
                i32.add
                i32.const 1
                call $_ZN4wasi13lib_generated8fd_write17h1a5ab77e414e78b1E
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 2
                        i32.load16_u offset=16
                        br_if 0 (;@10;)
                        local.get 2
                        i32.load offset=20
                        local.set 8
                        br 1 (;@9;)
                      end
                      local.get 2
                      local.get 2
                      i32.load16_u offset=18
                      i32.store16 offset=30
                      local.get 6
                      local.set 8
                      local.get 2
                      i32.const 30
                      i32.add
                      call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
                      i32.const 65535
                      i32.and
                      local.tee 9
                      i32.const 1052712
                      call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
                      i32.const 65535
                      i32.and
                      i32.ne
                      br_if 1 (;@8;)
                    end
                    local.get 1
                    i32.const 0
                    i32.store8 offset=12
                    local.get 8
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 8
                    local.get 5
                    i32.add
                    local.set 5
                    br 4 (;@4;)
                  end
                  local.get 1
                  i32.const 0
                  i32.store8 offset=12
                  local.get 9
                  call $_ZN3std3sys4wasi17decode_error_kind17h9480121bcf427010E
                  i32.const 255
                  i32.and
                  i32.const 35
                  i32.eq
                  br_if 3 (;@4;)
                  local.get 0
                  i32.const 0
                  i32.store
                  local.get 0
                  i32.const 4
                  i32.add
                  local.get 9
                  i32.store
                  br 2 (;@5;)
                end
                local.get 0
                i32.const 1049668
                i64.extend_i32_u
                i64.const 32
                i64.shl
                i64.const 2
                i64.or
                i64.store align=4
                br 1 (;@5;)
              end
              local.get 5
              local.get 3
              i32.const 1049720
              call $_ZN4core5slice5index26slice_start_index_len_fail17h4a9053b9acbf3e79E
              unreachable
            end
            local.get 5
            i32.eqz
            br_if 2 (;@2;)
            local.get 1
            i32.const 8
            i32.add
            local.tee 5
            i32.const 0
            i32.store
            local.get 6
            i32.eqz
            br_if 2 (;@2;)
            local.get 4
            local.get 7
            local.get 6
            call $memmove
            drop
            local.get 5
            local.get 6
            i32.store
            br 2 (;@2;)
          end
          local.get 3
          local.get 5
          i32.gt_u
          br_if 0 (;@3;)
        end
        local.get 0
        i32.const 4
        i32.store8
        local.get 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 5
        i32.lt_u
        br_if 1 (;@1;)
        local.get 1
        i32.const 8
        i32.add
        local.tee 8
        i32.const 0
        i32.store
        local.get 3
        local.get 5
        i32.sub
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load
        local.tee 6
        local.get 6
        local.get 5
        i32.add
        local.get 3
        call $memmove
        drop
        local.get 8
        local.get 3
        i32.store
      end
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 5
    local.get 3
    i32.const 1049184
    call $_ZN4core5slice5index24slice_end_index_len_fail17hf80e6eb70f53b009E
    unreachable)
  (func $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h5ef8adb53b509a22E (type 11) (param i32 i32 i32 i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        local.tee 5
        i32.load
        local.get 1
        i32.const 8
        i32.add
        i32.load
        i32.sub
        local.get 3
        i32.ge_u
        br_if 0 (;@2;)
        local.get 4
        i32.const 8
        i32.add
        local.get 1
        call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf17h65a18ae04feeeca6E
        local.get 4
        i32.load8_u offset=8
        i32.const 4
        i32.eq
        br_if 0 (;@2;)
        local.get 4
        i64.load offset=8
        local.tee 6
        i32.wrap_i64
        i32.const 255
        i32.and
        i32.const 4
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 6
        i64.store align=4
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 5
        i32.load
        local.get 3
        i32.le_u
        br_if 0 (;@2;)
        local.get 1
        i32.load
        local.get 1
        i32.const 8
        i32.add
        local.tee 1
        i32.load
        local.tee 5
        i32.add
        local.get 2
        local.get 3
        call $memcpy
        drop
        local.get 0
        i32.const 4
        i32.store8
        local.get 1
        local.get 5
        local.get 3
        i32.add
        i32.store
        br 1 (;@1;)
      end
      local.get 1
      i32.const 1
      i32.store8 offset=12
      local.get 4
      i32.const 8
      i32.add
      local.get 1
      local.get 2
      local.get 3
      call $_ZN60_$LT$std..io..stdio..StdoutRaw$u20$as$u20$std..io..Write$GT$9write_all17h8008b773c794b33fE
      local.get 1
      i32.const 0
      i32.store8 offset=12
      local.get 0
      local.get 4
      i64.load offset=8
      i64.store align=4
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN60_$LT$std..io..stdio..StdoutRaw$u20$as$u20$std..io..Write$GT$9write_all17h8008b773c794b33fE (type 11) (param i32 i32 i32 i32)
    (local i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    i64.const 4
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.eqz
              br_if 0 (;@5;)
              loop  ;; label = @6
                local.get 4
                local.get 3
                i32.store offset=12
                local.get 4
                local.get 2
                i32.store offset=8
                local.get 4
                i32.const 16
                i32.add
                i32.const 1
                local.get 4
                i32.const 8
                i32.add
                i32.const 1
                call $_ZN4wasi13lib_generated8fd_write17h1a5ab77e414e78b1E
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 4
                      i32.load16_u offset=16
                      local.tee 6
                      br_if 0 (;@9;)
                      local.get 4
                      i32.load offset=20
                      local.tee 7
                      br_if 1 (;@8;)
                      i32.const 1050616
                      local.set 7
                      i64.const 2
                      local.set 5
                      br 6 (;@3;)
                    end
                    local.get 4
                    local.get 4
                    i32.load16_u offset=18
                    i32.store16 offset=30
                    local.get 4
                    i32.const 30
                    i32.add
                    call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
                    i32.const 65535
                    i32.and
                    local.tee 7
                    call $_ZN3std3sys4wasi17decode_error_kind17h9480121bcf427010E
                    i32.const 255
                    i32.and
                    i32.const 35
                    i32.eq
                    br_if 1 (;@7;)
                    i64.const 0
                    local.set 5
                    br 5 (;@3;)
                  end
                  local.get 3
                  local.get 7
                  i32.lt_u
                  br_if 3 (;@4;)
                  local.get 2
                  local.get 7
                  i32.add
                  local.set 2
                  local.get 3
                  local.get 7
                  i32.sub
                  local.set 3
                end
                local.get 3
                br_if 0 (;@6;)
              end
            end
            br 2 (;@2;)
          end
          local.get 7
          local.get 3
          i32.const 1050788
          call $_ZN4core5slice5index26slice_start_index_len_fail17h4a9053b9acbf3e79E
          unreachable
        end
        i32.const 1052712
        call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
        local.set 3
        local.get 6
        i32.eqz
        br_if 0 (;@2;)
        local.get 7
        local.get 3
        i32.const 65535
        i32.and
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 4
        i32.store8
        br 1 (;@1;)
      end
      local.get 0
      local.get 7
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.get 5
      i64.or
      i64.store align=4
    end
    local.get 4
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std3sys4wasi2os12error_string17h2b92a107b9120b6aE (type 3) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 1056
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            local.get 2
            i32.const 0
            i32.const 1024
            call $memset
            local.tee 2
            i32.const 1024
            call $strerror_r
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
            local.get 2
            i32.const 1024
            i32.add
            local.get 2
            local.get 2
            call $strlen
            call $_ZN4core3str8converts9from_utf817h6fbe8c227eaa57ffE
            local.get 2
            i32.load offset=1024
            br_if 1 (;@3;)
            local.get 2
            i32.load offset=1028
            local.set 3
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.const 1032
                i32.add
                i32.load
                local.tee 1
                br_if 0 (;@6;)
                i32.const 1
                local.set 4
                br 1 (;@5;)
              end
              local.get 1
              i32.const 0
              i32.lt_s
              br_if 3 (;@2;)
              local.get 1
              i32.const 1
              call $__rust_alloc
              local.tee 4
              i32.eqz
              br_if 4 (;@1;)
            end
            local.get 4
            local.get 3
            local.get 1
            call $memcpy
            local.set 3
            local.get 0
            local.get 1
            i32.store offset=8
            local.get 0
            local.get 1
            i32.store offset=4
            local.get 0
            local.get 3
            i32.store
            local.get 2
            i32.const 1056
            i32.add
            global.set $__stack_pointer
            return
          end
          local.get 2
          i32.const 1044
          i32.add
          i32.const 0
          i32.store
          local.get 2
          i32.const 1048832
          i32.store offset=1040
          local.get 2
          i64.const 1
          i64.store offset=1028 align=4
          local.get 2
          i32.const 1052640
          i32.store offset=1024
          local.get 2
          i32.const 1024
          i32.add
          i32.const 1052680
          call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
          unreachable
        end
        local.get 2
        local.get 2
        i64.load offset=1028 align=4
        i64.store offset=1048
        i32.const 1048960
        i32.const 43
        local.get 2
        i32.const 1048
        i32.add
        i32.const 1049004
        i32.const 1052696
        call $_ZN4core6result13unwrap_failed17h42eb2bde7057019eE
        unreachable
      end
      call $_ZN5alloc7raw_vec17capacity_overflow17h985fea32c04a3f34E
      unreachable
    end
    local.get 1
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h978fb356bc87755dE
    unreachable)
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17hfa05a960524aa24dE (type 11) (param i32 i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 1
      i32.const 4
      i32.add
      i32.load
      local.get 1
      i32.const 8
      i32.add
      local.tee 4
      i32.load
      local.tee 5
      i32.sub
      local.get 3
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      local.get 5
      local.get 3
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h1092057c8f533414E
      local.get 4
      i32.load
      local.set 5
    end
    local.get 1
    i32.load
    local.get 5
    i32.add
    local.get 2
    local.get 3
    call $memcpy
    drop
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 4
    local.get 5
    local.get 3
    i32.add
    i32.store
    local.get 0
    i32.const 0
    i32.store)
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h819318eb55b75955E (type 11) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 3
            i32.shl
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.const -1
            i32.add
            i32.const 536870911
            i32.and
            local.tee 5
            i32.const 1
            i32.add
            local.tee 6
            i32.const 7
            i32.and
            local.set 7
            local.get 5
            i32.const 7
            i32.ge_u
            br_if 1 (;@3;)
            i32.const 0
            local.set 6
            local.get 2
            local.set 5
            br 2 (;@2;)
          end
          local.get 1
          i32.const 4
          i32.add
          local.set 8
          local.get 1
          i32.const 8
          i32.add
          local.set 5
          i32.const 0
          local.set 6
          br 2 (;@1;)
        end
        local.get 2
        i32.const 60
        i32.add
        local.set 5
        local.get 6
        i32.const 1073741816
        i32.and
        local.set 9
        i32.const 0
        local.set 6
        loop  ;; label = @3
          local.get 5
          i32.load
          local.get 5
          i32.const -8
          i32.add
          i32.load
          local.get 5
          i32.const -16
          i32.add
          i32.load
          local.get 5
          i32.const -24
          i32.add
          i32.load
          local.get 5
          i32.const -32
          i32.add
          i32.load
          local.get 5
          i32.const -40
          i32.add
          i32.load
          local.get 5
          i32.const -48
          i32.add
          i32.load
          local.get 5
          i32.const -56
          i32.add
          i32.load
          local.get 6
          i32.add
          i32.add
          i32.add
          i32.add
          i32.add
          i32.add
          i32.add
          i32.add
          local.set 6
          local.get 5
          i32.const 64
          i32.add
          local.set 5
          local.get 9
          i32.const -8
          i32.add
          local.tee 9
          br_if 0 (;@3;)
        end
        local.get 5
        i32.const -60
        i32.add
        local.set 5
      end
      block  ;; label = @2
        local.get 7
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.const 4
        i32.add
        local.set 5
        loop  ;; label = @3
          local.get 5
          i32.load
          local.get 6
          i32.add
          local.set 6
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 7
          i32.const -1
          i32.add
          local.tee 7
          br_if 0 (;@3;)
        end
      end
      local.get 1
      i32.const 8
      i32.add
      local.set 5
      local.get 1
      i32.const 4
      i32.add
      local.tee 8
      i32.load
      local.get 1
      i32.load offset=8
      local.tee 7
      i32.sub
      local.get 6
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      local.get 7
      local.get 6
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h1092057c8f533414E
    end
    block  ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 4
      i32.add
      local.set 3
      local.get 5
      i32.load
      local.set 5
      loop  ;; label = @2
        local.get 2
        i32.load
        local.set 9
        block  ;; label = @3
          local.get 8
          i32.load
          local.get 5
          i32.sub
          local.get 2
          i32.const 4
          i32.add
          i32.load
          local.tee 7
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 5
          local.get 7
          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h1092057c8f533414E
          local.get 1
          i32.load offset=8
          local.set 5
        end
        local.get 1
        i32.load
        local.get 5
        i32.add
        local.get 9
        local.get 7
        call $memcpy
        drop
        local.get 1
        local.get 5
        local.get 7
        i32.add
        local.tee 5
        i32.store offset=8
        local.get 3
        local.get 2
        i32.const 8
        i32.add
        local.tee 2
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0
    i32.const 0
    i32.store
    local.get 0
    local.get 6
    i32.store offset=4)
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$17is_write_vectored17h3901fd8e7571a3d8E (type 4) (param i32) (result i32)
    i32.const 1)
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hf3e99fae79f03350E (type 11) (param i32 i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 1
      i32.const 4
      i32.add
      i32.load
      local.get 1
      i32.const 8
      i32.add
      local.tee 4
      i32.load
      local.tee 5
      i32.sub
      local.get 3
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      local.get 5
      local.get 3
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h1092057c8f533414E
      local.get 4
      i32.load
      local.set 5
    end
    local.get 1
    i32.load
    local.get 5
    i32.add
    local.get 2
    local.get 3
    call $memcpy
    drop
    local.get 0
    i32.const 4
    i32.store8
    local.get 4
    local.get 5
    local.get 3
    i32.add
    i32.store)
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5flush17hde6ed85a18f77b85E (type 3) (param i32 i32)
    local.get 0
    i32.const 4
    i32.store8)
  (func $_ZN3std2io5Write18write_all_vectored17h43b8d14001c950f0E (type 11) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              br_if 0 (;@5;)
              i32.const 0
              local.set 5
              br 1 (;@4;)
            end
            local.get 2
            i32.const 4
            i32.add
            local.set 6
            local.get 3
            i32.const -1
            i32.add
            i32.const 536870911
            i32.and
            i32.const 1
            i32.add
            local.set 7
            i32.const 0
            local.set 5
            block  ;; label = @5
              loop  ;; label = @6
                local.get 6
                i32.load
                br_if 1 (;@5;)
                local.get 6
                i32.const 8
                i32.add
                local.set 6
                local.get 7
                local.get 5
                i32.const 1
                i32.add
                local.tee 5
                i32.ne
                br_if 0 (;@6;)
              end
              local.get 7
              local.set 5
            end
            local.get 5
            local.get 3
            i32.gt_u
            br_if 1 (;@3;)
          end
          local.get 3
          local.get 5
          i32.sub
          local.tee 7
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          local.get 5
          i32.const 3
          i32.shl
          i32.add
          local.set 5
          block  ;; label = @4
            loop  ;; label = @5
              local.get 4
              i32.const 8
              i32.add
              i32.const 2
              local.get 5
              local.get 7
              call $_ZN4wasi13lib_generated8fd_write17h1a5ab77e414e78b1E
              block  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  i32.load16_u offset=8
                  br_if 0 (;@7;)
                  local.get 4
                  i32.load offset=12
                  local.tee 8
                  br_if 1 (;@6;)
                  local.get 0
                  i32.const 1050616
                  i64.extend_i32_u
                  i64.const 32
                  i64.shl
                  i64.const 2
                  i64.or
                  i64.store align=4
                  br 6 (;@1;)
                end
                local.get 4
                local.get 4
                i32.load16_u offset=10
                i32.store16 offset=6
                local.get 4
                i32.const 6
                i32.add
                call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
                i32.const 65535
                i32.and
                local.tee 6
                call $_ZN3std3sys4wasi17decode_error_kind17h9480121bcf427010E
                i32.const 255
                i32.and
                i32.const 35
                i32.eq
                br_if 1 (;@5;)
                local.get 0
                i32.const 0
                i32.store
                local.get 0
                i32.const 4
                i32.add
                local.get 6
                i32.store
                br 5 (;@1;)
              end
              local.get 5
              i32.const 4
              i32.add
              local.set 6
              local.get 7
              i32.const -1
              i32.add
              i32.const 536870911
              i32.and
              i32.const 1
              i32.add
              local.set 9
              i32.const 0
              local.set 3
              i32.const 0
              local.set 2
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 6
                  i32.load
                  local.get 2
                  i32.add
                  local.tee 10
                  local.get 8
                  i32.gt_u
                  br_if 1 (;@6;)
                  local.get 6
                  i32.const 8
                  i32.add
                  local.set 6
                  local.get 10
                  local.set 2
                  local.get 9
                  local.get 3
                  i32.const 1
                  i32.add
                  local.tee 3
                  i32.ne
                  br_if 0 (;@7;)
                end
                local.get 10
                local.set 2
                local.get 9
                local.set 3
              end
              block  ;; label = @6
                local.get 7
                local.get 3
                i32.lt_u
                br_if 0 (;@6;)
                local.get 7
                local.get 3
                i32.sub
                local.tee 7
                i32.eqz
                br_if 4 (;@2;)
                local.get 5
                local.get 3
                i32.const 3
                i32.shl
                i32.add
                local.tee 5
                i32.load offset=4
                local.tee 3
                local.get 8
                local.get 2
                i32.sub
                local.tee 6
                i32.lt_u
                br_if 2 (;@4;)
                local.get 5
                i32.const 4
                i32.add
                local.get 3
                local.get 6
                i32.sub
                i32.store
                local.get 5
                local.get 5
                i32.load
                local.get 6
                i32.add
                i32.store
                br 1 (;@5;)
              end
            end
            local.get 3
            local.get 7
            i32.const 1050772
            call $_ZN4core5slice5index26slice_start_index_len_fail17h4a9053b9acbf3e79E
            unreachable
          end
          local.get 4
          i32.const 28
          i32.add
          i32.const 0
          i32.store
          local.get 4
          i32.const 1048832
          i32.store offset=24
          local.get 4
          i64.const 1
          i64.store offset=12 align=4
          local.get 4
          i32.const 1052308
          i32.store offset=8
          local.get 4
          i32.const 8
          i32.add
          i32.const 1052348
          call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
          unreachable
        end
        local.get 5
        local.get 3
        i32.const 1050772
        call $_ZN4core5slice5index26slice_start_index_len_fail17h4a9053b9acbf3e79E
        unreachable
      end
      local.get 0
      i32.const 4
      i32.store8
    end
    local.get 4
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN61_$LT$$RF$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_fmt17hb64921861487c42fE (type 6) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load
            i32.load
            local.tee 1
            i32.load
            i32.const 1059468
            i32.eq
            br_if 0 (;@4;)
            local.get 1
            i32.load8_u offset=28
            local.set 4
            local.get 1
            i32.const 1
            i32.store8 offset=28
            local.get 3
            local.get 4
            i32.const 1
            i32.and
            local.tee 4
            i32.store8 offset=8
            local.get 4
            br_if 2 (;@2;)
            local.get 1
            i32.const 1
            i32.store offset=4
            local.get 1
            i32.const 1059468
            i32.store
            br 1 (;@3;)
          end
          local.get 1
          i32.load offset=4
          local.tee 4
          i32.const 1
          i32.add
          local.tee 5
          local.get 4
          i32.lt_u
          br_if 2 (;@1;)
          local.get 1
          local.get 5
          i32.store offset=4
        end
        local.get 3
        local.get 1
        i32.store offset=4
        local.get 3
        i32.const 4
        i32.store8 offset=12
        local.get 3
        local.get 3
        i32.const 4
        i32.add
        i32.store offset=8
        local.get 3
        i32.const 24
        i32.add
        i32.const 16
        i32.add
        local.get 2
        i32.const 16
        i32.add
        i64.load align=4
        i64.store
        local.get 3
        i32.const 24
        i32.add
        i32.const 8
        i32.add
        local.get 2
        i32.const 8
        i32.add
        i64.load align=4
        i64.store
        local.get 3
        local.get 2
        i64.load align=4
        i64.store offset=24
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 8
            i32.add
            i32.const 1050832
            local.get 3
            i32.const 24
            i32.add
            call $_ZN4core3fmt5write17h2ef748b44faf8d91E
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 3
              i32.load8_u offset=12
              i32.const 4
              i32.ne
              br_if 0 (;@5;)
              local.get 0
              i32.const 1050820
              i64.extend_i32_u
              i64.const 32
              i64.shl
              i64.const 2
              i64.or
              i64.store align=4
              br 2 (;@3;)
            end
            local.get 0
            local.get 3
            i64.load offset=12 align=4
            i64.store align=4
            br 1 (;@3;)
          end
          local.get 0
          i32.const 4
          i32.store8
          local.get 3
          i32.load8_u offset=12
          i32.const 3
          i32.ne
          br_if 0 (;@3;)
          local.get 3
          i32.const 16
          i32.add
          i32.load
          local.tee 1
          i32.load
          local.get 1
          i32.load offset=4
          i32.load
          call_indirect (type 1)
          block  ;; label = @4
            local.get 1
            i32.load offset=4
            local.tee 2
            i32.load offset=4
            local.tee 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.load
            local.get 0
            local.get 2
            i32.load offset=8
            call $__rust_dealloc
          end
          local.get 3
          i32.load offset=16
          i32.const 12
          i32.const 4
          call $__rust_dealloc
        end
        local.get 3
        i32.load offset=4
        local.tee 1
        local.get 1
        i32.load offset=4
        i32.const -1
        i32.add
        local.tee 2
        i32.store offset=4
        block  ;; label = @3
          local.get 2
          br_if 0 (;@3;)
          local.get 1
          i32.const 0
          i32.store8 offset=28
          local.get 1
          i32.const 0
          i32.store
        end
        local.get 3
        i32.const 48
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 3
      i32.const 44
      i32.add
      i32.const 0
      i32.store
      local.get 3
      i32.const 40
      i32.add
      i32.const 1048832
      i32.store
      local.get 3
      i64.const 1
      i64.store offset=28 align=4
      local.get 3
      i32.const 1052504
      i32.store offset=24
      local.get 3
      i32.const 8
      i32.add
      local.get 3
      i32.const 24
      i32.add
      call $_ZN4core9panicking13assert_failed17h823c04ec63ff58adE
      unreachable
    end
    i32.const 1051344
    i32.const 38
    i32.const 1051420
    call $_ZN4core6option13expect_failed17h71dab1eaa8cb15ffE
    unreachable)
  (func $_ZN3std2io5stdio6_print17h10f44ed2e1581f9bE (type 1) (param i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 16
    i32.add
    local.get 0
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 1
    local.get 0
    i64.load align=4
    i64.store
    local.get 1
    i32.const 6
    i32.store offset=28
    local.get 1
    i32.const 1050740
    i32.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load8_u offset=1059393
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          i32.const 0
          i32.load offset=1059460
          br_if 0 (;@3;)
          i32.const 0
          i64.const 1
          i64.store offset=1059460 align=4
          br 1 (;@2;)
        end
        i32.const 0
        i32.load offset=1059464
        local.set 0
        i32.const 0
        i32.const 0
        i32.store offset=1059464
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load8_u offset=8
        local.set 2
        i32.const 1
        local.set 3
        local.get 0
        i32.const 1
        i32.store8 offset=8
        local.get 1
        local.get 2
        i32.const 1
        i32.and
        local.tee 2
        i32.store8 offset=56
        block  ;; label = @3
          local.get 2
          br_if 0 (;@3;)
          block  ;; label = @4
            i32.const 0
            i32.load offset=1059456
            i32.const 2147483647
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            call $_ZN3std9panicking11panic_count17is_zero_slow_path17hb89fa1133dd94c56E
            local.set 3
          end
          local.get 1
          i32.const 4
          i32.store8 offset=60
          local.get 1
          local.get 0
          i32.const 12
          i32.add
          i32.store offset=56
          local.get 1
          i32.const 72
          i32.add
          i32.const 16
          i32.add
          local.get 1
          i32.const 16
          i32.add
          i64.load
          i64.store
          local.get 1
          i32.const 72
          i32.add
          i32.const 8
          i32.add
          local.get 1
          i32.const 8
          i32.add
          i64.load
          i64.store
          local.get 1
          local.get 1
          i64.load
          i64.store offset=72
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 56
              i32.add
              i32.const 1050880
              local.get 1
              i32.const 72
              i32.add
              call $_ZN4core3fmt5write17h2ef748b44faf8d91E
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.load8_u offset=60
              i32.const 4
              i32.eq
              br_if 1 (;@4;)
              local.get 1
              i32.load8_u offset=60
              i32.const 3
              i32.ne
              br_if 1 (;@4;)
              local.get 1
              i32.const 64
              i32.add
              i32.load
              local.tee 2
              i32.load
              local.get 2
              i32.load offset=4
              i32.load
              call_indirect (type 1)
              block  ;; label = @6
                local.get 2
                i32.load offset=4
                local.tee 4
                i32.load offset=4
                local.tee 5
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                i32.load
                local.get 5
                local.get 4
                i32.load offset=8
                call $__rust_dealloc
              end
              local.get 2
              i32.const 12
              i32.const 4
              call $__rust_dealloc
              br 1 (;@4;)
            end
            local.get 1
            i32.load8_u offset=60
            i32.const 3
            i32.ne
            br_if 0 (;@4;)
            local.get 1
            i32.const 64
            i32.add
            i32.load
            local.tee 2
            i32.load
            local.get 2
            i32.load offset=4
            i32.load
            call_indirect (type 1)
            block  ;; label = @5
              local.get 2
              i32.load offset=4
              local.tee 4
              i32.load offset=4
              local.tee 5
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.load
              local.get 5
              local.get 4
              i32.load offset=8
              call $__rust_dealloc
            end
            local.get 1
            i32.load offset=64
            i32.const 12
            i32.const 4
            call $__rust_dealloc
          end
          block  ;; label = @4
            local.get 3
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            i32.load offset=1059456
            i32.const 2147483647
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            call $_ZN3std9panicking11panic_count17is_zero_slow_path17hb89fa1133dd94c56E
            br_if 0 (;@4;)
            local.get 0
            i32.const 1
            i32.store8 offset=9
          end
          local.get 0
          i32.const 0
          i32.store8 offset=8
          i32.const 0
          i32.load offset=1059464
          local.set 3
          i32.const 0
          local.get 0
          i32.store offset=1059464
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 3
          local.get 3
          i32.load
          local.tee 0
          i32.const -1
          i32.add
          i32.store
          local.get 0
          i32.const 1
          i32.ne
          br_if 2 (;@1;)
          local.get 3
          call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17had169b135673bc74E
          br 2 (;@1;)
        end
        local.get 1
        i32.const 92
        i32.add
        i32.const 0
        i32.store
        local.get 1
        i32.const 88
        i32.add
        i32.const 1048832
        i32.store
        local.get 1
        i64.const 1
        i64.store offset=76 align=4
        local.get 1
        i32.const 1052504
        i32.store offset=72
        local.get 1
        i32.const 56
        i32.add
        local.get 1
        i32.const 72
        i32.add
        call $_ZN4core9panicking13assert_failed17h823c04ec63ff58adE
        unreachable
      end
      block  ;; label = @2
        i32.const 0
        i32.load offset=1059396
        i32.const 3
        i32.eq
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=1059396
        i32.const 3
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        i32.const 1059400
        i32.store offset=56
        local.get 1
        local.get 1
        i32.const 56
        i32.add
        i32.store offset=72
        i32.const 1059396
        i32.const 1
        local.get 1
        i32.const 72
        i32.add
        i32.const 1051008
        i32.const 1051028
        call $_ZN3std4sync4once4Once10call_inner17h4769e389a12e9f35E
      end
      local.get 1
      i32.const 1059400
      i32.store offset=44
      local.get 1
      local.get 1
      i32.const 44
      i32.add
      i32.store offset=56
      local.get 1
      i32.const 72
      i32.add
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load
      i64.store
      local.get 1
      i32.const 72
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load
      i64.store
      local.get 1
      local.get 1
      i64.load
      i64.store offset=72
      local.get 1
      i32.const 32
      i32.add
      local.get 1
      i32.const 56
      i32.add
      local.get 1
      i32.const 72
      i32.add
      call $_ZN61_$LT$$RF$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_fmt17hb64921861487c42fE
      local.get 1
      i32.load8_u offset=32
      i32.const 4
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 1
      i64.load offset=32
      i64.store offset=48
      local.get 1
      i32.const 92
      i32.add
      i32.const 2
      i32.store
      local.get 1
      i32.const 68
      i32.add
      i32.const 10
      i32.store
      local.get 1
      i64.const 2
      i64.store offset=76 align=4
      local.get 1
      i32.const 1050708
      i32.store offset=72
      local.get 1
      i32.const 9
      i32.store offset=60
      local.get 1
      local.get 1
      i32.const 56
      i32.add
      i32.store offset=88
      local.get 1
      local.get 1
      i32.const 48
      i32.add
      i32.store offset=64
      local.get 1
      local.get 1
      i32.const 24
      i32.add
      i32.store offset=56
      local.get 1
      i32.const 72
      i32.add
      i32.const 1050724
      call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
      unreachable
    end
    local.get 1
    i32.const 96
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std2io5Write9write_all17h81bc6154e5530c81E (type 11) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 4
            local.get 3
            i32.store offset=12
            local.get 4
            local.get 2
            i32.store offset=8
            local.get 4
            i32.const 16
            i32.add
            i32.const 2
            local.get 4
            i32.const 8
            i32.add
            i32.const 1
            call $_ZN4wasi13lib_generated8fd_write17h1a5ab77e414e78b1E
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  i32.load16_u offset=16
                  br_if 0 (;@7;)
                  local.get 4
                  i32.load offset=20
                  local.tee 5
                  br_if 1 (;@6;)
                  local.get 0
                  i32.const 1050616
                  i64.extend_i32_u
                  i64.const 32
                  i64.shl
                  i64.const 2
                  i64.or
                  i64.store align=4
                  br 5 (;@2;)
                end
                local.get 4
                local.get 4
                i32.load16_u offset=18
                i32.store16 offset=30
                local.get 4
                i32.const 30
                i32.add
                call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
                i32.const 65535
                i32.and
                local.tee 5
                call $_ZN3std3sys4wasi17decode_error_kind17h9480121bcf427010E
                i32.const 255
                i32.and
                i32.const 35
                i32.eq
                br_if 1 (;@5;)
                local.get 0
                i32.const 0
                i32.store
                local.get 0
                i32.const 4
                i32.add
                local.get 5
                i32.store
                br 4 (;@2;)
              end
              local.get 3
              local.get 5
              i32.lt_u
              br_if 4 (;@1;)
              local.get 2
              local.get 5
              i32.add
              local.set 2
              local.get 3
              local.get 5
              i32.sub
              local.set 3
            end
            local.get 3
            br_if 0 (;@4;)
          end
        end
        local.get 0
        i32.const 4
        i32.store8
      end
      local.get 4
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 5
    local.get 3
    i32.const 1050788
    call $_ZN4core5slice5index26slice_start_index_len_fail17h4a9053b9acbf3e79E
    unreachable)
  (func $_ZN3std2io5Write18write_all_vectored17hbcf8a21dc4fe1a19E (type 11) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              br_if 0 (;@5;)
              i32.const 0
              local.set 5
              br 1 (;@4;)
            end
            local.get 2
            i32.const 4
            i32.add
            local.set 6
            local.get 3
            i32.const -1
            i32.add
            i32.const 536870911
            i32.and
            i32.const 1
            i32.add
            local.set 7
            i32.const 0
            local.set 5
            block  ;; label = @5
              loop  ;; label = @6
                local.get 6
                i32.load
                br_if 1 (;@5;)
                local.get 6
                i32.const 8
                i32.add
                local.set 6
                local.get 7
                local.get 5
                i32.const 1
                i32.add
                local.tee 5
                i32.ne
                br_if 0 (;@6;)
              end
              local.get 7
              local.set 5
            end
            local.get 5
            local.get 3
            i32.gt_u
            br_if 1 (;@3;)
          end
          local.get 3
          local.get 5
          i32.sub
          local.tee 8
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          local.get 5
          i32.const 3
          i32.shl
          i32.add
          local.set 9
          local.get 1
          i32.const 4
          i32.add
          local.set 10
          block  ;; label = @4
            loop  ;; label = @5
              local.get 8
              i32.const -1
              i32.add
              i32.const 536870911
              i32.and
              local.tee 6
              i32.const 1
              i32.add
              local.tee 11
              i32.const 7
              i32.and
              local.set 5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 6
                  i32.const 7
                  i32.ge_u
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 3
                  local.get 9
                  local.set 6
                  br 1 (;@6;)
                end
                local.get 9
                i32.const 60
                i32.add
                local.set 6
                local.get 11
                i32.const 1073741816
                i32.and
                local.set 7
                i32.const 0
                local.set 3
                loop  ;; label = @7
                  local.get 6
                  i32.load
                  local.get 6
                  i32.const -8
                  i32.add
                  i32.load
                  local.get 6
                  i32.const -16
                  i32.add
                  i32.load
                  local.get 6
                  i32.const -24
                  i32.add
                  i32.load
                  local.get 6
                  i32.const -32
                  i32.add
                  i32.load
                  local.get 6
                  i32.const -40
                  i32.add
                  i32.load
                  local.get 6
                  i32.const -48
                  i32.add
                  i32.load
                  local.get 6
                  i32.const -56
                  i32.add
                  i32.load
                  local.get 3
                  i32.add
                  i32.add
                  i32.add
                  i32.add
                  i32.add
                  i32.add
                  i32.add
                  i32.add
                  local.set 3
                  local.get 6
                  i32.const 64
                  i32.add
                  local.set 6
                  local.get 7
                  i32.const -8
                  i32.add
                  local.tee 7
                  br_if 0 (;@7;)
                end
                local.get 6
                i32.const -60
                i32.add
                local.set 6
              end
              block  ;; label = @6
                local.get 5
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                i32.const 4
                i32.add
                local.set 6
                loop  ;; label = @7
                  local.get 6
                  i32.load
                  local.get 3
                  i32.add
                  local.set 3
                  local.get 6
                  i32.const 8
                  i32.add
                  local.set 6
                  local.get 5
                  i32.const -1
                  i32.add
                  local.tee 5
                  br_if 0 (;@7;)
                end
              end
              local.get 8
              i32.const 3
              i32.shl
              local.set 5
              block  ;; label = @6
                local.get 10
                i32.load
                local.get 1
                i32.load offset=8
                local.tee 6
                i32.sub
                local.get 3
                i32.ge_u
                br_if 0 (;@6;)
                local.get 1
                local.get 6
                local.get 3
                call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h1092057c8f533414E
                local.get 1
                i32.load offset=8
                local.set 6
              end
              local.get 9
              local.get 5
              i32.add
              local.set 12
              local.get 9
              local.set 5
              loop  ;; label = @6
                local.get 5
                i32.load
                local.set 2
                block  ;; label = @7
                  local.get 10
                  i32.load
                  local.get 6
                  i32.sub
                  local.get 5
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 7
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 1
                  local.get 6
                  local.get 7
                  call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h1092057c8f533414E
                  local.get 1
                  i32.load offset=8
                  local.set 6
                end
                local.get 1
                i32.load
                local.get 6
                i32.add
                local.get 2
                local.get 7
                call $memcpy
                drop
                local.get 1
                local.get 6
                local.get 7
                i32.add
                local.tee 6
                i32.store offset=8
                local.get 12
                local.get 5
                i32.const 8
                i32.add
                local.tee 5
                i32.ne
                br_if 0 (;@6;)
              end
              block  ;; label = @6
                local.get 3
                br_if 0 (;@6;)
                local.get 0
                i32.const 1050616
                i64.extend_i32_u
                i64.const 32
                i64.shl
                i64.const 2
                i64.or
                i64.store align=4
                br 5 (;@1;)
              end
              local.get 9
              i32.const 4
              i32.add
              local.set 6
              i32.const 0
              local.set 5
              i32.const 0
              local.set 7
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 6
                  i32.load
                  local.get 7
                  i32.add
                  local.tee 2
                  local.get 3
                  i32.gt_u
                  br_if 1 (;@6;)
                  local.get 6
                  i32.const 8
                  i32.add
                  local.set 6
                  local.get 2
                  local.set 7
                  local.get 11
                  local.get 5
                  i32.const 1
                  i32.add
                  local.tee 5
                  i32.ne
                  br_if 0 (;@7;)
                end
                local.get 2
                local.set 7
                local.get 11
                local.set 5
              end
              block  ;; label = @6
                local.get 8
                local.get 5
                i32.lt_u
                br_if 0 (;@6;)
                local.get 8
                local.get 5
                i32.sub
                local.tee 8
                i32.eqz
                br_if 4 (;@2;)
                local.get 9
                local.get 5
                i32.const 3
                i32.shl
                local.tee 5
                i32.add
                local.tee 2
                i32.load offset=4
                local.tee 12
                local.get 3
                local.get 7
                i32.sub
                local.tee 6
                i32.lt_u
                br_if 2 (;@4;)
                local.get 2
                i32.const 4
                i32.add
                local.get 12
                local.get 6
                i32.sub
                i32.store
                local.get 9
                local.get 5
                i32.add
                local.tee 9
                local.get 9
                i32.load
                local.get 6
                i32.add
                i32.store
                br 1 (;@5;)
              end
            end
            local.get 5
            local.get 8
            i32.const 1050772
            call $_ZN4core5slice5index26slice_start_index_len_fail17h4a9053b9acbf3e79E
            unreachable
          end
          local.get 4
          i32.const 28
          i32.add
          i32.const 0
          i32.store
          local.get 4
          i32.const 1048832
          i32.store offset=24
          local.get 4
          i64.const 1
          i64.store offset=12 align=4
          local.get 4
          i32.const 1052308
          i32.store offset=8
          local.get 4
          i32.const 8
          i32.add
          i32.const 1052348
          call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
          unreachable
        end
        local.get 5
        local.get 3
        i32.const 1050772
        call $_ZN4core5slice5index26slice_start_index_len_fail17h4a9053b9acbf3e79E
        unreachable
      end
      local.get 0
      i32.const 4
      i32.store8
    end
    local.get 4
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std2io5Write9write_fmt17hd0e7437d74f735c0E (type 6) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 4
    i32.store8 offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    i32.const 24
    i32.add
    i32.const 16
    i32.add
    local.get 2
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    local.get 2
    i64.load align=4
    i64.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 8
        i32.add
        i32.const 1050880
        local.get 3
        i32.const 24
        i32.add
        call $_ZN4core3fmt5write17h2ef748b44faf8d91E
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 3
          i32.load8_u offset=12
          i32.const 4
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.const 1050820
          i64.extend_i32_u
          i64.const 32
          i64.shl
          i64.const 2
          i64.or
          i64.store align=4
          br 2 (;@1;)
        end
        local.get 0
        local.get 3
        i64.load offset=12 align=4
        i64.store align=4
        br 1 (;@1;)
      end
      local.get 0
      i32.const 4
      i32.store8
      local.get 3
      i32.load8_u offset=12
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.const 16
      i32.add
      i32.load
      local.tee 2
      i32.load
      local.get 2
      i32.load offset=4
      i32.load
      call_indirect (type 1)
      block  ;; label = @2
        local.get 2
        i32.load offset=4
        local.tee 1
        i32.load offset=4
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load
        local.get 0
        local.get 1
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get 3
      i32.load offset=16
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h6bd3182eabd7b129E (type 7) (param i32 i32 i32) (result i32)
    (local i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    i32.load
    local.get 1
    local.get 2
    call $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17h549df2080f337efeE
    block  ;; label = @1
      local.get 3
      i32.load8_u offset=8
      local.tee 1
      i32.const 4
      i32.eq
      br_if 0 (;@1;)
      local.get 3
      i64.load offset=8
      local.set 4
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=4
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.add
        i32.load
        local.tee 2
        i32.load
        local.get 2
        i32.load offset=4
        i32.load
        call_indirect (type 1)
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          local.tee 5
          i32.load offset=4
          local.tee 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.load
          local.get 6
          local.get 5
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get 2
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 0
      local.get 4
      i64.store offset=4 align=4
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
    i32.const 4
    i32.ne)
  (func $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hcb53779818ae681cE (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 3
      i32.const 4
      i32.add
      i32.load
      local.get 3
      i32.const 8
      i32.add
      local.tee 4
      i32.load
      local.tee 0
      i32.sub
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      local.get 2
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h1092057c8f533414E
      local.get 4
      i32.load
      local.set 0
    end
    local.get 3
    i32.load
    local.get 0
    i32.add
    local.get 1
    local.get 2
    call $memcpy
    drop
    local.get 4
    local.get 0
    local.get 2
    i32.add
    i32.store
    i32.const 0)
  (func $_ZN3std5panic19get_backtrace_style17hec1c4aeab13bb0c7E (type 9) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load offset=1059432
              br_table 3 (;@2;) 4 (;@1;) 1 (;@4;) 2 (;@3;) 0 (;@5;)
            end
            i32.const 1049068
            i32.const 40
            i32.const 1050928
            call $_ZN4core9panicking5panic17h6405394cda32a2f1E
            unreachable
          end
          i32.const 1
          local.set 1
          br 2 (;@1;)
        end
        i32.const 2
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      i32.const 1049608
      i32.const 14
      call $_ZN3std3env7_var_os17ha91cdc66697672a5E
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 2
          local.get 0
          i32.load offset=4
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.const 8
                i32.add
                i32.load
                i32.const -1
                i32.add
                br_table 0 (;@6;) 2 (;@4;) 2 (;@4;) 1 (;@5;) 2 (;@4;)
              end
              i32.const -2
              i32.const 0
              local.get 1
              i32.load8_u
              i32.const 48
              i32.eq
              select
              local.set 2
              br 1 (;@4;)
            end
            local.get 1
            i32.load align=1
            i32.const 1819047270
            i32.eq
            local.set 2
          end
          block  ;; label = @4
            local.get 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            local.get 3
            i32.const 1
            call $__rust_dealloc
          end
          i32.const 1
          local.set 3
          i32.const 0
          local.set 1
          block  ;; label = @4
            local.get 2
            i32.const 3
            i32.and
            br_table 2 (;@2;) 0 (;@4;) 1 (;@3;) 2 (;@2;)
          end
          i32.const 2
          local.set 3
          i32.const 1
          local.set 1
          br 1 (;@2;)
        end
        i32.const 3
        local.set 3
        i32.const 2
        local.set 1
      end
      i32.const 0
      local.get 3
      i32.store offset=1059432
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN3std7process5abort17h7adb48dc8268a62dE (type 0)
    call $_ZN3std3sys4wasi14abort_internal17hcdc2cafa96f87113E
    unreachable)
  (func $_ZN3std4sync4once4Once15call_once_force28_$u7b$$u7b$closure$u7d$$u7d$17hd4fa96228b9d3142E (type 3) (param i32 i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 2
    i32.load
    local.set 0
    local.get 2
    i32.const 0
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1024
        i32.const 1
        call $__rust_alloc
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 0
        i32.store8 offset=28
        local.get 0
        i32.const 0
        i32.store8 offset=24
        local.get 0
        i64.const 1024
        i64.store offset=16 align=4
        local.get 0
        local.get 2
        i32.store offset=12
        local.get 0
        i32.const 0
        i32.store offset=8
        local.get 0
        i64.const 0
        i64.store align=4
        return
      end
      i32.const 1048899
      i32.const 43
      i32.const 1051044
      call $_ZN4core9panicking5panic17h6405394cda32a2f1E
      unreachable
    end
    i32.const 1024
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h978fb356bc87755dE
    unreachable)
  (func $_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h078290382cfa5a70E (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    local.get 1
    i32.const 1051212
    i32.const 11
    call $_ZN4core3fmt9Formatter12debug_struct17h3b10dc23d3bd99b0E
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17hc5aa5ceee3dd1a23E
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN91_$LT$std..sys_common..backtrace.._print..DisplayBacktrace$u20$as$u20$core..fmt..Display$GT$3fmt17ha8c314372f104831E (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load8_u
    local.set 3
    local.get 2
    i32.const 8
    i32.add
    call $_ZN3std3env11current_dir17h68c09426d5d24bc0E
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=8
        br_if 0 (;@2;)
        local.get 2
        i32.const 16
        i32.add
        i32.load
        local.set 4
        local.get 2
        i32.load offset=12
        local.set 0
        br 1 (;@1;)
      end
      i32.const 0
      local.set 0
      block  ;; label = @2
        local.get 2
        i32.load8_u offset=12
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        i32.const 16
        i32.add
        i32.load
        local.tee 4
        i32.load
        local.get 4
        i32.load offset=4
        i32.load
        call_indirect (type 1)
        block  ;; label = @3
          local.get 4
          i32.load offset=4
          local.tee 5
          i32.load offset=4
          local.tee 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load
          local.get 6
          local.get 5
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get 4
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
    end
    local.get 2
    i32.const 28
    i32.add
    i32.const 0
    i32.store
    local.get 2
    i32.const 1048832
    i32.store offset=24
    local.get 2
    i64.const 1
    i64.store offset=12 align=4
    local.get 2
    i32.const 1051240
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 2
          i32.const 8
          i32.add
          call $_ZN4core3fmt9Formatter9write_fmt17hec9643383b3d06f7E
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 3
            i32.const 255
            i32.and
            br_if 0 (;@4;)
            local.get 2
            i32.const 28
            i32.add
            i32.const 0
            i32.store
            local.get 2
            i32.const 1048832
            i32.store offset=24
            local.get 2
            i64.const 1
            i64.store offset=12 align=4
            local.get 2
            i32.const 1051336
            i32.store offset=8
            local.get 1
            local.get 2
            i32.const 8
            i32.add
            call $_ZN4core3fmt9Formatter9write_fmt17hec9643383b3d06f7E
            br_if 1 (;@3;)
          end
          i32.const 0
          local.set 1
          local.get 0
          i32.eqz
          br_if 2 (;@1;)
          local.get 4
          i32.eqz
          br_if 2 (;@1;)
          br 1 (;@2;)
        end
        i32.const 1
        local.set 1
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 0
      local.get 4
      i32.const 1
      call $__rust_dealloc
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17hda2217248ddf29b4E (type 1) (param i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17hd757106e895f8529E
    unreachable)
  (func $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17hd757106e895f8529E (type 6) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    i32.const 20
    i32.add
    i32.load
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 4
            i32.add
            i32.load
            br_table 0 (;@4;) 1 (;@3;) 3 (;@1;)
          end
          local.get 4
          br_if 2 (;@1;)
          i32.const 1048832
          local.set 0
          i32.const 0
          local.set 4
          br 1 (;@2;)
        end
        local.get 4
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.tee 0
        i32.load offset=4
        local.set 4
        local.get 0
        i32.load
        local.set 0
      end
      local.get 3
      local.get 4
      i32.store offset=4
      local.get 3
      local.get 0
      i32.store
      local.get 3
      i32.const 1052032
      local.get 1
      call $_ZN4core5panic10panic_info9PanicInfo7message17h908015f03cb83f64E
      local.get 2
      local.get 1
      call $_ZN4core5panic10panic_info9PanicInfo10can_unwind17h9c7767dd5996c83bE
      call $_ZN3std9panicking20rust_panic_with_hook17h0934220b8bcb5bb0E
      unreachable
    end
    local.get 3
    i32.const 0
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 1052012
    local.get 1
    call $_ZN4core5panic10panic_info9PanicInfo7message17h908015f03cb83f64E
    local.get 2
    local.get 1
    call $_ZN4core5panic10panic_info9PanicInfo10can_unwind17h9c7767dd5996c83bE
    call $_ZN3std9panicking20rust_panic_with_hook17h0934220b8bcb5bb0E
    unreachable)
  (func $_ZN3std5alloc24default_alloc_error_hook17hdb1063b4360c7761E (type 3) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      i32.const 0
      i32.load8_u offset=1059384
      br_if 0 (;@1;)
      local.get 2
      i32.const 11
      i32.store offset=4
      local.get 2
      local.get 0
      i32.store offset=12
      local.get 2
      local.get 2
      i32.const 12
      i32.add
      i32.store
      local.get 2
      i32.const 4
      i32.store8 offset=20
      local.get 2
      local.get 2
      i32.const 56
      i32.add
      i32.store offset=16
      local.get 2
      i32.const 52
      i32.add
      i32.const 1
      i32.store
      local.get 2
      i64.const 2
      i64.store offset=36 align=4
      local.get 2
      i32.const 1051596
      i32.store offset=32
      local.get 2
      local.get 2
      i32.store offset=48
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 16
          i32.add
          i32.const 1050856
          local.get 2
          i32.const 32
          i32.add
          call $_ZN4core3fmt5write17h2ef748b44faf8d91E
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.load8_u offset=20
          i32.const 4
          i32.eq
          br_if 1 (;@2;)
          local.get 2
          i32.load8_u offset=20
          i32.const 3
          i32.ne
          br_if 1 (;@2;)
          local.get 2
          i32.const 24
          i32.add
          i32.load
          local.tee 0
          i32.load
          local.get 0
          i32.load offset=4
          i32.load
          call_indirect (type 1)
          block  ;; label = @4
            local.get 0
            i32.load offset=4
            local.tee 3
            i32.load offset=4
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.load
            local.get 4
            local.get 3
            i32.load offset=8
            call $__rust_dealloc
          end
          local.get 0
          i32.const 12
          i32.const 4
          call $__rust_dealloc
          br 1 (;@2;)
        end
        local.get 2
        i32.load8_u offset=20
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        i32.const 24
        i32.add
        i32.load
        local.tee 0
        i32.load
        local.get 0
        i32.load offset=4
        i32.load
        call_indirect (type 1)
        block  ;; label = @3
          local.get 0
          i32.load offset=4
          local.tee 3
          i32.load offset=4
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.load
          local.get 4
          local.get 3
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get 2
        i32.load offset=24
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 2
      i32.const 64
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 2
    i32.const 52
    i32.add
    i32.const 1
    i32.store
    local.get 2
    i64.const 2
    i64.store offset=36 align=4
    local.get 2
    i32.const 1051596
    i32.store offset=32
    local.get 2
    i32.const 11
    i32.store offset=20
    local.get 2
    local.get 0
    i32.store
    local.get 2
    local.get 2
    i32.const 16
    i32.add
    i32.store offset=48
    local.get 2
    local.get 2
    i32.store offset=16
    local.get 2
    i32.const 32
    i32.add
    i32.const 1051636
    call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
    unreachable)
  (func $rust_oom (type 3) (param i32 i32)
    (local i32)
    local.get 0
    local.get 1
    i32.const 0
    i32.load offset=1059440
    local.tee 2
    i32.const 12
    local.get 2
    select
    call_indirect (type 3)
    call $_ZN3std7process5abort17h7adb48dc8268a62dE
    unreachable)
  (func $__rdl_alloc (type 5) (param i32 i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 8
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        local.get 0
        i32.le_u
        br_if 1 (;@1;)
      end
      local.get 1
      local.get 0
      call $aligned_alloc
      return
    end
    local.get 0
    call $malloc)
  (func $__rdl_dealloc (type 6) (param i32 i32 i32)
    local.get 0
    call $free)
  (func $__rdl_realloc (type 8) (param i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 8
        i32.gt_u
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        i32.le_u
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        local.get 2
        local.get 3
        call $aligned_alloc
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        return
      end
      local.get 2
      local.get 0
      local.get 3
      local.get 1
      local.get 1
      local.get 3
      i32.gt_u
      select
      call $memcpy
      local.set 3
      local.get 0
      call $free
      local.get 3
      return
    end
    local.get 0
    local.get 3
    call $realloc)
  (func $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h60073348c4141754E (type 6) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 20
    i32.add
    i32.const 3
    i32.store
    local.get 3
    i32.const 32
    i32.add
    i32.const 20
    i32.add
    i32.const 13
    i32.store
    local.get 3
    i32.const 44
    i32.add
    i32.const 9
    i32.store
    local.get 3
    i64.const 4
    i64.store offset=4 align=4
    local.get 3
    i32.const 1051828
    i32.store
    local.get 3
    i32.const 9
    i32.store offset=36
    local.get 3
    local.get 0
    i32.load offset=8
    i32.store offset=48
    local.get 3
    local.get 0
    i32.load offset=4
    i32.store offset=40
    local.get 3
    local.get 0
    i32.load
    i32.store offset=32
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 3
    i32.const 24
    i32.add
    local.get 1
    local.get 3
    local.get 2
    i32.load offset=36
    local.tee 4
    call_indirect (type 6)
    block  ;; label = @1
      local.get 3
      i32.load8_u offset=24
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=28
      local.tee 2
      i32.load
      local.get 2
      i32.load offset=4
      i32.load
      call_indirect (type 1)
      block  ;; label = @2
        local.get 2
        i32.load offset=4
        local.tee 5
        i32.load offset=4
        local.tee 6
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load
        local.get 6
        local.get 5
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get 2
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=12
          i32.load8_u
          local.tee 0
          i32.const 3
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                br_table 0 (;@6;) 1 (;@5;) 2 (;@4;) 0 (;@6;)
              end
              i32.const 0
              i32.load8_u offset=1059436
              local.set 0
              i32.const 0
              i32.const 1
              i32.store8 offset=1059436
              local.get 3
              local.get 0
              i32.store8
              local.get 0
              br_if 3 (;@2;)
              local.get 3
              i32.const 52
              i32.add
              i32.const 1
              i32.store
              local.get 3
              i64.const 1
              i64.store offset=36 align=4
              local.get 3
              i32.const 1049624
              i32.store offset=32
              local.get 3
              i32.const 14
              i32.store offset=4
              local.get 3
              i32.const 0
              i32.store8 offset=63
              local.get 3
              local.get 3
              i32.store offset=48
              local.get 3
              local.get 3
              i32.const 63
              i32.add
              i32.store
              local.get 3
              i32.const 24
              i32.add
              local.get 1
              local.get 3
              i32.const 32
              i32.add
              local.get 4
              call_indirect (type 6)
              i32.const 0
              i32.const 0
              i32.store8 offset=1059436
              local.get 3
              i32.load8_u offset=24
              i32.const 3
              i32.ne
              br_if 2 (;@3;)
              local.get 3
              i32.load offset=28
              local.tee 0
              i32.load
              local.get 0
              i32.load offset=4
              i32.load
              call_indirect (type 1)
              block  ;; label = @6
                local.get 0
                i32.load offset=4
                local.tee 1
                i32.load offset=4
                local.tee 2
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.load
                local.get 2
                local.get 1
                i32.load offset=8
                call $__rust_dealloc
              end
              local.get 0
              i32.const 12
              i32.const 4
              call $__rust_dealloc
              br 2 (;@3;)
            end
            i32.const 0
            i32.load8_u offset=1059436
            local.set 0
            i32.const 0
            i32.const 1
            i32.store8 offset=1059436
            local.get 3
            local.get 0
            i32.store8
            local.get 0
            br_if 3 (;@1;)
            local.get 3
            i32.const 52
            i32.add
            i32.const 1
            i32.store
            local.get 3
            i64.const 1
            i64.store offset=36 align=4
            local.get 3
            i32.const 1049624
            i32.store offset=32
            local.get 3
            i32.const 14
            i32.store offset=4
            local.get 3
            i32.const 1
            i32.store8 offset=63
            local.get 3
            local.get 3
            i32.store offset=48
            local.get 3
            local.get 3
            i32.const 63
            i32.add
            i32.store
            local.get 3
            i32.const 24
            i32.add
            local.get 1
            local.get 3
            i32.const 32
            i32.add
            local.get 4
            call_indirect (type 6)
            i32.const 0
            i32.const 0
            i32.store8 offset=1059436
            local.get 3
            i32.load8_u offset=24
            i32.const 3
            i32.ne
            br_if 1 (;@3;)
            local.get 3
            i32.load offset=28
            local.tee 0
            i32.load
            local.get 0
            i32.load offset=4
            i32.load
            call_indirect (type 1)
            block  ;; label = @5
              local.get 0
              i32.load offset=4
              local.tee 1
              i32.load offset=4
              local.tee 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i32.load
              local.get 2
              local.get 1
              i32.load offset=8
              call $__rust_dealloc
            end
            local.get 0
            i32.const 12
            i32.const 4
            call $__rust_dealloc
            br 1 (;@3;)
          end
          i32.const 0
          i32.load8_u offset=1059376
          local.set 0
          i32.const 0
          i32.const 0
          i32.store8 offset=1059376
          local.get 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.const 52
          i32.add
          i32.const 0
          i32.store
          local.get 3
          i32.const 1048832
          i32.store offset=48
          local.get 3
          i64.const 1
          i64.store offset=36 align=4
          local.get 3
          i32.const 1051940
          i32.store offset=32
          local.get 3
          local.get 1
          local.get 3
          i32.const 32
          i32.add
          local.get 4
          call_indirect (type 6)
          local.get 3
          i32.load8_u
          i32.const 3
          i32.ne
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=4
          local.tee 0
          i32.load
          local.get 0
          i32.load offset=4
          i32.load
          call_indirect (type 1)
          block  ;; label = @4
            local.get 0
            i32.load offset=4
            local.tee 1
            i32.load offset=4
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.load
            local.get 2
            local.get 1
            i32.load offset=8
            call $__rust_dealloc
          end
          local.get 0
          i32.const 12
          i32.const 4
          call $__rust_dealloc
        end
        local.get 3
        i32.const 64
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 3
      i32.const 52
      i32.add
      i32.const 0
      i32.store
      local.get 3
      i32.const 48
      i32.add
      i32.const 1048832
      i32.store
      local.get 3
      i64.const 1
      i64.store offset=36 align=4
      local.get 3
      i32.const 1052504
      i32.store offset=32
      local.get 3
      local.get 3
      i32.const 32
      i32.add
      call $_ZN4core9panicking13assert_failed17h823c04ec63ff58adE
      unreachable
    end
    local.get 3
    i32.const 52
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i32.const 48
    i32.add
    i32.const 1048832
    i32.store
    local.get 3
    i64.const 1
    i64.store offset=36 align=4
    local.get 3
    i32.const 1052504
    i32.store offset=32
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    call $_ZN4core9panicking13assert_failed17h823c04ec63ff58adE
    unreachable)
  (func $rust_begin_unwind (type 1) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    call $_ZN4core5panic10panic_info9PanicInfo8location17h2213c5464e558925E
    i32.const 1051948
    call $_ZN4core6option15Option$LT$T$GT$6unwrap17h7696a2373454ebc9E
    local.set 2
    local.get 0
    call $_ZN4core5panic10panic_info9PanicInfo7message17h908015f03cb83f64E
    call $_ZN4core6option15Option$LT$T$GT$6unwrap17h81ffd8d7f386cd65E
    local.set 3
    local.get 1
    local.get 2
    i32.store offset=8
    local.get 1
    local.get 0
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 1
    call $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17hda2217248ddf29b4E
    unreachable)
  (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h3b72f46d985fad41E (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.const 4
    i32.add
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load offset=4
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.set 4
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.tee 5
      i32.const 0
      i32.store
      local.get 2
      i64.const 1
      i64.store offset=8
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
      local.get 4
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      local.get 4
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 4
      i64.load align=4
      i64.store offset=24
      local.get 2
      i32.const 20
      i32.add
      i32.const 1048784
      local.get 2
      i32.const 24
      i32.add
      call $_ZN4core3fmt5write17h2ef748b44faf8d91E
      drop
      local.get 3
      i32.const 8
      i32.add
      local.get 5
      i32.load
      i32.store
      local.get 3
      local.get 2
      i64.load offset=8
      i64.store align=4
    end
    local.get 2
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    local.tee 4
    local.get 3
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 1
    i32.const 12
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i64.load align=4
    local.set 6
    local.get 1
    i64.const 1
    i64.store offset=4 align=4
    local.get 2
    local.get 6
    i64.store offset=24
    block  ;; label = @1
      i32.const 12
      i32.const 4
      call $__rust_alloc
      local.tee 1
      br_if 0 (;@1;)
      i32.const 12
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17h978fb356bc87755dE
      unreachable
    end
    local.get 1
    local.get 2
    i64.load offset=24
    i64.store align=4
    local.get 1
    i32.const 8
    i32.add
    local.get 4
    i32.load
    i32.store
    local.get 0
    i32.const 1051980
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h732efbeb5c8777a2E (type 3) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.const 4
    i32.add
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load offset=4
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.set 1
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.tee 4
      i32.const 0
      i32.store
      local.get 2
      i64.const 1
      i64.store offset=8
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
      i32.const 1048784
      local.get 2
      i32.const 24
      i32.add
      call $_ZN4core3fmt5write17h2ef748b44faf8d91E
      drop
      local.get 3
      i32.const 8
      i32.add
      local.get 4
      i32.load
      i32.store
      local.get 3
      local.get 2
      i64.load offset=8
      i64.store align=4
    end
    local.get 0
    i32.const 1051980
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h067be35367d3ec76E (type 3) (param i32 i32)
    (local i32 i32)
    local.get 1
    i32.load offset=4
    local.set 2
    local.get 1
    i32.load
    local.set 3
    block  ;; label = @1
      i32.const 8
      i32.const 4
      call $__rust_alloc
      local.tee 1
      br_if 0 (;@1;)
      i32.const 8
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17h978fb356bc87755dE
      unreachable
    end
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 0
    i32.const 1051996
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h110f8caaa3159adfE (type 3) (param i32 i32)
    local.get 0
    i32.const 1051996
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_ZN3std9panicking20rust_panic_with_hook17h0934220b8bcb5bb0E (type 10) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    i32.const 1
    local.set 6
    i32.const 0
    i32.const 0
    i32.load offset=1059456
    local.tee 7
    i32.const 1
    i32.add
    i32.store offset=1059456
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load8_u offset=1059480
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=1059484
        i32.const 1
        i32.add
        local.set 6
        br 1 (;@1;)
      end
      i32.const 0
      i32.const 1
      i32.store8 offset=1059480
    end
    i32.const 0
    local.get 6
    i32.store offset=1059484
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 7
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
            local.get 6
            i32.const 2
            i32.gt_u
            br_if 0 (;@4;)
            local.get 5
            local.get 4
            i32.store8 offset=32
            local.get 5
            local.get 3
            i32.store offset=28
            local.get 5
            local.get 2
            i32.store offset=24
            i32.const 0
            i32.load offset=1059444
            local.tee 7
            i32.const -1
            i32.le_s
            br_if 2 (;@2;)
            i32.const 0
            local.get 7
            i32.const 1
            i32.add
            i32.store offset=1059444
            i32.const 0
            i32.load offset=1059452
            local.tee 7
            i32.eqz
            br_if 1 (;@3;)
            i32.const 0
            i32.load offset=1059448
            local.set 2
            local.get 5
            i32.const 8
            i32.add
            local.get 0
            local.get 1
            i32.load offset=16
            call_indirect (type 3)
            local.get 5
            local.get 5
            i64.load offset=8
            i64.store offset=16
            local.get 2
            local.get 5
            i32.const 16
            i32.add
            local.get 7
            i32.load offset=20
            call_indirect (type 3)
            br 3 (;@1;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 6
              i32.const 2
              i32.gt_u
              br_if 0 (;@5;)
              local.get 5
              local.get 4
              i32.store8 offset=64
              local.get 5
              local.get 3
              i32.store offset=60
              local.get 5
              local.get 2
              i32.store offset=56
              local.get 5
              i32.const 1048848
              i32.store offset=52
              local.get 5
              i32.const 1048832
              i32.store offset=48
              local.get 5
              i32.const 15
              i32.store offset=76
              local.get 5
              local.get 5
              i32.const 48
              i32.add
              i32.store offset=72
              local.get 5
              i32.const 4
              i32.store8 offset=20
              local.get 5
              local.get 5
              i32.const 104
              i32.add
              i32.store offset=16
              local.get 5
              i32.const 100
              i32.add
              i32.const 1
              i32.store
              local.get 5
              i64.const 2
              i64.store offset=84 align=4
              local.get 5
              i32.const 1052164
              i32.store offset=80
              local.get 5
              local.get 5
              i32.const 72
              i32.add
              i32.store offset=96
              block  ;; label = @6
                local.get 5
                i32.const 16
                i32.add
                i32.const 1050856
                local.get 5
                i32.const 80
                i32.add
                call $_ZN4core3fmt5write17h2ef748b44faf8d91E
                i32.eqz
                br_if 0 (;@6;)
                local.get 5
                i32.load8_u offset=20
                i32.const 4
                i32.eq
                br_if 2 (;@4;)
                local.get 5
                i32.load8_u offset=20
                i32.const 3
                i32.ne
                br_if 2 (;@4;)
                local.get 5
                i32.const 24
                i32.add
                i32.load
                local.tee 5
                i32.load
                local.get 5
                i32.load offset=4
                i32.load
                call_indirect (type 1)
                block  ;; label = @7
                  local.get 5
                  i32.load offset=4
                  local.tee 6
                  i32.load offset=4
                  local.tee 7
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 5
                  i32.load
                  local.get 7
                  local.get 6
                  i32.load offset=8
                  call $__rust_dealloc
                end
                local.get 5
                i32.const 12
                i32.const 4
                call $__rust_dealloc
                call $_ZN3std3sys4wasi14abort_internal17hcdc2cafa96f87113E
                unreachable
              end
              local.get 5
              i32.load8_u offset=20
              i32.const 3
              i32.ne
              br_if 1 (;@4;)
              local.get 5
              i32.const 24
              i32.add
              i32.load
              local.tee 6
              i32.load
              local.get 6
              i32.load offset=4
              i32.load
              call_indirect (type 1)
              block  ;; label = @6
                local.get 6
                i32.load offset=4
                local.tee 7
                i32.load offset=4
                local.tee 4
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                i32.load
                local.get 4
                local.get 7
                i32.load offset=8
                call $__rust_dealloc
              end
              local.get 5
              i32.load offset=24
              i32.const 12
              i32.const 4
              call $__rust_dealloc
              call $_ZN3std3sys4wasi14abort_internal17hcdc2cafa96f87113E
              unreachable
            end
            local.get 5
            i32.const 4
            i32.store8 offset=52
            local.get 5
            local.get 5
            i32.const 104
            i32.add
            i32.store offset=48
            local.get 5
            i32.const 100
            i32.add
            i32.const 0
            i32.store
            local.get 5
            i32.const 1048832
            i32.store offset=96
            local.get 5
            i64.const 1
            i64.store offset=84 align=4
            local.get 5
            i32.const 1052104
            i32.store offset=80
            block  ;; label = @5
              local.get 5
              i32.const 48
              i32.add
              i32.const 1050856
              local.get 5
              i32.const 80
              i32.add
              call $_ZN4core3fmt5write17h2ef748b44faf8d91E
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              i32.load8_u offset=52
              i32.const 4
              i32.eq
              br_if 1 (;@4;)
              local.get 5
              i32.load8_u offset=52
              i32.const 3
              i32.ne
              br_if 1 (;@4;)
              local.get 5
              i32.const 56
              i32.add
              i32.load
              local.tee 5
              i32.load
              local.get 5
              i32.load offset=4
              i32.load
              call_indirect (type 1)
              block  ;; label = @6
                local.get 5
                i32.load offset=4
                local.tee 6
                i32.load offset=4
                local.tee 7
                i32.eqz
                br_if 0 (;@6;)
                local.get 5
                i32.load
                local.get 7
                local.get 6
                i32.load offset=8
                call $__rust_dealloc
              end
              local.get 5
              i32.const 12
              i32.const 4
              call $__rust_dealloc
              call $_ZN3std3sys4wasi14abort_internal17hcdc2cafa96f87113E
              unreachable
            end
            local.get 5
            i32.load8_u offset=52
            i32.const 3
            i32.ne
            br_if 0 (;@4;)
            local.get 5
            i32.const 56
            i32.add
            i32.load
            local.tee 6
            i32.load
            local.get 6
            i32.load offset=4
            i32.load
            call_indirect (type 1)
            block  ;; label = @5
              local.get 6
              i32.load offset=4
              local.tee 7
              i32.load offset=4
              local.tee 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              i32.load
              local.get 4
              local.get 7
              i32.load offset=8
              call $__rust_dealloc
            end
            local.get 5
            i32.load offset=56
            i32.const 12
            i32.const 4
            call $__rust_dealloc
          end
          call $_ZN3std3sys4wasi14abort_internal17hcdc2cafa96f87113E
          unreachable
        end
        local.get 5
        local.get 0
        local.get 1
        i32.load offset=16
        call_indirect (type 3)
        local.get 5
        local.get 5
        i64.load
        i64.store offset=16
        local.get 5
        i32.const 16
        i32.add
        call $_ZN3std9panicking12default_hook17h8dec56909080be36E
        br 1 (;@1;)
      end
      local.get 5
      i32.const 48
      i32.add
      i32.const 20
      i32.add
      i32.const 1
      i32.store
      local.get 5
      i32.const 80
      i32.add
      i32.const 20
      i32.add
      i32.const 0
      i32.store
      local.get 5
      i64.const 2
      i64.store offset=52 align=4
      local.get 5
      i32.const 1049268
      i32.store offset=48
      local.get 5
      i32.const 5
      i32.store offset=76
      local.get 5
      i32.const 1048832
      i32.store offset=96
      local.get 5
      i64.const 1
      i64.store offset=84 align=4
      local.get 5
      i32.const 1052612
      i32.store offset=80
      local.get 5
      local.get 5
      i32.const 72
      i32.add
      i32.store offset=64
      local.get 5
      local.get 5
      i32.const 80
      i32.add
      i32.store offset=72
      local.get 5
      i32.const 40
      i32.add
      local.get 5
      i32.const 104
      i32.add
      local.get 5
      i32.const 48
      i32.add
      call $_ZN3std2io5Write9write_fmt17h397b3193dd120aaaE
      local.get 5
      i32.const 40
      i32.add
      call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h53cb1572dbe1c03bE
      call $_ZN3std3sys4wasi14abort_internal17hcdc2cafa96f87113E
      unreachable
    end
    i32.const 0
    i32.const 0
    i32.load offset=1059444
    i32.const -1
    i32.add
    i32.store offset=1059444
    block  ;; label = @1
      local.get 6
      i32.const 1
      i32.gt_u
      br_if 0 (;@1;)
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $rust_panic
      unreachable
    end
    local.get 5
    i32.const 100
    i32.add
    i32.const 0
    i32.store
    local.get 5
    i32.const 1048832
    i32.store offset=96
    local.get 5
    i64.const 1
    i64.store offset=84 align=4
    local.get 5
    i32.const 1052224
    i32.store offset=80
    local.get 5
    i32.const 48
    i32.add
    local.get 5
    i32.const 104
    i32.add
    local.get 5
    i32.const 80
    i32.add
    call $_ZN3std2io5Write9write_fmt17h397b3193dd120aaaE
    local.get 5
    i32.const 48
    i32.add
    call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h53cb1572dbe1c03bE
    call $_ZN3std3sys4wasi14abort_internal17hcdc2cafa96f87113E
    unreachable)
  (func $rust_panic (type 3) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store
    local.get 2
    local.get 2
    call $__rust_start_panic
    i32.store offset=12
    local.get 2
    i32.const 24
    i32.add
    i32.const 20
    i32.add
    i32.const 1
    i32.store
    local.get 2
    i32.const 56
    i32.add
    i32.const 20
    i32.add
    i32.const 1
    i32.store
    local.get 2
    i64.const 2
    i64.store offset=28 align=4
    local.get 2
    i32.const 1049268
    i32.store offset=24
    local.get 2
    i32.const 5
    i32.store offset=52
    local.get 2
    i64.const 1
    i64.store offset=60 align=4
    local.get 2
    i32.const 1052264
    i32.store offset=56
    local.get 2
    i32.const 11
    i32.store offset=84
    local.get 2
    local.get 2
    i32.const 48
    i32.add
    i32.store offset=40
    local.get 2
    local.get 2
    i32.const 56
    i32.add
    i32.store offset=48
    local.get 2
    local.get 2
    i32.const 80
    i32.add
    i32.store offset=72
    local.get 2
    local.get 2
    i32.const 12
    i32.add
    i32.store offset=80
    local.get 2
    i32.const 16
    i32.add
    local.get 2
    i32.const 88
    i32.add
    local.get 2
    i32.const 24
    i32.add
    call $_ZN3std2io5Write9write_fmt17h397b3193dd120aaaE
    local.get 2
    i32.const 16
    i32.add
    call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h53cb1572dbe1c03bE
    call $_ZN3std3sys4wasi14abort_internal17hcdc2cafa96f87113E
    unreachable)
  (func $_ZN3std3sys4wasi7process8ExitCode6as_i3217hd707a68cfde3c063E (type 4) (param i32) (result i32)
    local.get 0
    i32.load8_u)
  (func $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17h6e2e18814a5afd4dE (type 11) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 3
    i32.store offset=12
    local.get 4
    local.get 2
    i32.store offset=8
    i32.const 1
    local.set 2
    local.get 4
    i32.const 16
    i32.add
    i32.const 2
    local.get 4
    i32.const 8
    i32.add
    i32.const 1
    call $_ZN4wasi13lib_generated8fd_write17h1a5ab77e414e78b1E
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.load16_u offset=16
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        i32.load offset=20
        i32.store offset=4
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 4
      local.get 4
      i32.load16_u offset=18
      i32.store16 offset=30
      local.get 0
      local.get 4
      i32.const 30
      i32.add
      call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
      i64.extend_i32_u
      i64.const 65535
      i64.and
      i64.const 32
      i64.shl
      i64.store offset=4 align=4
    end
    local.get 0
    local.get 2
    i32.store
    local.get 4
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$14write_vectored17h9452213f45728b86E (type 11) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 2
    local.get 2
    local.get 3
    call $_ZN4wasi13lib_generated8fd_write17h1a5ab77e414e78b1E
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.load16_u
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        i32.load offset=4
        i32.store offset=4
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 4
      local.get 4
      i32.load16_u offset=2
      i32.store16 offset=14
      local.get 0
      local.get 4
      i32.const 14
      i32.add
      call $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E
      i64.extend_i32_u
      i64.const 65535
      i64.and
      i64.const 32
      i64.shl
      i64.store offset=4 align=4
      i32.const 1
      local.set 2
    end
    local.get 0
    local.get 2
    i32.store
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$17is_write_vectored17h57899dce665a0655E (type 4) (param i32) (result i32)
    i32.const 1)
  (func $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$5flush17hcfbade330f02aea5E (type 3) (param i32 i32)
    local.get 0
    i32.const 4
    i32.store8)
  (func $__rust_start_panic (type 4) (param i32) (result i32)
    unreachable
    unreachable)
  (func $_ZN4wasi13lib_generated5Errno3raw17h676b03e6592ff578E (type 4) (param i32) (result i32)
    local.get 0
    i32.load16_u)
  (func $_ZN4wasi13lib_generated8fd_write17h1a5ab77e414e78b1E (type 11) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 2
        local.get 3
        local.get 4
        i32.const 12
        i32.add
        call $_ZN4wasi13lib_generated22wasi_snapshot_preview18fd_write17ha5cbe20048f60fc8E
        local.tee 1
        br_if 0 (;@2;)
        local.get 0
        i32.const 4
        i32.add
        local.get 4
        i32.load offset=12
        i32.store
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.store16 offset=2
      i32.const 1
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store16
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $malloc (type 4) (param i32) (result i32)
    local.get 0
    call $dlmalloc)
  (func $dlmalloc (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      i32.const 0
      i32.load offset=1059512
      br_if 0 (;@1;)
      i32.const 0
      call $sbrk
      i32.const 1060032
      i32.sub
      local.tee 2
      i32.const 89
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      local.set 3
      block  ;; label = @2
        i32.const 0
        i32.load offset=1059960
        local.tee 4
        br_if 0 (;@2;)
        i32.const 0
        i64.const -1
        i64.store offset=1059972 align=4
        i32.const 0
        i64.const 281474976776192
        i64.store offset=1059964 align=4
        i32.const 0
        local.get 1
        i32.const 8
        i32.add
        i32.const -16
        i32.and
        i32.const 1431655768
        i32.xor
        local.tee 4
        i32.store offset=1059960
        i32.const 0
        i32.const 0
        i32.store offset=1059980
        i32.const 0
        i32.const 0
        i32.store offset=1059932
      end
      i32.const 0
      local.get 2
      i32.store offset=1059940
      i32.const 0
      i32.const 1060032
      i32.store offset=1059936
      i32.const 0
      i32.const 1060032
      i32.store offset=1059504
      i32.const 0
      local.get 4
      i32.store offset=1059524
      i32.const 0
      i32.const -1
      i32.store offset=1059520
      loop  ;; label = @2
        local.get 3
        i32.const 1059536
        i32.add
        local.get 3
        i32.const 1059528
        i32.add
        local.tee 4
        i32.store
        local.get 3
        i32.const 1059540
        i32.add
        local.get 4
        i32.store
        local.get 3
        i32.const 8
        i32.add
        local.tee 3
        i32.const 256
        i32.ne
        br_if 0 (;@2;)
      end
      i32.const 0
      i32.const 1060040
      i32.sub
      i32.const 15
      i32.and
      i32.const 0
      i32.const 1060040
      i32.const 15
      i32.and
      select
      local.tee 3
      i32.const 1060036
      i32.add
      local.get 2
      local.get 3
      i32.sub
      i32.const -56
      i32.add
      local.tee 4
      i32.const 1
      i32.or
      i32.store
      i32.const 0
      i32.const 0
      i32.load offset=1059976
      i32.store offset=1059516
      i32.const 0
      local.get 3
      i32.const 1060032
      i32.add
      i32.store offset=1059512
      i32.const 0
      local.get 4
      i32.store offset=1059500
      local.get 2
      i32.const 1059980
      i32.add
      i32.const 56
      i32.store
    end
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
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.const 236
                            i32.gt_u
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1059488
                              local.tee 5
                              i32.const 16
                              local.get 0
                              i32.const 19
                              i32.add
                              i32.const -16
                              i32.and
                              local.get 0
                              i32.const 11
                              i32.lt_u
                              select
                              local.tee 2
                              i32.const 3
                              i32.shr_u
                              local.tee 4
                              i32.shr_u
                              local.tee 3
                              i32.const 3
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 3
                              i32.const 1
                              i32.and
                              local.get 4
                              i32.or
                              i32.const 1
                              i32.xor
                              local.tee 2
                              i32.const 3
                              i32.shl
                              local.tee 6
                              i32.const 1059536
                              i32.add
                              i32.load
                              local.tee 4
                              i32.const 8
                              i32.add
                              local.set 3
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 4
                                  i32.load offset=8
                                  local.tee 0
                                  local.get 6
                                  i32.const 1059528
                                  i32.add
                                  local.tee 6
                                  i32.ne
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.get 5
                                  i32.const -2
                                  local.get 2
                                  i32.rotl
                                  i32.and
                                  i32.store offset=1059488
                                  br 1 (;@14;)
                                end
                                i32.const 0
                                i32.load offset=1059504
                                local.get 0
                                i32.gt_u
                                drop
                                local.get 6
                                local.get 0
                                i32.store offset=8
                                local.get 0
                                local.get 6
                                i32.store offset=12
                              end
                              local.get 4
                              local.get 2
                              i32.const 3
                              i32.shl
                              local.tee 0
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 4
                              local.get 0
                              i32.add
                              local.tee 4
                              local.get 4
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              br 12 (;@1;)
                            end
                            local.get 2
                            i32.const 0
                            i32.load offset=1059496
                            local.tee 7
                            i32.le_u
                            br_if 1 (;@11;)
                            block  ;; label = @13
                              local.get 3
                              i32.eqz
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 3
                                  local.get 4
                                  i32.shl
                                  i32.const 2
                                  local.get 4
                                  i32.shl
                                  local.tee 3
                                  i32.const 0
                                  local.get 3
                                  i32.sub
                                  i32.or
                                  i32.and
                                  local.tee 3
                                  i32.const 0
                                  local.get 3
                                  i32.sub
                                  i32.and
                                  i32.const -1
                                  i32.add
                                  local.tee 3
                                  local.get 3
                                  i32.const 12
                                  i32.shr_u
                                  i32.const 16
                                  i32.and
                                  local.tee 3
                                  i32.shr_u
                                  local.tee 4
                                  i32.const 5
                                  i32.shr_u
                                  i32.const 8
                                  i32.and
                                  local.tee 0
                                  local.get 3
                                  i32.or
                                  local.get 4
                                  local.get 0
                                  i32.shr_u
                                  local.tee 3
                                  i32.const 2
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 3
                                  local.get 4
                                  i32.shr_u
                                  local.tee 3
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 2
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 3
                                  local.get 4
                                  i32.shr_u
                                  local.tee 3
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 1
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 3
                                  local.get 4
                                  i32.shr_u
                                  i32.add
                                  local.tee 0
                                  i32.const 3
                                  i32.shl
                                  local.tee 6
                                  i32.const 1059536
                                  i32.add
                                  i32.load
                                  local.tee 4
                                  i32.load offset=8
                                  local.tee 3
                                  local.get 6
                                  i32.const 1059528
                                  i32.add
                                  local.tee 6
                                  i32.ne
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.get 5
                                  i32.const -2
                                  local.get 0
                                  i32.rotl
                                  i32.and
                                  local.tee 5
                                  i32.store offset=1059488
                                  br 1 (;@14;)
                                end
                                i32.const 0
                                i32.load offset=1059504
                                local.get 3
                                i32.gt_u
                                drop
                                local.get 6
                                local.get 3
                                i32.store offset=8
                                local.get 3
                                local.get 6
                                i32.store offset=12
                              end
                              local.get 4
                              i32.const 8
                              i32.add
                              local.set 3
                              local.get 4
                              local.get 2
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 4
                              local.get 0
                              i32.const 3
                              i32.shl
                              local.tee 0
                              i32.add
                              local.get 0
                              local.get 2
                              i32.sub
                              local.tee 0
                              i32.store
                              local.get 4
                              local.get 2
                              i32.add
                              local.tee 6
                              local.get 0
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              block  ;; label = @14
                                local.get 7
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 7
                                i32.const 3
                                i32.shr_u
                                local.tee 8
                                i32.const 3
                                i32.shl
                                i32.const 1059528
                                i32.add
                                local.set 2
                                i32.const 0
                                i32.load offset=1059508
                                local.set 4
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 5
                                    i32.const 1
                                    local.get 8
                                    i32.shl
                                    local.tee 8
                                    i32.and
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.get 5
                                    local.get 8
                                    i32.or
                                    i32.store offset=1059488
                                    local.get 2
                                    local.set 8
                                    br 1 (;@15;)
                                  end
                                  local.get 2
                                  i32.load offset=8
                                  local.set 8
                                end
                                local.get 8
                                local.get 4
                                i32.store offset=12
                                local.get 2
                                local.get 4
                                i32.store offset=8
                                local.get 4
                                local.get 2
                                i32.store offset=12
                                local.get 4
                                local.get 8
                                i32.store offset=8
                              end
                              i32.const 0
                              local.get 6
                              i32.store offset=1059508
                              i32.const 0
                              local.get 0
                              i32.store offset=1059496
                              br 12 (;@1;)
                            end
                            i32.const 0
                            i32.load offset=1059492
                            local.tee 9
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 9
                            i32.const 0
                            local.get 9
                            i32.sub
                            i32.and
                            i32.const -1
                            i32.add
                            local.tee 3
                            local.get 3
                            i32.const 12
                            i32.shr_u
                            i32.const 16
                            i32.and
                            local.tee 3
                            i32.shr_u
                            local.tee 4
                            i32.const 5
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee 0
                            local.get 3
                            i32.or
                            local.get 4
                            local.get 0
                            i32.shr_u
                            local.tee 3
                            i32.const 2
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 3
                            local.get 4
                            i32.shr_u
                            local.tee 3
                            i32.const 1
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 3
                            local.get 4
                            i32.shr_u
                            local.tee 3
                            i32.const 1
                            i32.shr_u
                            i32.const 1
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 3
                            local.get 4
                            i32.shr_u
                            i32.add
                            i32.const 2
                            i32.shl
                            i32.const 1059792
                            i32.add
                            i32.load
                            local.tee 6
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get 2
                            i32.sub
                            local.set 4
                            local.get 6
                            local.set 0
                            block  ;; label = @13
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 0
                                  i32.load offset=16
                                  local.tee 3
                                  br_if 0 (;@15;)
                                  local.get 0
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.tee 3
                                  i32.eqz
                                  br_if 2 (;@13;)
                                end
                                local.get 3
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 2
                                i32.sub
                                local.tee 0
                                local.get 4
                                local.get 0
                                local.get 4
                                i32.lt_u
                                local.tee 0
                                select
                                local.set 4
                                local.get 3
                                local.get 6
                                local.get 0
                                select
                                local.set 6
                                local.get 3
                                local.set 0
                                br 0 (;@14;)
                              end
                            end
                            local.get 6
                            i32.load offset=24
                            local.set 10
                            block  ;; label = @13
                              local.get 6
                              i32.load offset=12
                              local.tee 8
                              local.get 6
                              i32.eq
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                i32.const 0
                                i32.load offset=1059504
                                local.get 6
                                i32.load offset=8
                                local.tee 3
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 3
                                i32.load offset=12
                                local.get 6
                                i32.ne
                                drop
                              end
                              local.get 8
                              local.get 3
                              i32.store offset=8
                              local.get 3
                              local.get 8
                              i32.store offset=12
                              br 11 (;@2;)
                            end
                            block  ;; label = @13
                              local.get 6
                              i32.const 20
                              i32.add
                              local.tee 0
                              i32.load
                              local.tee 3
                              br_if 0 (;@13;)
                              local.get 6
                              i32.load offset=16
                              local.tee 3
                              i32.eqz
                              br_if 3 (;@10;)
                              local.get 6
                              i32.const 16
                              i32.add
                              local.set 0
                            end
                            loop  ;; label = @13
                              local.get 0
                              local.set 11
                              local.get 3
                              local.tee 8
                              i32.const 20
                              i32.add
                              local.tee 0
                              i32.load
                              local.tee 3
                              br_if 0 (;@13;)
                              local.get 8
                              i32.const 16
                              i32.add
                              local.set 0
                              local.get 8
                              i32.load offset=16
                              local.tee 3
                              br_if 0 (;@13;)
                            end
                            local.get 11
                            i32.const 0
                            i32.store
                            br 10 (;@2;)
                          end
                          i32.const -1
                          local.set 2
                          local.get 0
                          i32.const -65
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 19
                          i32.add
                          local.tee 3
                          i32.const -16
                          i32.and
                          local.set 2
                          i32.const 0
                          i32.load offset=1059492
                          local.tee 7
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 11
                          block  ;; label = @12
                            local.get 3
                            i32.const 8
                            i32.shr_u
                            local.tee 3
                            i32.eqz
                            br_if 0 (;@12;)
                            i32.const 31
                            local.set 11
                            local.get 2
                            i32.const 16777215
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 3
                            local.get 3
                            i32.const 1048320
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee 4
                            i32.shl
                            local.tee 3
                            local.get 3
                            i32.const 520192
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee 3
                            i32.shl
                            local.tee 0
                            local.get 0
                            i32.const 245760
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee 0
                            i32.shl
                            i32.const 15
                            i32.shr_u
                            local.get 3
                            local.get 4
                            i32.or
                            local.get 0
                            i32.or
                            i32.sub
                            local.tee 3
                            i32.const 1
                            i32.shl
                            local.get 2
                            local.get 3
                            i32.const 21
                            i32.add
                            i32.shr_u
                            i32.const 1
                            i32.and
                            i32.or
                            i32.const 28
                            i32.add
                            local.set 11
                          end
                          i32.const 0
                          local.get 2
                          i32.sub
                          local.set 0
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 11
                                  i32.const 2
                                  i32.shl
                                  i32.const 1059792
                                  i32.add
                                  i32.load
                                  local.tee 4
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.set 3
                                  i32.const 0
                                  local.set 8
                                  br 1 (;@14;)
                                end
                                local.get 2
                                i32.const 0
                                i32.const 25
                                local.get 11
                                i32.const 1
                                i32.shr_u
                                i32.sub
                                local.get 11
                                i32.const 31
                                i32.eq
                                select
                                i32.shl
                                local.set 6
                                i32.const 0
                                local.set 3
                                i32.const 0
                                local.set 8
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 4
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    local.get 2
                                    i32.sub
                                    local.tee 5
                                    local.get 0
                                    i32.ge_u
                                    br_if 0 (;@16;)
                                    local.get 5
                                    local.set 0
                                    local.get 4
                                    local.set 8
                                    local.get 5
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 0
                                    local.get 4
                                    local.set 8
                                    local.get 4
                                    local.set 3
                                    br 3 (;@13;)
                                  end
                                  local.get 3
                                  local.get 4
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.tee 5
                                  local.get 5
                                  local.get 4
                                  local.get 6
                                  i32.const 29
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  i32.add
                                  i32.const 16
                                  i32.add
                                  i32.load
                                  local.tee 4
                                  i32.eq
                                  select
                                  local.get 3
                                  local.get 5
                                  select
                                  local.set 3
                                  local.get 6
                                  local.get 4
                                  i32.const 0
                                  i32.ne
                                  i32.shl
                                  local.set 6
                                  local.get 4
                                  br_if 0 (;@15;)
                                end
                              end
                              block  ;; label = @14
                                local.get 3
                                local.get 8
                                i32.or
                                br_if 0 (;@14;)
                                i32.const 2
                                local.get 11
                                i32.shl
                                local.tee 3
                                i32.const 0
                                local.get 3
                                i32.sub
                                i32.or
                                local.get 7
                                i32.and
                                local.tee 3
                                i32.eqz
                                br_if 3 (;@11;)
                                local.get 3
                                i32.const 0
                                local.get 3
                                i32.sub
                                i32.and
                                i32.const -1
                                i32.add
                                local.tee 3
                                local.get 3
                                i32.const 12
                                i32.shr_u
                                i32.const 16
                                i32.and
                                local.tee 3
                                i32.shr_u
                                local.tee 4
                                i32.const 5
                                i32.shr_u
                                i32.const 8
                                i32.and
                                local.tee 6
                                local.get 3
                                i32.or
                                local.get 4
                                local.get 6
                                i32.shr_u
                                local.tee 3
                                i32.const 2
                                i32.shr_u
                                i32.const 4
                                i32.and
                                local.tee 4
                                i32.or
                                local.get 3
                                local.get 4
                                i32.shr_u
                                local.tee 3
                                i32.const 1
                                i32.shr_u
                                i32.const 2
                                i32.and
                                local.tee 4
                                i32.or
                                local.get 3
                                local.get 4
                                i32.shr_u
                                local.tee 3
                                i32.const 1
                                i32.shr_u
                                i32.const 1
                                i32.and
                                local.tee 4
                                i32.or
                                local.get 3
                                local.get 4
                                i32.shr_u
                                i32.add
                                i32.const 2
                                i32.shl
                                i32.const 1059792
                                i32.add
                                i32.load
                                local.set 3
                              end
                              local.get 3
                              i32.eqz
                              br_if 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 3
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              local.get 2
                              i32.sub
                              local.tee 5
                              local.get 0
                              i32.lt_u
                              local.set 6
                              block  ;; label = @14
                                local.get 3
                                i32.load offset=16
                                local.tee 4
                                br_if 0 (;@14;)
                                local.get 3
                                i32.const 20
                                i32.add
                                i32.load
                                local.set 4
                              end
                              local.get 5
                              local.get 0
                              local.get 6
                              select
                              local.set 0
                              local.get 3
                              local.get 8
                              local.get 6
                              select
                              local.set 8
                              local.get 4
                              local.set 3
                              local.get 4
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 8
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 0
                          i32.load offset=1059496
                          local.get 2
                          i32.sub
                          i32.ge_u
                          br_if 0 (;@11;)
                          local.get 8
                          i32.load offset=24
                          local.set 11
                          block  ;; label = @12
                            local.get 8
                            i32.load offset=12
                            local.tee 6
                            local.get 8
                            i32.eq
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1059504
                              local.get 8
                              i32.load offset=8
                              local.tee 3
                              i32.gt_u
                              br_if 0 (;@13;)
                              local.get 3
                              i32.load offset=12
                              local.get 8
                              i32.ne
                              drop
                            end
                            local.get 6
                            local.get 3
                            i32.store offset=8
                            local.get 3
                            local.get 6
                            i32.store offset=12
                            br 9 (;@3;)
                          end
                          block  ;; label = @12
                            local.get 8
                            i32.const 20
                            i32.add
                            local.tee 4
                            i32.load
                            local.tee 3
                            br_if 0 (;@12;)
                            local.get 8
                            i32.load offset=16
                            local.tee 3
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 8
                            i32.const 16
                            i32.add
                            local.set 4
                          end
                          loop  ;; label = @12
                            local.get 4
                            local.set 5
                            local.get 3
                            local.tee 6
                            i32.const 20
                            i32.add
                            local.tee 4
                            i32.load
                            local.tee 3
                            br_if 0 (;@12;)
                            local.get 6
                            i32.const 16
                            i32.add
                            local.set 4
                            local.get 6
                            i32.load offset=16
                            local.tee 3
                            br_if 0 (;@12;)
                          end
                          local.get 5
                          i32.const 0
                          i32.store
                          br 8 (;@3;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1059496
                          local.tee 3
                          local.get 2
                          i32.lt_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=1059508
                          local.set 4
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 3
                              local.get 2
                              i32.sub
                              local.tee 0
                              i32.const 16
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 4
                              local.get 2
                              i32.add
                              local.tee 6
                              local.get 0
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              i32.const 0
                              local.get 0
                              i32.store offset=1059496
                              i32.const 0
                              local.get 6
                              i32.store offset=1059508
                              local.get 4
                              local.get 3
                              i32.add
                              local.get 0
                              i32.store
                              local.get 4
                              local.get 2
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              br 1 (;@12;)
                            end
                            local.get 4
                            local.get 3
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 4
                            local.get 3
                            i32.add
                            local.tee 3
                            local.get 3
                            i32.load offset=4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            i32.const 0
                            i32.const 0
                            i32.store offset=1059508
                            i32.const 0
                            i32.const 0
                            i32.store offset=1059496
                          end
                          local.get 4
                          i32.const 8
                          i32.add
                          local.set 3
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1059500
                          local.tee 6
                          local.get 2
                          i32.le_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=1059512
                          local.tee 3
                          local.get 2
                          i32.add
                          local.tee 4
                          local.get 6
                          local.get 2
                          i32.sub
                          local.tee 0
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          i32.const 0
                          local.get 0
                          i32.store offset=1059500
                          i32.const 0
                          local.get 4
                          i32.store offset=1059512
                          local.get 3
                          local.get 2
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 3
                          i32.const 8
                          i32.add
                          local.set 3
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1059960
                            i32.eqz
                            br_if 0 (;@12;)
                            i32.const 0
                            i32.load offset=1059968
                            local.set 4
                            br 1 (;@11;)
                          end
                          i32.const 0
                          i64.const -1
                          i64.store offset=1059972 align=4
                          i32.const 0
                          i64.const 281474976776192
                          i64.store offset=1059964 align=4
                          i32.const 0
                          local.get 1
                          i32.const 12
                          i32.add
                          i32.const -16
                          i32.and
                          i32.const 1431655768
                          i32.xor
                          i32.store offset=1059960
                          i32.const 0
                          i32.const 0
                          i32.store offset=1059980
                          i32.const 0
                          i32.const 0
                          i32.store offset=1059932
                          i32.const 65536
                          local.set 4
                        end
                        i32.const 0
                        local.set 3
                        block  ;; label = @11
                          local.get 4
                          local.get 2
                          i32.const 71
                          i32.add
                          local.tee 7
                          i32.add
                          local.tee 5
                          i32.const 0
                          local.get 4
                          i32.sub
                          local.tee 11
                          i32.and
                          local.tee 8
                          local.get 2
                          i32.gt_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.const 48
                          i32.store offset=1059984
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1059928
                          local.tee 3
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1059920
                            local.tee 4
                            local.get 8
                            i32.add
                            local.tee 0
                            local.get 4
                            i32.le_u
                            br_if 0 (;@12;)
                            local.get 0
                            local.get 3
                            i32.le_u
                            br_if 1 (;@11;)
                          end
                          i32.const 0
                          local.set 3
                          i32.const 0
                          i32.const 48
                          i32.store offset=1059984
                          br 10 (;@1;)
                        end
                        i32.const 0
                        i32.load8_u offset=1059932
                        i32.const 4
                        i32.and
                        br_if 4 (;@6;)
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1059512
                              local.tee 4
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 1059936
                              local.set 3
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 3
                                  i32.load
                                  local.tee 0
                                  local.get 4
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  local.get 0
                                  local.get 3
                                  i32.load offset=4
                                  i32.add
                                  local.get 4
                                  i32.gt_u
                                  br_if 3 (;@12;)
                                end
                                local.get 3
                                i32.load offset=8
                                local.tee 3
                                br_if 0 (;@14;)
                              end
                            end
                            i32.const 0
                            call $sbrk
                            local.tee 6
                            i32.const -1
                            i32.eq
                            br_if 5 (;@7;)
                            local.get 8
                            local.set 5
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1059964
                              local.tee 3
                              i32.const -1
                              i32.add
                              local.tee 4
                              local.get 6
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 8
                              local.get 6
                              i32.sub
                              local.get 4
                              local.get 6
                              i32.add
                              i32.const 0
                              local.get 3
                              i32.sub
                              i32.and
                              i32.add
                              local.set 5
                            end
                            local.get 5
                            local.get 2
                            i32.le_u
                            br_if 5 (;@7;)
                            local.get 5
                            i32.const 2147483646
                            i32.gt_u
                            br_if 5 (;@7;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1059928
                              local.tee 3
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.load offset=1059920
                              local.tee 4
                              local.get 5
                              i32.add
                              local.tee 0
                              local.get 4
                              i32.le_u
                              br_if 6 (;@7;)
                              local.get 0
                              local.get 3
                              i32.gt_u
                              br_if 6 (;@7;)
                            end
                            local.get 5
                            call $sbrk
                            local.tee 3
                            local.get 6
                            i32.ne
                            br_if 1 (;@11;)
                            br 7 (;@5;)
                          end
                          local.get 5
                          local.get 6
                          i32.sub
                          local.get 11
                          i32.and
                          local.tee 5
                          i32.const 2147483646
                          i32.gt_u
                          br_if 4 (;@7;)
                          local.get 5
                          call $sbrk
                          local.tee 6
                          local.get 3
                          i32.load
                          local.get 3
                          i32.load offset=4
                          i32.add
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 6
                          local.set 3
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.const 72
                          i32.add
                          local.get 5
                          i32.le_u
                          br_if 0 (;@11;)
                          local.get 3
                          i32.const -1
                          i32.eq
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 7
                            local.get 5
                            i32.sub
                            i32.const 0
                            i32.load offset=1059968
                            local.tee 4
                            i32.add
                            i32.const 0
                            local.get 4
                            i32.sub
                            i32.and
                            local.tee 4
                            i32.const 2147483646
                            i32.le_u
                            br_if 0 (;@12;)
                            local.get 3
                            local.set 6
                            br 7 (;@5;)
                          end
                          block  ;; label = @12
                            local.get 4
                            call $sbrk
                            i32.const -1
                            i32.eq
                            br_if 0 (;@12;)
                            local.get 4
                            local.get 5
                            i32.add
                            local.set 5
                            local.get 3
                            local.set 6
                            br 7 (;@5;)
                          end
                          i32.const 0
                          local.get 5
                          i32.sub
                          call $sbrk
                          drop
                          br 4 (;@7;)
                        end
                        local.get 3
                        local.set 6
                        local.get 3
                        i32.const -1
                        i32.ne
                        br_if 5 (;@5;)
                        br 3 (;@7;)
                      end
                      i32.const 0
                      local.set 8
                      br 7 (;@2;)
                    end
                    i32.const 0
                    local.set 6
                    br 5 (;@3;)
                  end
                  local.get 6
                  i32.const -1
                  i32.ne
                  br_if 2 (;@5;)
                end
                i32.const 0
                i32.const 0
                i32.load offset=1059932
                i32.const 4
                i32.or
                i32.store offset=1059932
              end
              local.get 8
              i32.const 2147483646
              i32.gt_u
              br_if 1 (;@4;)
              local.get 8
              call $sbrk
              local.tee 6
              i32.const 0
              call $sbrk
              local.tee 3
              i32.ge_u
              br_if 1 (;@4;)
              local.get 6
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 3
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 3
              local.get 6
              i32.sub
              local.tee 5
              local.get 2
              i32.const 56
              i32.add
              i32.le_u
              br_if 1 (;@4;)
            end
            i32.const 0
            i32.const 0
            i32.load offset=1059920
            local.get 5
            i32.add
            local.tee 3
            i32.store offset=1059920
            block  ;; label = @5
              local.get 3
              i32.const 0
              i32.load offset=1059924
              i32.le_u
              br_if 0 (;@5;)
              i32.const 0
              local.get 3
              i32.store offset=1059924
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=1059512
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@8;)
                    i32.const 1059936
                    local.set 3
                    loop  ;; label = @9
                      local.get 6
                      local.get 3
                      i32.load
                      local.tee 0
                      local.get 3
                      i32.load offset=4
                      local.tee 8
                      i32.add
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 3
                      i32.load offset=8
                      local.tee 3
                      br_if 0 (;@9;)
                      br 3 (;@6;)
                    end
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1059504
                      local.tee 3
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 6
                      local.get 3
                      i32.ge_u
                      br_if 1 (;@8;)
                    end
                    i32.const 0
                    local.get 6
                    i32.store offset=1059504
                  end
                  i32.const 0
                  local.set 3
                  i32.const 0
                  local.get 5
                  i32.store offset=1059940
                  i32.const 0
                  local.get 6
                  i32.store offset=1059936
                  i32.const 0
                  i32.const -1
                  i32.store offset=1059520
                  i32.const 0
                  i32.const 0
                  i32.load offset=1059960
                  i32.store offset=1059524
                  i32.const 0
                  i32.const 0
                  i32.store offset=1059948
                  loop  ;; label = @8
                    local.get 3
                    i32.const 1059536
                    i32.add
                    local.get 3
                    i32.const 1059528
                    i32.add
                    local.tee 4
                    i32.store
                    local.get 3
                    i32.const 1059540
                    i32.add
                    local.get 4
                    i32.store
                    local.get 3
                    i32.const 8
                    i32.add
                    local.tee 3
                    i32.const 256
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 6
                  i32.const -8
                  local.get 6
                  i32.sub
                  i32.const 15
                  i32.and
                  i32.const 0
                  local.get 6
                  i32.const 8
                  i32.add
                  i32.const 15
                  i32.and
                  select
                  local.tee 3
                  i32.add
                  local.tee 4
                  local.get 5
                  i32.const -56
                  i32.add
                  local.tee 0
                  local.get 3
                  i32.sub
                  local.tee 3
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  i32.const 0
                  i32.const 0
                  i32.load offset=1059976
                  i32.store offset=1059516
                  i32.const 0
                  local.get 3
                  i32.store offset=1059500
                  i32.const 0
                  local.get 4
                  i32.store offset=1059512
                  local.get 6
                  local.get 0
                  i32.add
                  i32.const 56
                  i32.store offset=4
                  br 2 (;@5;)
                end
                local.get 3
                i32.load8_u offset=12
                i32.const 8
                i32.and
                br_if 0 (;@6;)
                local.get 6
                local.get 4
                i32.le_u
                br_if 0 (;@6;)
                local.get 0
                local.get 4
                i32.gt_u
                br_if 0 (;@6;)
                local.get 4
                i32.const -8
                local.get 4
                i32.sub
                i32.const 15
                i32.and
                i32.const 0
                local.get 4
                i32.const 8
                i32.add
                i32.const 15
                i32.and
                select
                local.tee 0
                i32.add
                local.tee 6
                i32.const 0
                i32.load offset=1059500
                local.get 5
                i32.add
                local.tee 11
                local.get 0
                i32.sub
                local.tee 0
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 3
                local.get 8
                local.get 5
                i32.add
                i32.store offset=4
                i32.const 0
                i32.const 0
                i32.load offset=1059976
                i32.store offset=1059516
                i32.const 0
                local.get 0
                i32.store offset=1059500
                i32.const 0
                local.get 6
                i32.store offset=1059512
                local.get 4
                local.get 11
                i32.add
                i32.const 56
                i32.store offset=4
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 6
                i32.const 0
                i32.load offset=1059504
                local.tee 8
                i32.ge_u
                br_if 0 (;@6;)
                i32.const 0
                local.get 6
                i32.store offset=1059504
                local.get 6
                local.set 8
              end
              local.get 6
              local.get 5
              i32.add
              local.set 0
              i32.const 1059936
              local.set 3
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            loop  ;; label = @13
                              local.get 3
                              i32.load
                              local.get 0
                              i32.eq
                              br_if 1 (;@12;)
                              local.get 3
                              i32.load offset=8
                              local.tee 3
                              br_if 0 (;@13;)
                              br 2 (;@11;)
                            end
                          end
                          local.get 3
                          i32.load8_u offset=12
                          i32.const 8
                          i32.and
                          i32.eqz
                          br_if 1 (;@10;)
                        end
                        i32.const 1059936
                        local.set 3
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 3
                            i32.load
                            local.tee 0
                            local.get 4
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 0
                            local.get 3
                            i32.load offset=4
                            i32.add
                            local.tee 0
                            local.get 4
                            i32.gt_u
                            br_if 3 (;@9;)
                          end
                          local.get 3
                          i32.load offset=8
                          local.set 3
                          br 0 (;@11;)
                        end
                      end
                      local.get 3
                      local.get 6
                      i32.store
                      local.get 3
                      local.get 3
                      i32.load offset=4
                      local.get 5
                      i32.add
                      i32.store offset=4
                      local.get 6
                      i32.const -8
                      local.get 6
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      local.get 6
                      i32.const 8
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      i32.add
                      local.tee 11
                      local.get 2
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 0
                      i32.const -8
                      local.get 0
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      local.get 0
                      i32.const 8
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      i32.add
                      local.tee 6
                      local.get 11
                      i32.sub
                      local.get 2
                      i32.sub
                      local.set 3
                      local.get 11
                      local.get 2
                      i32.add
                      local.set 0
                      block  ;; label = @10
                        local.get 4
                        local.get 6
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 0
                        i32.store offset=1059512
                        i32.const 0
                        i32.const 0
                        i32.load offset=1059500
                        local.get 3
                        i32.add
                        local.tee 3
                        i32.store offset=1059500
                        local.get 0
                        local.get 3
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br 3 (;@7;)
                      end
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1059508
                        local.get 6
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 0
                        i32.store offset=1059508
                        i32.const 0
                        i32.const 0
                        i32.load offset=1059496
                        local.get 3
                        i32.add
                        local.tee 3
                        i32.store offset=1059496
                        local.get 0
                        local.get 3
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 0
                        local.get 3
                        i32.add
                        local.get 3
                        i32.store
                        br 3 (;@7;)
                      end
                      block  ;; label = @10
                        local.get 6
                        i32.load offset=4
                        local.tee 4
                        i32.const 3
                        i32.and
                        i32.const 1
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 4
                        i32.const -8
                        i32.and
                        local.set 7
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 4
                            i32.const 255
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 6
                            i32.load offset=12
                            local.set 2
                            block  ;; label = @13
                              local.get 6
                              i32.load offset=8
                              local.tee 5
                              local.get 4
                              i32.const 3
                              i32.shr_u
                              local.tee 9
                              i32.const 3
                              i32.shl
                              i32.const 1059528
                              i32.add
                              local.tee 4
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 8
                              local.get 5
                              i32.gt_u
                              drop
                            end
                            block  ;; label = @13
                              local.get 2
                              local.get 5
                              i32.ne
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.const 0
                              i32.load offset=1059488
                              i32.const -2
                              local.get 9
                              i32.rotl
                              i32.and
                              i32.store offset=1059488
                              br 2 (;@11;)
                            end
                            block  ;; label = @13
                              local.get 2
                              local.get 4
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 8
                              local.get 2
                              i32.gt_u
                              drop
                            end
                            local.get 2
                            local.get 5
                            i32.store offset=8
                            local.get 5
                            local.get 2
                            i32.store offset=12
                            br 1 (;@11;)
                          end
                          local.get 6
                          i32.load offset=24
                          local.set 9
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 6
                              i32.load offset=12
                              local.tee 5
                              local.get 6
                              i32.eq
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                local.get 8
                                local.get 6
                                i32.load offset=8
                                local.tee 4
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 4
                                i32.load offset=12
                                local.get 6
                                i32.ne
                                drop
                              end
                              local.get 5
                              local.get 4
                              i32.store offset=8
                              local.get 4
                              local.get 5
                              i32.store offset=12
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 6
                              i32.const 20
                              i32.add
                              local.tee 4
                              i32.load
                              local.tee 2
                              br_if 0 (;@13;)
                              local.get 6
                              i32.const 16
                              i32.add
                              local.tee 4
                              i32.load
                              local.tee 2
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 5
                              br 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 4
                              local.set 8
                              local.get 2
                              local.tee 5
                              i32.const 20
                              i32.add
                              local.tee 4
                              i32.load
                              local.tee 2
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 16
                              i32.add
                              local.set 4
                              local.get 5
                              i32.load offset=16
                              local.tee 2
                              br_if 0 (;@13;)
                            end
                            local.get 8
                            i32.const 0
                            i32.store
                          end
                          local.get 9
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 6
                              i32.load offset=28
                              local.tee 2
                              i32.const 2
                              i32.shl
                              i32.const 1059792
                              i32.add
                              local.tee 4
                              i32.load
                              local.get 6
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 4
                              local.get 5
                              i32.store
                              local.get 5
                              br_if 1 (;@12;)
                              i32.const 0
                              i32.const 0
                              i32.load offset=1059492
                              i32.const -2
                              local.get 2
                              i32.rotl
                              i32.and
                              i32.store offset=1059492
                              br 2 (;@11;)
                            end
                            local.get 9
                            i32.const 16
                            i32.const 20
                            local.get 9
                            i32.load offset=16
                            local.get 6
                            i32.eq
                            select
                            i32.add
                            local.get 5
                            i32.store
                            local.get 5
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                          local.get 5
                          local.get 9
                          i32.store offset=24
                          block  ;; label = @12
                            local.get 6
                            i32.load offset=16
                            local.tee 4
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 5
                            local.get 4
                            i32.store offset=16
                            local.get 4
                            local.get 5
                            i32.store offset=24
                          end
                          local.get 6
                          i32.load offset=20
                          local.tee 4
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 5
                          i32.const 20
                          i32.add
                          local.get 4
                          i32.store
                          local.get 4
                          local.get 5
                          i32.store offset=24
                        end
                        local.get 7
                        local.get 3
                        i32.add
                        local.set 3
                        local.get 6
                        local.get 7
                        i32.add
                        local.set 6
                      end
                      local.get 6
                      local.get 6
                      i32.load offset=4
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      local.get 0
                      local.get 3
                      i32.add
                      local.get 3
                      i32.store
                      local.get 0
                      local.get 3
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      block  ;; label = @10
                        local.get 3
                        i32.const 255
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 3
                        i32.const 3
                        i32.shr_u
                        local.tee 4
                        i32.const 3
                        i32.shl
                        i32.const 1059528
                        i32.add
                        local.set 3
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1059488
                            local.tee 2
                            i32.const 1
                            local.get 4
                            i32.shl
                            local.tee 4
                            i32.and
                            br_if 0 (;@12;)
                            i32.const 0
                            local.get 2
                            local.get 4
                            i32.or
                            i32.store offset=1059488
                            local.get 3
                            local.set 4
                            br 1 (;@11;)
                          end
                          local.get 3
                          i32.load offset=8
                          local.set 4
                        end
                        local.get 4
                        local.get 0
                        i32.store offset=12
                        local.get 3
                        local.get 0
                        i32.store offset=8
                        local.get 0
                        local.get 3
                        i32.store offset=12
                        local.get 0
                        local.get 4
                        i32.store offset=8
                        br 3 (;@7;)
                      end
                      i32.const 0
                      local.set 4
                      block  ;; label = @10
                        local.get 3
                        i32.const 8
                        i32.shr_u
                        local.tee 2
                        i32.eqz
                        br_if 0 (;@10;)
                        i32.const 31
                        local.set 4
                        local.get 3
                        i32.const 16777215
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 2
                        local.get 2
                        i32.const 1048320
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 8
                        i32.and
                        local.tee 4
                        i32.shl
                        local.tee 2
                        local.get 2
                        i32.const 520192
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 4
                        i32.and
                        local.tee 2
                        i32.shl
                        local.tee 6
                        local.get 6
                        i32.const 245760
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 2
                        i32.and
                        local.tee 6
                        i32.shl
                        i32.const 15
                        i32.shr_u
                        local.get 2
                        local.get 4
                        i32.or
                        local.get 6
                        i32.or
                        i32.sub
                        local.tee 4
                        i32.const 1
                        i32.shl
                        local.get 3
                        local.get 4
                        i32.const 21
                        i32.add
                        i32.shr_u
                        i32.const 1
                        i32.and
                        i32.or
                        i32.const 28
                        i32.add
                        local.set 4
                      end
                      local.get 0
                      local.get 4
                      i32.store offset=28
                      local.get 0
                      i64.const 0
                      i64.store offset=16 align=4
                      local.get 4
                      i32.const 2
                      i32.shl
                      i32.const 1059792
                      i32.add
                      local.set 2
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1059492
                        local.tee 6
                        i32.const 1
                        local.get 4
                        i32.shl
                        local.tee 8
                        i32.and
                        br_if 0 (;@10;)
                        local.get 2
                        local.get 0
                        i32.store
                        i32.const 0
                        local.get 6
                        local.get 8
                        i32.or
                        i32.store offset=1059492
                        local.get 0
                        local.get 2
                        i32.store offset=24
                        local.get 0
                        local.get 0
                        i32.store offset=8
                        local.get 0
                        local.get 0
                        i32.store offset=12
                        br 3 (;@7;)
                      end
                      local.get 3
                      i32.const 0
                      i32.const 25
                      local.get 4
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      local.get 4
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      local.set 4
                      local.get 2
                      i32.load
                      local.set 6
                      loop  ;; label = @10
                        local.get 6
                        local.tee 2
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 3
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 4
                        i32.const 29
                        i32.shr_u
                        local.set 6
                        local.get 4
                        i32.const 1
                        i32.shl
                        local.set 4
                        local.get 2
                        local.get 6
                        i32.const 4
                        i32.and
                        i32.add
                        i32.const 16
                        i32.add
                        local.tee 8
                        i32.load
                        local.tee 6
                        br_if 0 (;@10;)
                      end
                      local.get 8
                      local.get 0
                      i32.store
                      local.get 0
                      local.get 2
                      i32.store offset=24
                      local.get 0
                      local.get 0
                      i32.store offset=12
                      local.get 0
                      local.get 0
                      i32.store offset=8
                      br 2 (;@7;)
                    end
                    local.get 6
                    i32.const -8
                    local.get 6
                    i32.sub
                    i32.const 15
                    i32.and
                    i32.const 0
                    local.get 6
                    i32.const 8
                    i32.add
                    i32.const 15
                    i32.and
                    select
                    local.tee 3
                    i32.add
                    local.tee 11
                    local.get 5
                    i32.const -56
                    i32.add
                    local.tee 8
                    local.get 3
                    i32.sub
                    local.tee 3
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 6
                    local.get 8
                    i32.add
                    i32.const 56
                    i32.store offset=4
                    local.get 4
                    local.get 0
                    i32.const 55
                    local.get 0
                    i32.sub
                    i32.const 15
                    i32.and
                    i32.const 0
                    local.get 0
                    i32.const -55
                    i32.add
                    i32.const 15
                    i32.and
                    select
                    i32.add
                    i32.const -63
                    i32.add
                    local.tee 8
                    local.get 8
                    local.get 4
                    i32.const 16
                    i32.add
                    i32.lt_u
                    select
                    local.tee 8
                    i32.const 35
                    i32.store offset=4
                    i32.const 0
                    i32.const 0
                    i32.load offset=1059976
                    i32.store offset=1059516
                    i32.const 0
                    local.get 3
                    i32.store offset=1059500
                    i32.const 0
                    local.get 11
                    i32.store offset=1059512
                    local.get 8
                    i32.const 16
                    i32.add
                    i32.const 0
                    i64.load offset=1059944 align=4
                    i64.store align=4
                    local.get 8
                    i32.const 0
                    i64.load offset=1059936 align=4
                    i64.store offset=8 align=4
                    i32.const 0
                    local.get 8
                    i32.const 8
                    i32.add
                    i32.store offset=1059944
                    i32.const 0
                    local.get 5
                    i32.store offset=1059940
                    i32.const 0
                    local.get 6
                    i32.store offset=1059936
                    i32.const 0
                    i32.const 0
                    i32.store offset=1059948
                    local.get 8
                    i32.const 36
                    i32.add
                    local.set 3
                    loop  ;; label = @9
                      local.get 3
                      i32.const 7
                      i32.store
                      local.get 0
                      local.get 3
                      i32.const 4
                      i32.add
                      local.tee 3
                      i32.gt_u
                      br_if 0 (;@9;)
                    end
                    local.get 8
                    local.get 4
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 8
                    local.get 8
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 8
                    local.get 8
                    local.get 4
                    i32.sub
                    local.tee 5
                    i32.store
                    local.get 4
                    local.get 5
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    block  ;; label = @9
                      local.get 5
                      i32.const 255
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 3
                      i32.shr_u
                      local.tee 0
                      i32.const 3
                      i32.shl
                      i32.const 1059528
                      i32.add
                      local.set 3
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1059488
                          local.tee 6
                          i32.const 1
                          local.get 0
                          i32.shl
                          local.tee 0
                          i32.and
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 6
                          local.get 0
                          i32.or
                          i32.store offset=1059488
                          local.get 3
                          local.set 0
                          br 1 (;@10;)
                        end
                        local.get 3
                        i32.load offset=8
                        local.set 0
                      end
                      local.get 0
                      local.get 4
                      i32.store offset=12
                      local.get 3
                      local.get 4
                      i32.store offset=8
                      local.get 4
                      local.get 3
                      i32.store offset=12
                      local.get 4
                      local.get 0
                      i32.store offset=8
                      br 4 (;@5;)
                    end
                    i32.const 0
                    local.set 3
                    block  ;; label = @9
                      local.get 5
                      i32.const 8
                      i32.shr_u
                      local.tee 0
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 31
                      local.set 3
                      local.get 5
                      i32.const 16777215
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 0
                      i32.const 1048320
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 8
                      i32.and
                      local.tee 3
                      i32.shl
                      local.tee 0
                      local.get 0
                      i32.const 520192
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 4
                      i32.and
                      local.tee 0
                      i32.shl
                      local.tee 6
                      local.get 6
                      i32.const 245760
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 2
                      i32.and
                      local.tee 6
                      i32.shl
                      i32.const 15
                      i32.shr_u
                      local.get 0
                      local.get 3
                      i32.or
                      local.get 6
                      i32.or
                      i32.sub
                      local.tee 3
                      i32.const 1
                      i32.shl
                      local.get 5
                      local.get 3
                      i32.const 21
                      i32.add
                      i32.shr_u
                      i32.const 1
                      i32.and
                      i32.or
                      i32.const 28
                      i32.add
                      local.set 3
                    end
                    local.get 4
                    i64.const 0
                    i64.store offset=16 align=4
                    local.get 4
                    i32.const 28
                    i32.add
                    local.get 3
                    i32.store
                    local.get 3
                    i32.const 2
                    i32.shl
                    i32.const 1059792
                    i32.add
                    local.set 0
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1059492
                      local.tee 6
                      i32.const 1
                      local.get 3
                      i32.shl
                      local.tee 8
                      i32.and
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 4
                      i32.store
                      i32.const 0
                      local.get 6
                      local.get 8
                      i32.or
                      i32.store offset=1059492
                      local.get 4
                      i32.const 24
                      i32.add
                      local.get 0
                      i32.store
                      local.get 4
                      local.get 4
                      i32.store offset=8
                      local.get 4
                      local.get 4
                      i32.store offset=12
                      br 4 (;@5;)
                    end
                    local.get 5
                    i32.const 0
                    i32.const 25
                    local.get 3
                    i32.const 1
                    i32.shr_u
                    i32.sub
                    local.get 3
                    i32.const 31
                    i32.eq
                    select
                    i32.shl
                    local.set 3
                    local.get 0
                    i32.load
                    local.set 6
                    loop  ;; label = @9
                      local.get 6
                      local.tee 0
                      i32.load offset=4
                      i32.const -8
                      i32.and
                      local.get 5
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 3
                      i32.const 29
                      i32.shr_u
                      local.set 6
                      local.get 3
                      i32.const 1
                      i32.shl
                      local.set 3
                      local.get 0
                      local.get 6
                      i32.const 4
                      i32.and
                      i32.add
                      i32.const 16
                      i32.add
                      local.tee 8
                      i32.load
                      local.tee 6
                      br_if 0 (;@9;)
                    end
                    local.get 8
                    local.get 4
                    i32.store
                    local.get 4
                    i32.const 24
                    i32.add
                    local.get 0
                    i32.store
                    local.get 4
                    local.get 4
                    i32.store offset=12
                    local.get 4
                    local.get 4
                    i32.store offset=8
                    br 3 (;@5;)
                  end
                  local.get 2
                  i32.load offset=8
                  local.set 3
                  local.get 2
                  local.get 0
                  i32.store offset=8
                  local.get 3
                  local.get 0
                  i32.store offset=12
                  local.get 0
                  i32.const 0
                  i32.store offset=24
                  local.get 0
                  local.get 3
                  i32.store offset=8
                  local.get 0
                  local.get 2
                  i32.store offset=12
                end
                local.get 11
                i32.const 8
                i32.add
                local.set 3
                br 5 (;@1;)
              end
              local.get 0
              i32.load offset=8
              local.set 3
              local.get 0
              local.get 4
              i32.store offset=8
              local.get 3
              local.get 4
              i32.store offset=12
              local.get 4
              i32.const 24
              i32.add
              i32.const 0
              i32.store
              local.get 4
              local.get 3
              i32.store offset=8
              local.get 4
              local.get 0
              i32.store offset=12
            end
            i32.const 0
            i32.load offset=1059500
            local.tee 3
            local.get 2
            i32.le_u
            br_if 0 (;@4;)
            i32.const 0
            i32.load offset=1059512
            local.tee 4
            local.get 2
            i32.add
            local.tee 0
            local.get 3
            local.get 2
            i32.sub
            local.tee 3
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            local.get 3
            i32.store offset=1059500
            i32.const 0
            local.get 0
            i32.store offset=1059512
            local.get 4
            local.get 2
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 4
            i32.const 8
            i32.add
            local.set 3
            br 3 (;@1;)
          end
          i32.const 0
          local.set 3
          i32.const 0
          i32.const 48
          i32.store offset=1059984
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 11
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 8
              local.get 8
              i32.load offset=28
              local.tee 4
              i32.const 2
              i32.shl
              i32.const 1059792
              i32.add
              local.tee 3
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 3
              local.get 6
              i32.store
              local.get 6
              br_if 1 (;@4;)
              i32.const 0
              local.get 7
              i32.const -2
              local.get 4
              i32.rotl
              i32.and
              local.tee 7
              i32.store offset=1059492
              br 2 (;@3;)
            end
            local.get 11
            i32.const 16
            i32.const 20
            local.get 11
            i32.load offset=16
            local.get 8
            i32.eq
            select
            i32.add
            local.get 6
            i32.store
            local.get 6
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 6
          local.get 11
          i32.store offset=24
          block  ;; label = @4
            local.get 8
            i32.load offset=16
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            local.get 3
            i32.store offset=16
            local.get 3
            local.get 6
            i32.store offset=24
          end
          local.get 8
          i32.const 20
          i32.add
          i32.load
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          i32.const 20
          i32.add
          local.get 3
          i32.store
          local.get 3
          local.get 6
          i32.store offset=24
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
            local.get 8
            local.get 0
            local.get 2
            i32.add
            local.tee 3
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 8
            local.get 3
            i32.add
            local.tee 3
            local.get 3
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          local.get 8
          local.get 2
          i32.add
          local.tee 6
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 8
          local.get 2
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 6
          local.get 0
          i32.add
          local.get 0
          i32.store
          block  ;; label = @4
            local.get 0
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 0
            i32.const 3
            i32.shr_u
            local.tee 4
            i32.const 3
            i32.shl
            i32.const 1059528
            i32.add
            local.set 3
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=1059488
                local.tee 0
                i32.const 1
                local.get 4
                i32.shl
                local.tee 4
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 0
                local.get 4
                i32.or
                i32.store offset=1059488
                local.get 3
                local.set 4
                br 1 (;@5;)
              end
              local.get 3
              i32.load offset=8
              local.set 4
            end
            local.get 4
            local.get 6
            i32.store offset=12
            local.get 3
            local.get 6
            i32.store offset=8
            local.get 6
            local.get 3
            i32.store offset=12
            local.get 6
            local.get 4
            i32.store offset=8
            br 1 (;@3;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 8
              i32.shr_u
              local.tee 4
              br_if 0 (;@5;)
              i32.const 0
              local.set 3
              br 1 (;@4;)
            end
            i32.const 31
            local.set 3
            local.get 0
            i32.const 16777215
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
            local.get 4
            i32.const 1048320
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 8
            i32.and
            local.tee 3
            i32.shl
            local.tee 4
            local.get 4
            i32.const 520192
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 4
            i32.and
            local.tee 4
            i32.shl
            local.tee 2
            local.get 2
            i32.const 245760
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 2
            i32.and
            local.tee 2
            i32.shl
            i32.const 15
            i32.shr_u
            local.get 4
            local.get 3
            i32.or
            local.get 2
            i32.or
            i32.sub
            local.tee 3
            i32.const 1
            i32.shl
            local.get 0
            local.get 3
            i32.const 21
            i32.add
            i32.shr_u
            i32.const 1
            i32.and
            i32.or
            i32.const 28
            i32.add
            local.set 3
          end
          local.get 6
          local.get 3
          i32.store offset=28
          local.get 6
          i64.const 0
          i64.store offset=16 align=4
          local.get 3
          i32.const 2
          i32.shl
          i32.const 1059792
          i32.add
          local.set 4
          block  ;; label = @4
            local.get 7
            i32.const 1
            local.get 3
            i32.shl
            local.tee 2
            i32.and
            br_if 0 (;@4;)
            local.get 4
            local.get 6
            i32.store
            i32.const 0
            local.get 7
            local.get 2
            i32.or
            i32.store offset=1059492
            local.get 6
            local.get 4
            i32.store offset=24
            local.get 6
            local.get 6
            i32.store offset=8
            local.get 6
            local.get 6
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 0
          i32.const 0
          i32.const 25
          local.get 3
          i32.const 1
          i32.shr_u
          i32.sub
          local.get 3
          i32.const 31
          i32.eq
          select
          i32.shl
          local.set 3
          local.get 4
          i32.load
          local.set 2
          block  ;; label = @4
            loop  ;; label = @5
              local.get 2
              local.tee 4
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 0
              i32.eq
              br_if 1 (;@4;)
              local.get 3
              i32.const 29
              i32.shr_u
              local.set 2
              local.get 3
              i32.const 1
              i32.shl
              local.set 3
              local.get 4
              local.get 2
              i32.const 4
              i32.and
              i32.add
              i32.const 16
              i32.add
              local.tee 5
              i32.load
              local.tee 2
              br_if 0 (;@5;)
            end
            local.get 5
            local.get 6
            i32.store
            local.get 6
            local.get 4
            i32.store offset=24
            local.get 6
            local.get 6
            i32.store offset=12
            local.get 6
            local.get 6
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 4
          i32.load offset=8
          local.set 3
          local.get 4
          local.get 6
          i32.store offset=8
          local.get 3
          local.get 6
          i32.store offset=12
          local.get 6
          i32.const 0
          i32.store offset=24
          local.get 6
          local.get 3
          i32.store offset=8
          local.get 6
          local.get 4
          i32.store offset=12
        end
        local.get 8
        i32.const 8
        i32.add
        local.set 3
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 10
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            local.get 6
            i32.load offset=28
            local.tee 0
            i32.const 2
            i32.shl
            i32.const 1059792
            i32.add
            local.tee 3
            i32.load
            i32.ne
            br_if 0 (;@4;)
            local.get 3
            local.get 8
            i32.store
            local.get 8
            br_if 1 (;@3;)
            i32.const 0
            local.get 9
            i32.const -2
            local.get 0
            i32.rotl
            i32.and
            i32.store offset=1059492
            br 2 (;@2;)
          end
          local.get 10
          i32.const 16
          i32.const 20
          local.get 10
          i32.load offset=16
          local.get 6
          i32.eq
          select
          i32.add
          local.get 8
          i32.store
          local.get 8
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 8
        local.get 10
        i32.store offset=24
        block  ;; label = @3
          local.get 6
          i32.load offset=16
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          local.get 3
          i32.store offset=16
          local.get 3
          local.get 8
          i32.store offset=24
        end
        local.get 6
        i32.const 20
        i32.add
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        i32.const 20
        i32.add
        local.get 3
        i32.store
        local.get 3
        local.get 8
        i32.store offset=24
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 6
          local.get 4
          local.get 2
          i32.add
          local.tee 3
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 6
          local.get 3
          i32.add
          local.tee 3
          local.get 3
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 6
        local.get 2
        i32.add
        local.tee 0
        local.get 4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 6
        local.get 2
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 0
        local.get 4
        i32.add
        local.get 4
        i32.store
        block  ;; label = @3
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          i32.const 3
          i32.shr_u
          local.tee 8
          i32.const 3
          i32.shl
          i32.const 1059528
          i32.add
          local.set 2
          i32.const 0
          i32.load offset=1059508
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1
              local.get 8
              i32.shl
              local.tee 8
              local.get 5
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.get 8
              local.get 5
              i32.or
              i32.store offset=1059488
              local.get 2
              local.set 8
              br 1 (;@4;)
            end
            local.get 2
            i32.load offset=8
            local.set 8
          end
          local.get 8
          local.get 3
          i32.store offset=12
          local.get 2
          local.get 3
          i32.store offset=8
          local.get 3
          local.get 2
          i32.store offset=12
          local.get 3
          local.get 8
          i32.store offset=8
        end
        i32.const 0
        local.get 0
        i32.store offset=1059508
        i32.const 0
        local.get 4
        i32.store offset=1059496
      end
      local.get 6
      i32.const 8
      i32.add
      local.set 3
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $free (type 1) (param i32)
    local.get 0
    call $dlfree)
  (func $dlfree (type 1) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -8
      i32.add
      local.tee 1
      local.get 0
      i32.const -4
      i32.add
      i32.load
      local.tee 2
      i32.const -8
      i32.and
      local.tee 0
      i32.add
      local.set 3
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 1
        i32.load
        local.tee 2
        i32.sub
        local.tee 1
        i32.const 0
        i32.load offset=1059504
        local.tee 4
        i32.lt_u
        br_if 1 (;@1;)
        local.get 2
        local.get 0
        i32.add
        local.set 0
        block  ;; label = @3
          i32.const 0
          i32.load offset=1059508
          local.get 1
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 2
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 1
            i32.load offset=12
            local.set 5
            block  ;; label = @5
              local.get 1
              i32.load offset=8
              local.tee 6
              local.get 2
              i32.const 3
              i32.shr_u
              local.tee 7
              i32.const 3
              i32.shl
              i32.const 1059528
              i32.add
              local.tee 2
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              local.get 6
              i32.gt_u
              drop
            end
            block  ;; label = @5
              local.get 5
              local.get 6
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=1059488
              i32.const -2
              local.get 7
              i32.rotl
              i32.and
              i32.store offset=1059488
              br 3 (;@2;)
            end
            block  ;; label = @5
              local.get 5
              local.get 2
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              local.get 5
              i32.gt_u
              drop
            end
            local.get 5
            local.get 6
            i32.store offset=8
            local.get 6
            local.get 5
            i32.store offset=12
            br 2 (;@2;)
          end
          local.get 1
          i32.load offset=24
          local.set 7
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load offset=12
              local.tee 5
              local.get 1
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 4
                local.get 1
                i32.load offset=8
                local.tee 2
                i32.gt_u
                br_if 0 (;@6;)
                local.get 2
                i32.load offset=12
                local.get 1
                i32.ne
                drop
              end
              local.get 5
              local.get 2
              i32.store offset=8
              local.get 2
              local.get 5
              i32.store offset=12
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 1
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 1
              i32.const 16
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              i32.const 0
              local.set 5
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 2
              local.set 6
              local.get 4
              local.tee 5
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 5
              i32.const 16
              i32.add
              local.set 2
              local.get 5
              i32.load offset=16
              local.tee 4
              br_if 0 (;@5;)
            end
            local.get 6
            i32.const 0
            i32.store
          end
          local.get 7
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load offset=28
              local.tee 4
              i32.const 2
              i32.shl
              i32.const 1059792
              i32.add
              local.tee 2
              i32.load
              local.get 1
              i32.ne
              br_if 0 (;@5;)
              local.get 2
              local.get 5
              i32.store
              local.get 5
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1059492
              i32.const -2
              local.get 4
              i32.rotl
              i32.and
              i32.store offset=1059492
              br 3 (;@2;)
            end
            local.get 7
            i32.const 16
            i32.const 20
            local.get 7
            i32.load offset=16
            local.get 1
            i32.eq
            select
            i32.add
            local.get 5
            i32.store
            local.get 5
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 5
          local.get 7
          i32.store offset=24
          block  ;; label = @4
            local.get 1
            i32.load offset=16
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            local.get 2
            i32.store offset=16
            local.get 2
            local.get 5
            i32.store offset=24
          end
          local.get 1
          i32.load offset=20
          local.tee 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 5
          i32.const 20
          i32.add
          local.get 2
          i32.store
          local.get 2
          local.get 5
          i32.store offset=24
          br 1 (;@2;)
        end
        local.get 3
        i32.load offset=4
        local.tee 2
        i32.const 3
        i32.and
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 3
        local.get 2
        i32.const -2
        i32.and
        i32.store offset=4
        i32.const 0
        local.get 0
        i32.store offset=1059496
        local.get 1
        local.get 0
        i32.add
        local.get 0
        i32.store
        local.get 1
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        return
      end
      local.get 3
      local.get 1
      i32.le_u
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=4
      local.tee 2
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 2
          i32.and
          br_if 0 (;@3;)
          block  ;; label = @4
            i32.const 0
            i32.load offset=1059512
            local.get 3
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 1
            i32.store offset=1059512
            i32.const 0
            i32.const 0
            i32.load offset=1059500
            local.get 0
            i32.add
            local.tee 0
            i32.store offset=1059500
            local.get 1
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            i32.const 0
            i32.load offset=1059508
            i32.ne
            br_if 3 (;@1;)
            i32.const 0
            i32.const 0
            i32.store offset=1059496
            i32.const 0
            i32.const 0
            i32.store offset=1059508
            return
          end
          block  ;; label = @4
            i32.const 0
            i32.load offset=1059508
            local.get 3
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 1
            i32.store offset=1059508
            i32.const 0
            i32.const 0
            i32.load offset=1059496
            local.get 0
            i32.add
            local.tee 0
            i32.store offset=1059496
            local.get 1
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            local.get 0
            i32.add
            local.get 0
            i32.store
            return
          end
          local.get 2
          i32.const -8
          i32.and
          local.get 0
          i32.add
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 255
              i32.gt_u
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=12
              local.set 4
              block  ;; label = @6
                local.get 3
                i32.load offset=8
                local.tee 5
                local.get 2
                i32.const 3
                i32.shr_u
                local.tee 3
                i32.const 3
                i32.shl
                i32.const 1059528
                i32.add
                local.tee 2
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                i32.load offset=1059504
                local.get 5
                i32.gt_u
                drop
              end
              block  ;; label = @6
                local.get 4
                local.get 5
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.load offset=1059488
                i32.const -2
                local.get 3
                i32.rotl
                i32.and
                i32.store offset=1059488
                br 2 (;@4;)
              end
              block  ;; label = @6
                local.get 4
                local.get 2
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                i32.load offset=1059504
                local.get 4
                i32.gt_u
                drop
              end
              local.get 4
              local.get 5
              i32.store offset=8
              local.get 5
              local.get 4
              i32.store offset=12
              br 1 (;@4;)
            end
            local.get 3
            i32.load offset=24
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load offset=12
                local.tee 5
                local.get 3
                i32.eq
                br_if 0 (;@6;)
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=1059504
                  local.get 3
                  i32.load offset=8
                  local.tee 2
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 2
                  i32.load offset=12
                  local.get 3
                  i32.ne
                  drop
                end
                local.get 5
                local.get 2
                i32.store offset=8
                local.get 2
                local.get 5
                i32.store offset=12
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 3
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 3
                i32.const 16
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                i32.const 0
                local.set 5
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 2
                local.set 6
                local.get 4
                local.tee 5
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 5
                i32.const 16
                i32.add
                local.set 2
                local.get 5
                i32.load offset=16
                local.tee 4
                br_if 0 (;@6;)
              end
              local.get 6
              i32.const 0
              i32.store
            end
            local.get 7
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load offset=28
                local.tee 4
                i32.const 2
                i32.shl
                i32.const 1059792
                i32.add
                local.tee 2
                i32.load
                local.get 3
                i32.ne
                br_if 0 (;@6;)
                local.get 2
                local.get 5
                i32.store
                local.get 5
                br_if 1 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=1059492
                i32.const -2
                local.get 4
                i32.rotl
                i32.and
                i32.store offset=1059492
                br 2 (;@4;)
              end
              local.get 7
              i32.const 16
              i32.const 20
              local.get 7
              i32.load offset=16
              local.get 3
              i32.eq
              select
              i32.add
              local.get 5
              i32.store
              local.get 5
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 5
            local.get 7
            i32.store offset=24
            block  ;; label = @5
              local.get 3
              i32.load offset=16
              local.tee 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              local.get 2
              i32.store offset=16
              local.get 2
              local.get 5
              i32.store offset=24
            end
            local.get 3
            i32.load offset=20
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i32.const 20
            i32.add
            local.get 2
            i32.store
            local.get 2
            local.get 5
            i32.store offset=24
          end
          local.get 1
          local.get 0
          i32.add
          local.get 0
          i32.store
          local.get 1
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 1
          i32.const 0
          i32.load offset=1059508
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          local.get 0
          i32.store offset=1059496
          return
        end
        local.get 3
        local.get 2
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 1
        local.get 0
        i32.add
        local.get 0
        i32.store
        local.get 1
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
      end
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 3
        i32.shr_u
        local.tee 2
        i32.const 3
        i32.shl
        i32.const 1059528
        i32.add
        local.set 0
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1059488
            local.tee 4
            i32.const 1
            local.get 2
            i32.shl
            local.tee 2
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 4
            local.get 2
            i32.or
            i32.store offset=1059488
            local.get 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          i32.load offset=8
          local.set 2
        end
        local.get 2
        local.get 1
        i32.store offset=12
        local.get 0
        local.get 1
        i32.store offset=8
        local.get 1
        local.get 0
        i32.store offset=12
        local.get 1
        local.get 2
        i32.store offset=8
        return
      end
      i32.const 0
      local.set 2
      block  ;; label = @2
        local.get 0
        i32.const 8
        i32.shr_u
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        i32.const 31
        local.set 2
        local.get 0
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 4
        local.get 4
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        local.tee 2
        i32.shl
        local.tee 4
        local.get 4
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        local.tee 4
        i32.shl
        local.tee 5
        local.get 5
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        local.tee 5
        i32.shl
        i32.const 15
        i32.shr_u
        local.get 4
        local.get 2
        i32.or
        local.get 5
        i32.or
        i32.sub
        local.tee 2
        i32.const 1
        i32.shl
        local.get 0
        local.get 2
        i32.const 21
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        i32.or
        i32.const 28
        i32.add
        local.set 2
      end
      local.get 1
      i64.const 0
      i64.store offset=16 align=4
      local.get 1
      i32.const 28
      i32.add
      local.get 2
      i32.store
      local.get 2
      i32.const 2
      i32.shl
      i32.const 1059792
      i32.add
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=1059492
          local.tee 5
          i32.const 1
          local.get 2
          i32.shl
          local.tee 3
          i32.and
          br_if 0 (;@3;)
          local.get 4
          local.get 1
          i32.store
          i32.const 0
          local.get 5
          local.get 3
          i32.or
          i32.store offset=1059492
          local.get 1
          i32.const 24
          i32.add
          local.get 4
          i32.store
          local.get 1
          local.get 1
          i32.store offset=8
          local.get 1
          local.get 1
          i32.store offset=12
          br 1 (;@2;)
        end
        local.get 0
        i32.const 0
        i32.const 25
        local.get 2
        i32.const 1
        i32.shr_u
        i32.sub
        local.get 2
        i32.const 31
        i32.eq
        select
        i32.shl
        local.set 2
        local.get 4
        i32.load
        local.set 5
        block  ;; label = @3
          loop  ;; label = @4
            local.get 5
            local.tee 4
            i32.load offset=4
            i32.const -8
            i32.and
            local.get 0
            i32.eq
            br_if 1 (;@3;)
            local.get 2
            i32.const 29
            i32.shr_u
            local.set 5
            local.get 2
            i32.const 1
            i32.shl
            local.set 2
            local.get 4
            local.get 5
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            local.tee 3
            i32.load
            local.tee 5
            br_if 0 (;@4;)
          end
          local.get 3
          local.get 1
          i32.store
          local.get 1
          i32.const 24
          i32.add
          local.get 4
          i32.store
          local.get 1
          local.get 1
          i32.store offset=12
          local.get 1
          local.get 1
          i32.store offset=8
          br 1 (;@2;)
        end
        local.get 4
        i32.load offset=8
        local.set 0
        local.get 4
        local.get 1
        i32.store offset=8
        local.get 0
        local.get 1
        i32.store offset=12
        local.get 1
        i32.const 24
        i32.add
        i32.const 0
        i32.store
        local.get 1
        local.get 0
        i32.store offset=8
        local.get 1
        local.get 4
        i32.store offset=12
      end
      i32.const 0
      i32.const 0
      i32.load offset=1059520
      i32.const -1
      i32.add
      local.tee 1
      i32.store offset=1059520
      local.get 1
      br_if 0 (;@1;)
      i32.const 1059944
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.load
        local.tee 0
        i32.const 8
        i32.add
        local.set 1
        local.get 0
        br_if 0 (;@2;)
      end
      i32.const 0
      i32.const -1
      i32.store offset=1059520
    end)
  (func $calloc (type 5) (param i32 i32) (result i32)
    (local i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      i64.extend_i32_u
      local.get 1
      i64.extend_i32_u
      i64.mul
      local.tee 3
      i32.wrap_i64
      local.set 2
      local.get 1
      local.get 0
      i32.or
      i32.const 65536
      i32.lt_u
      br_if 0 (;@1;)
      i32.const -1
      local.get 2
      local.get 3
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      i32.const 0
      i32.ne
      select
      local.set 2
    end
    block  ;; label = @1
      local.get 2
      call $dlmalloc
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -4
      i32.add
      i32.load8_u
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 2
      call $memset
      drop
    end
    local.get 0)
  (func $realloc (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      local.get 1
      call $dlmalloc
      return
    end
    block  ;; label = @1
      local.get 1
      i32.const -64
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 48
      i32.store offset=1059984
      i32.const 0
      return
    end
    local.get 1
    i32.const 11
    i32.lt_u
    local.set 2
    local.get 1
    i32.const 19
    i32.add
    i32.const -16
    i32.and
    local.set 3
    local.get 0
    i32.const -8
    i32.add
    local.set 4
    local.get 0
    i32.const -4
    i32.add
    local.tee 5
    i32.load
    local.tee 6
    i32.const 3
    i32.and
    local.set 7
    i32.const 0
    i32.load offset=1059504
    local.set 8
    block  ;; label = @1
      local.get 6
      i32.const -8
      i32.and
      local.tee 9
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 8
      local.get 4
      i32.gt_u
      br_if 0 (;@1;)
      local.get 7
      i32.const 1
      i32.eq
      drop
    end
    i32.const 16
    local.get 3
    local.get 2
    select
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 7
          br_if 0 (;@3;)
          local.get 2
          i32.const 256
          i32.lt_u
          br_if 1 (;@2;)
          local.get 9
          local.get 2
          i32.const 4
          i32.or
          i32.lt_u
          br_if 1 (;@2;)
          local.get 9
          local.get 2
          i32.sub
          i32.const 0
          i32.load offset=1059968
          i32.const 1
          i32.shl
          i32.le_u
          br_if 2 (;@1;)
          br 1 (;@2;)
        end
        local.get 4
        local.get 9
        i32.add
        local.set 7
        block  ;; label = @3
          local.get 9
          local.get 2
          i32.lt_u
          br_if 0 (;@3;)
          local.get 9
          local.get 2
          i32.sub
          local.tee 1
          i32.const 16
          i32.lt_u
          br_if 2 (;@1;)
          local.get 5
          local.get 2
          local.get 6
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 4
          local.get 2
          i32.add
          local.tee 2
          local.get 1
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 7
          local.get 7
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 2
          local.get 1
          call $dispose_chunk
          local.get 0
          return
        end
        block  ;; label = @3
          i32.const 0
          i32.load offset=1059512
          local.get 7
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1059500
          local.get 9
          i32.add
          local.tee 9
          local.get 2
          i32.le_u
          br_if 1 (;@2;)
          local.get 5
          local.get 2
          local.get 6
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          i32.const 0
          local.get 4
          local.get 2
          i32.add
          local.tee 1
          i32.store offset=1059512
          i32.const 0
          local.get 9
          local.get 2
          i32.sub
          local.tee 2
          i32.store offset=1059500
          local.get 1
          local.get 2
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          return
        end
        block  ;; label = @3
          i32.const 0
          i32.load offset=1059508
          local.get 7
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1059496
          local.get 9
          i32.add
          local.tee 9
          local.get 2
          i32.lt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 9
              local.get 2
              i32.sub
              local.tee 1
              i32.const 16
              i32.lt_u
              br_if 0 (;@5;)
              local.get 5
              local.get 2
              local.get 6
              i32.const 1
              i32.and
              i32.or
              i32.const 2
              i32.or
              i32.store
              local.get 4
              local.get 2
              i32.add
              local.tee 2
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 4
              local.get 9
              i32.add
              local.tee 9
              local.get 1
              i32.store
              local.get 9
              local.get 9
              i32.load offset=4
              i32.const -2
              i32.and
              i32.store offset=4
              br 1 (;@4;)
            end
            local.get 5
            local.get 6
            i32.const 1
            i32.and
            local.get 9
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 4
            local.get 9
            i32.add
            local.tee 1
            local.get 1
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            local.set 1
            i32.const 0
            local.set 2
          end
          i32.const 0
          local.get 2
          i32.store offset=1059508
          i32.const 0
          local.get 1
          i32.store offset=1059496
          local.get 0
          return
        end
        local.get 7
        i32.load offset=4
        local.tee 3
        i32.const 2
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.const -8
        i32.and
        local.get 9
        i32.add
        local.tee 10
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
        local.get 10
        local.get 2
        i32.sub
        local.set 11
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 7
            i32.load offset=12
            local.set 1
            block  ;; label = @5
              local.get 7
              i32.load offset=8
              local.tee 9
              local.get 3
              i32.const 3
              i32.shr_u
              local.tee 3
              i32.const 3
              i32.shl
              i32.const 1059528
              i32.add
              local.tee 7
              i32.eq
              br_if 0 (;@5;)
              local.get 8
              local.get 9
              i32.gt_u
              drop
            end
            block  ;; label = @5
              local.get 1
              local.get 9
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=1059488
              i32.const -2
              local.get 3
              i32.rotl
              i32.and
              i32.store offset=1059488
              br 2 (;@3;)
            end
            block  ;; label = @5
              local.get 1
              local.get 7
              i32.eq
              br_if 0 (;@5;)
              local.get 8
              local.get 1
              i32.gt_u
              drop
            end
            local.get 1
            local.get 9
            i32.store offset=8
            local.get 9
            local.get 1
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 7
          i32.load offset=24
          local.set 12
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.load offset=12
              local.tee 3
              local.get 7
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 8
                local.get 7
                i32.load offset=8
                local.tee 1
                i32.gt_u
                br_if 0 (;@6;)
                local.get 1
                i32.load offset=12
                local.get 7
                i32.ne
                drop
              end
              local.get 3
              local.get 1
              i32.store offset=8
              local.get 1
              local.get 3
              i32.store offset=12
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 7
              i32.const 20
              i32.add
              local.tee 1
              i32.load
              local.tee 9
              br_if 0 (;@5;)
              local.get 7
              i32.const 16
              i32.add
              local.tee 1
              i32.load
              local.tee 9
              br_if 0 (;@5;)
              i32.const 0
              local.set 3
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 1
              local.set 8
              local.get 9
              local.tee 3
              i32.const 20
              i32.add
              local.tee 1
              i32.load
              local.tee 9
              br_if 0 (;@5;)
              local.get 3
              i32.const 16
              i32.add
              local.set 1
              local.get 3
              i32.load offset=16
              local.tee 9
              br_if 0 (;@5;)
            end
            local.get 8
            i32.const 0
            i32.store
          end
          local.get 12
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.load offset=28
              local.tee 9
              i32.const 2
              i32.shl
              i32.const 1059792
              i32.add
              local.tee 1
              i32.load
              local.get 7
              i32.ne
              br_if 0 (;@5;)
              local.get 1
              local.get 3
              i32.store
              local.get 3
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1059492
              i32.const -2
              local.get 9
              i32.rotl
              i32.and
              i32.store offset=1059492
              br 2 (;@3;)
            end
            local.get 12
            i32.const 16
            i32.const 20
            local.get 12
            i32.load offset=16
            local.get 7
            i32.eq
            select
            i32.add
            local.get 3
            i32.store
            local.get 3
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 3
          local.get 12
          i32.store offset=24
          block  ;; label = @4
            local.get 7
            i32.load offset=16
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 1
            i32.store offset=16
            local.get 1
            local.get 3
            i32.store offset=24
          end
          local.get 7
          i32.load offset=20
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.const 20
          i32.add
          local.get 1
          i32.store
          local.get 1
          local.get 3
          i32.store offset=24
        end
        block  ;; label = @3
          local.get 11
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 5
          local.get 6
          i32.const 1
          i32.and
          local.get 10
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 4
          local.get 10
          i32.add
          local.tee 1
          local.get 1
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          return
        end
        local.get 5
        local.get 2
        local.get 6
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get 4
        local.get 2
        i32.add
        local.tee 1
        local.get 11
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 4
        local.get 10
        i32.add
        local.tee 2
        local.get 2
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 1
        local.get 11
        call $dispose_chunk
        local.get 0
        return
      end
      block  ;; label = @2
        local.get 1
        call $dlmalloc
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        return
      end
      local.get 2
      local.get 0
      i32.const -4
      i32.const -8
      local.get 5
      i32.load
      local.tee 9
      i32.const 3
      i32.and
      select
      local.get 9
      i32.const -8
      i32.and
      i32.add
      local.tee 9
      local.get 1
      local.get 9
      local.get 1
      i32.lt_u
      select
      call $memcpy
      local.set 1
      local.get 0
      call $dlfree
      local.get 1
      local.set 0
    end
    local.get 0)
  (func $dispose_chunk (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.tee 3
        local.get 1
        i32.add
        local.set 1
        block  ;; label = @3
          i32.const 0
          i32.load offset=1059508
          local.get 0
          local.get 3
          i32.sub
          local.tee 0
          i32.eq
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1059504
          local.set 4
          block  ;; label = @4
            local.get 3
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=12
            local.set 5
            block  ;; label = @5
              local.get 0
              i32.load offset=8
              local.tee 6
              local.get 3
              i32.const 3
              i32.shr_u
              local.tee 7
              i32.const 3
              i32.shl
              i32.const 1059528
              i32.add
              local.tee 3
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              local.get 6
              i32.gt_u
              drop
            end
            block  ;; label = @5
              local.get 5
              local.get 6
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=1059488
              i32.const -2
              local.get 7
              i32.rotl
              i32.and
              i32.store offset=1059488
              br 3 (;@2;)
            end
            block  ;; label = @5
              local.get 5
              local.get 3
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              local.get 5
              i32.gt_u
              drop
            end
            local.get 5
            local.get 6
            i32.store offset=8
            local.get 6
            local.get 5
            i32.store offset=12
            br 2 (;@2;)
          end
          local.get 0
          i32.load offset=24
          local.set 7
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=12
              local.tee 6
              local.get 0
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 4
                local.get 0
                i32.load offset=8
                local.tee 3
                i32.gt_u
                br_if 0 (;@6;)
                local.get 3
                i32.load offset=12
                local.get 0
                i32.ne
                drop
              end
              local.get 6
              local.get 3
              i32.store offset=8
              local.get 3
              local.get 6
              i32.store offset=12
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 0
              i32.const 20
              i32.add
              local.tee 3
              i32.load
              local.tee 5
              br_if 0 (;@5;)
              local.get 0
              i32.const 16
              i32.add
              local.tee 3
              i32.load
              local.tee 5
              br_if 0 (;@5;)
              i32.const 0
              local.set 6
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 3
              local.set 4
              local.get 5
              local.tee 6
              i32.const 20
              i32.add
              local.tee 3
              i32.load
              local.tee 5
              br_if 0 (;@5;)
              local.get 6
              i32.const 16
              i32.add
              local.set 3
              local.get 6
              i32.load offset=16
              local.tee 5
              br_if 0 (;@5;)
            end
            local.get 4
            i32.const 0
            i32.store
          end
          local.get 7
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=28
              local.tee 5
              i32.const 2
              i32.shl
              i32.const 1059792
              i32.add
              local.tee 3
              i32.load
              local.get 0
              i32.ne
              br_if 0 (;@5;)
              local.get 3
              local.get 6
              i32.store
              local.get 6
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1059492
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              i32.store offset=1059492
              br 3 (;@2;)
            end
            local.get 7
            i32.const 16
            i32.const 20
            local.get 7
            i32.load offset=16
            local.get 0
            i32.eq
            select
            i32.add
            local.get 6
            i32.store
            local.get 6
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 6
          local.get 7
          i32.store offset=24
          block  ;; label = @4
            local.get 0
            i32.load offset=16
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            local.get 3
            i32.store offset=16
            local.get 3
            local.get 6
            i32.store offset=24
          end
          local.get 0
          i32.load offset=20
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 6
          i32.const 20
          i32.add
          local.get 3
          i32.store
          local.get 3
          local.get 6
          i32.store offset=24
          br 1 (;@2;)
        end
        local.get 2
        i32.load offset=4
        local.tee 3
        i32.const 3
        i32.and
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        i32.const -2
        i32.and
        i32.store offset=4
        i32.const 0
        local.get 1
        i32.store offset=1059496
        local.get 2
        local.get 1
        i32.store
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          local.tee 3
          i32.const 2
          i32.and
          br_if 0 (;@3;)
          block  ;; label = @4
            i32.const 0
            i32.load offset=1059512
            local.get 2
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 0
            i32.store offset=1059512
            i32.const 0
            i32.const 0
            i32.load offset=1059500
            local.get 1
            i32.add
            local.tee 1
            i32.store offset=1059500
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            i32.const 0
            i32.load offset=1059508
            i32.ne
            br_if 3 (;@1;)
            i32.const 0
            i32.const 0
            i32.store offset=1059496
            i32.const 0
            i32.const 0
            i32.store offset=1059508
            return
          end
          block  ;; label = @4
            i32.const 0
            i32.load offset=1059508
            local.get 2
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 0
            i32.store offset=1059508
            i32.const 0
            i32.const 0
            i32.load offset=1059496
            local.get 1
            i32.add
            local.tee 1
            i32.store offset=1059496
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 1
            i32.add
            local.get 1
            i32.store
            return
          end
          i32.const 0
          i32.load offset=1059504
          local.set 4
          local.get 3
          i32.const -8
          i32.and
          local.get 1
          i32.add
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const 255
              i32.gt_u
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=12
              local.set 5
              block  ;; label = @6
                local.get 2
                i32.load offset=8
                local.tee 6
                local.get 3
                i32.const 3
                i32.shr_u
                local.tee 2
                i32.const 3
                i32.shl
                i32.const 1059528
                i32.add
                local.tee 3
                i32.eq
                br_if 0 (;@6;)
                local.get 4
                local.get 6
                i32.gt_u
                drop
              end
              block  ;; label = @6
                local.get 5
                local.get 6
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.load offset=1059488
                i32.const -2
                local.get 2
                i32.rotl
                i32.and
                i32.store offset=1059488
                br 2 (;@4;)
              end
              block  ;; label = @6
                local.get 5
                local.get 3
                i32.eq
                br_if 0 (;@6;)
                local.get 4
                local.get 5
                i32.gt_u
                drop
              end
              local.get 5
              local.get 6
              i32.store offset=8
              local.get 6
              local.get 5
              i32.store offset=12
              br 1 (;@4;)
            end
            local.get 2
            i32.load offset=24
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load offset=12
                local.tee 6
                local.get 2
                i32.eq
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 4
                  local.get 2
                  i32.load offset=8
                  local.tee 3
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load offset=12
                  local.get 2
                  i32.ne
                  drop
                end
                local.get 6
                local.get 3
                i32.store offset=8
                local.get 3
                local.get 6
                i32.store offset=12
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 2
                i32.const 20
                i32.add
                local.tee 3
                i32.load
                local.tee 5
                br_if 0 (;@6;)
                local.get 2
                i32.const 16
                i32.add
                local.tee 3
                i32.load
                local.tee 5
                br_if 0 (;@6;)
                i32.const 0
                local.set 6
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 3
                local.set 4
                local.get 5
                local.tee 6
                i32.const 20
                i32.add
                local.tee 3
                i32.load
                local.tee 5
                br_if 0 (;@6;)
                local.get 6
                i32.const 16
                i32.add
                local.set 3
                local.get 6
                i32.load offset=16
                local.tee 5
                br_if 0 (;@6;)
              end
              local.get 4
              i32.const 0
              i32.store
            end
            local.get 7
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load offset=28
                local.tee 5
                i32.const 2
                i32.shl
                i32.const 1059792
                i32.add
                local.tee 3
                i32.load
                local.get 2
                i32.ne
                br_if 0 (;@6;)
                local.get 3
                local.get 6
                i32.store
                local.get 6
                br_if 1 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=1059492
                i32.const -2
                local.get 5
                i32.rotl
                i32.and
                i32.store offset=1059492
                br 2 (;@4;)
              end
              local.get 7
              i32.const 16
              i32.const 20
              local.get 7
              i32.load offset=16
              local.get 2
              i32.eq
              select
              i32.add
              local.get 6
              i32.store
              local.get 6
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 6
            local.get 7
            i32.store offset=24
            block  ;; label = @5
              local.get 2
              i32.load offset=16
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              local.get 3
              i32.store offset=16
              local.get 3
              local.get 6
              i32.store offset=24
            end
            local.get 2
            i32.load offset=20
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            i32.const 20
            i32.add
            local.get 3
            i32.store
            local.get 3
            local.get 6
            i32.store offset=24
          end
          local.get 0
          local.get 1
          i32.add
          local.get 1
          i32.store
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          i32.const 0
          i32.load offset=1059508
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          local.get 1
          i32.store offset=1059496
          return
        end
        local.get 2
        local.get 3
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 0
        local.get 1
        i32.add
        local.get 1
        i32.store
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
      end
      block  ;; label = @2
        local.get 1
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 3
        i32.shr_u
        local.tee 3
        i32.const 3
        i32.shl
        i32.const 1059528
        i32.add
        local.set 1
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1059488
            local.tee 5
            i32.const 1
            local.get 3
            i32.shl
            local.tee 3
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 5
            local.get 3
            i32.or
            i32.store offset=1059488
            local.get 1
            local.set 3
            br 1 (;@3;)
          end
          local.get 1
          i32.load offset=8
          local.set 3
        end
        local.get 3
        local.get 0
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=8
        local.get 0
        local.get 1
        i32.store offset=12
        local.get 0
        local.get 3
        i32.store offset=8
        return
      end
      i32.const 0
      local.set 3
      block  ;; label = @2
        local.get 1
        i32.const 8
        i32.shr_u
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        i32.const 31
        local.set 3
        local.get 1
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        local.get 5
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        local.tee 3
        i32.shl
        local.tee 5
        local.get 5
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        local.tee 5
        i32.shl
        local.tee 6
        local.get 6
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        local.tee 6
        i32.shl
        i32.const 15
        i32.shr_u
        local.get 5
        local.get 3
        i32.or
        local.get 6
        i32.or
        i32.sub
        local.tee 3
        i32.const 1
        i32.shl
        local.get 1
        local.get 3
        i32.const 21
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        i32.or
        i32.const 28
        i32.add
        local.set 3
      end
      local.get 0
      i64.const 0
      i64.store offset=16 align=4
      local.get 0
      i32.const 28
      i32.add
      local.get 3
      i32.store
      local.get 3
      i32.const 2
      i32.shl
      i32.const 1059792
      i32.add
      local.set 5
      block  ;; label = @2
        i32.const 0
        i32.load offset=1059492
        local.tee 6
        i32.const 1
        local.get 3
        i32.shl
        local.tee 2
        i32.and
        br_if 0 (;@2;)
        local.get 5
        local.get 0
        i32.store
        i32.const 0
        local.get 6
        local.get 2
        i32.or
        i32.store offset=1059492
        local.get 0
        i32.const 24
        i32.add
        local.get 5
        i32.store
        local.get 0
        local.get 0
        i32.store offset=8
        local.get 0
        local.get 0
        i32.store offset=12
        return
      end
      local.get 1
      i32.const 0
      i32.const 25
      local.get 3
      i32.const 1
      i32.shr_u
      i32.sub
      local.get 3
      i32.const 31
      i32.eq
      select
      i32.shl
      local.set 3
      local.get 5
      i32.load
      local.set 6
      block  ;; label = @2
        loop  ;; label = @3
          local.get 6
          local.tee 5
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 1
          i32.eq
          br_if 1 (;@2;)
          local.get 3
          i32.const 29
          i32.shr_u
          local.set 6
          local.get 3
          i32.const 1
          i32.shl
          local.set 3
          local.get 5
          local.get 6
          i32.const 4
          i32.and
          i32.add
          i32.const 16
          i32.add
          local.tee 2
          i32.load
          local.tee 6
          br_if 0 (;@3;)
        end
        local.get 2
        local.get 0
        i32.store
        local.get 0
        i32.const 24
        i32.add
        local.get 5
        i32.store
        local.get 0
        local.get 0
        i32.store offset=12
        local.get 0
        local.get 0
        i32.store offset=8
        return
      end
      local.get 5
      i32.load offset=8
      local.set 1
      local.get 5
      local.get 0
      i32.store offset=8
      local.get 1
      local.get 0
      i32.store offset=12
      local.get 0
      i32.const 24
      i32.add
      i32.const 0
      i32.store
      local.get 0
      local.get 1
      i32.store offset=8
      local.get 0
      local.get 5
      i32.store offset=12
    end)
  (func $internal_memalign (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 0
        i32.const -1
        i32.add
        i32.and
        br_if 0 (;@2;)
        local.get 0
        local.set 2
        br 1 (;@1;)
      end
      i32.const 32
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.tee 2
        i32.const 1
        i32.shl
        local.set 3
        local.get 2
        local.get 0
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      i32.const -64
      local.get 2
      i32.sub
      local.get 1
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 48
      i32.store offset=1059984
      i32.const 0
      return
    end
    block  ;; label = @1
      i32.const 16
      local.get 1
      i32.const 19
      i32.add
      i32.const -16
      i32.and
      local.get 1
      i32.const 11
      i32.lt_u
      select
      local.tee 1
      i32.const 12
      i32.or
      local.get 2
      i32.add
      call $dlmalloc
      local.tee 3
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 3
    i32.const -8
    i32.add
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const -1
        i32.add
        local.get 3
        i32.and
        br_if 0 (;@2;)
        local.get 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 3
      i32.const -4
      i32.add
      local.tee 4
      i32.load
      local.tee 5
      i32.const -8
      i32.and
      local.get 3
      local.get 2
      i32.add
      i32.const -1
      i32.add
      i32.const 0
      local.get 2
      i32.sub
      i32.and
      i32.const -8
      i32.add
      local.tee 3
      local.get 3
      local.get 2
      i32.add
      local.get 3
      local.get 0
      i32.sub
      i32.const 15
      i32.gt_u
      select
      local.tee 2
      local.get 0
      i32.sub
      local.tee 3
      i32.sub
      local.set 6
      block  ;; label = @2
        local.get 5
        i32.const 3
        i32.and
        br_if 0 (;@2;)
        local.get 2
        local.get 6
        i32.store offset=4
        local.get 2
        local.get 0
        i32.load
        local.get 3
        i32.add
        i32.store
        br 1 (;@1;)
      end
      local.get 2
      local.get 6
      local.get 2
      i32.load offset=4
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store offset=4
      local.get 2
      local.get 6
      i32.add
      local.tee 6
      local.get 6
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 4
      local.get 3
      local.get 4
      i32.load
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store
      local.get 2
      local.get 2
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 0
      local.get 3
      call $dispose_chunk
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=4
      local.tee 3
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const -8
      i32.and
      local.tee 0
      local.get 1
      i32.const 16
      i32.add
      i32.le_u
      br_if 0 (;@1;)
      local.get 2
      local.get 1
      local.get 3
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store offset=4
      local.get 2
      local.get 1
      i32.add
      local.tee 3
      local.get 0
      local.get 1
      i32.sub
      local.tee 1
      i32.const 3
      i32.or
      i32.store offset=4
      local.get 2
      local.get 0
      i32.add
      local.tee 0
      local.get 0
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 3
      local.get 1
      call $dispose_chunk
    end
    local.get 2
    i32.const 8
    i32.add)
  (func $aligned_alloc (type 5) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.const 16
      i32.gt_u
      br_if 0 (;@1;)
      local.get 1
      call $dlmalloc
      return
    end
    local.get 0
    local.get 1
    call $internal_memalign)
  (func $getcwd (type 5) (param i32 i32) (result i32)
    (local i32)
    i32.const 0
    i32.load offset=1059380
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        local.get 2
        call $strdup
        local.tee 0
        br_if 1 (;@1;)
        i32.const 0
        i32.const 48
        i32.store offset=1059984
        i32.const 0
        return
      end
      block  ;; label = @2
        local.get 2
        call $strlen
        i32.const 1
        i32.add
        local.get 1
        i32.le_u
        br_if 0 (;@2;)
        i32.const 0
        i32.const 68
        i32.store offset=1059984
        i32.const 0
        return
      end
      local.get 0
      local.get 2
      call $strcpy
      local.set 0
    end
    local.get 0)
  (func $__wasi_environ_get (type 5) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_environ_get
    i32.const 65535
    i32.and)
  (func $__wasi_environ_sizes_get (type 5) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_environ_sizes_get
    i32.const 65535
    i32.and)
  (func $__wasi_proc_exit (type 1) (param i32)
    local.get 0
    call $__imported_wasi_snapshot_preview1_proc_exit
    unreachable)
  (func $__wasilibc_initialize_environ_eagerly (type 0)
    call $__wasilibc_initialize_environ)
  (func $abort (type 0)
    unreachable
    unreachable)
  (func $_Exit (type 1) (param i32)
    local.get 0
    call $__wasi_proc_exit
    unreachable)
  (func $__wasilibc_ensure_environ (type 0)
    block  ;; label = @1
      i32.const 0
      i32.load offset=1059988
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      call $__wasilibc_initialize_environ
    end)
  (func $__wasilibc_initialize_environ (type 0)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 12
          i32.add
          local.get 0
          i32.const 8
          i32.add
          call $__wasi_environ_sizes_get
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 0
            i32.load offset=12
            local.tee 1
            br_if 0 (;@4;)
            i32.const 0
            i32.const 1059992
            i32.store offset=1059988
            br 3 (;@1;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 1
              i32.add
              local.tee 2
              local.get 1
              i32.lt_u
              br_if 0 (;@5;)
              local.get 0
              i32.load offset=8
              call $malloc
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.const 4
              call $calloc
              local.tee 1
              br_if 1 (;@4;)
              local.get 3
              call $free
            end
            i32.const 70
            call $_Exit
            unreachable
          end
          local.get 1
          local.get 3
          call $__wasi_environ_get
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          call $free
          local.get 1
          call $free
        end
        i32.const 71
        call $_Exit
        unreachable
      end
      i32.const 0
      local.get 1
      i32.store offset=1059988
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $sbrk (type 4) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      memory.size
      i32.const 16
      i32.shl
      return
    end
    block  ;; label = @1
      local.get 0
      i32.const 65535
      i32.and
      br_if 0 (;@1;)
      local.get 0
      i32.const -1
      i32.le_s
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.const 16
        i32.shr_u
        memory.grow
        local.tee 0
        i32.const -1
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.const 48
        i32.store offset=1059984
        i32.const -1
        return
      end
      local.get 0
      i32.const 16
      i32.shl
      return
    end
    call $abort
    unreachable)
  (func $dummy (type 0))
  (func $__wasm_call_dtors (type 0)
    call $dummy
    call $dummy)
  (func $exit (type 1) (param i32)
    call $dummy
    call $dummy
    local.get 0
    call $_Exit
    unreachable)
  (func $getenv (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32)
    call $__wasilibc_ensure_environ
    i32.const 0
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 61
      call $__strchrnul
      local.tee 2
      local.get 0
      i32.sub
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.load8_u
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=1059988
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.const 4
      i32.add
      local.set 4
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 2
            local.get 3
            call $strncmp
            br_if 0 (;@4;)
            local.get 2
            local.get 3
            i32.add
            local.tee 2
            i32.load8_u
            i32.const 61
            i32.eq
            br_if 2 (;@2;)
          end
          local.get 4
          i32.load
          local.set 2
          local.get 4
          i32.const 4
          i32.add
          local.set 4
          local.get 2
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 2
      i32.const 1
      i32.add
      local.set 1
    end
    local.get 1)
  (func $strdup (type 4) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      call $strlen
      i32.const 1
      i32.add
      local.tee 1
      call $malloc
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      local.get 1
      call $memcpy
      drop
    end
    local.get 2)
  (func $memmove (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        local.get 0
        i32.sub
        local.get 2
        i32.sub
        i32.const 0
        local.get 2
        i32.const 1
        i32.shl
        i32.sub
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        local.get 2
        call $memcpy
        drop
        br 1 (;@1;)
      end
      local.get 1
      local.get 0
      i32.xor
      i32.const 3
      i32.and
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 1
            i32.ge_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              local.set 3
              br 3 (;@2;)
            end
            block  ;; label = @5
              local.get 0
              i32.const 3
              i32.and
              br_if 0 (;@5;)
              local.get 0
              local.set 3
              br 2 (;@3;)
            end
            local.get 0
            local.set 3
            loop  ;; label = @5
              local.get 2
              i32.eqz
              br_if 4 (;@1;)
              local.get 3
              local.get 1
              i32.load8_u
              i32.store8
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 2
              i32.const -1
              i32.add
              local.set 2
              local.get 3
              i32.const 1
              i32.add
              local.tee 3
              i32.const 3
              i32.and
              i32.eqz
              br_if 2 (;@3;)
              br 0 (;@5;)
            end
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              local.set 3
              br 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                local.get 2
                i32.add
                i32.const 3
                i32.and
                br_if 0 (;@6;)
                local.get 2
                local.set 3
                br 1 (;@5;)
              end
              local.get 1
              i32.const -1
              i32.add
              local.set 4
              local.get 0
              i32.const -1
              i32.add
              local.set 5
              loop  ;; label = @6
                local.get 2
                i32.eqz
                br_if 5 (;@1;)
                local.get 5
                local.get 2
                i32.add
                local.tee 6
                local.get 4
                local.get 2
                i32.add
                i32.load8_u
                i32.store8
                local.get 2
                i32.const -1
                i32.add
                local.tee 3
                local.set 2
                local.get 6
                i32.const 3
                i32.and
                br_if 0 (;@6;)
              end
            end
            local.get 3
            i32.const 4
            i32.lt_u
            br_if 0 (;@4;)
            local.get 0
            i32.const -4
            i32.add
            local.set 2
            local.get 1
            i32.const -4
            i32.add
            local.set 6
            loop  ;; label = @5
              local.get 2
              local.get 3
              i32.add
              local.get 6
              local.get 3
              i32.add
              i32.load
              i32.store
              local.get 3
              i32.const -4
              i32.add
              local.tee 3
              i32.const 3
              i32.gt_u
              br_if 0 (;@5;)
            end
          end
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          i32.const -1
          i32.add
          local.set 1
          local.get 0
          i32.const -1
          i32.add
          local.set 2
          loop  ;; label = @4
            local.get 2
            local.get 3
            i32.add
            local.get 1
            local.get 3
            i32.add
            i32.load8_u
            i32.store8
            local.get 3
            i32.const -1
            i32.add
            local.tee 3
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        local.get 2
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 3
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 3
          i32.const 4
          i32.add
          local.set 3
          local.get 2
          i32.const -4
          i32.add
          local.tee 2
          i32.const 3
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
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
  (func $__stpcpy (type 5) (param i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 0
        i32.xor
        i32.const 3
        i32.and
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 1
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 0
            local.get 1
            i32.load8_u
            local.tee 2
            i32.store8
            local.get 2
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            i32.const 1
            i32.add
            local.set 0
            local.get 1
            i32.const 1
            i32.add
            local.tee 1
            i32.const 3
            i32.and
            br_if 0 (;@4;)
          end
        end
        local.get 1
        i32.load
        local.tee 2
        i32.const -1
        i32.xor
        local.get 2
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 0
          local.get 2
          i32.store
          local.get 1
          i32.load offset=4
          local.set 2
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 2
          i32.const -1
          i32.xor
          local.get 2
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 1
      i32.load8_u
      local.tee 2
      i32.store8
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 1
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 0
        local.get 1
        i32.load8_u
        local.tee 2
        i32.store8 offset=1
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $strcpy (type 5) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__stpcpy
    drop
    local.get 0)
  (func $memcpy (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        loop  ;; label = @3
          local.get 3
          local.get 1
          i32.load8_u
          i32.store8
          local.get 2
          i32.const -1
          i32.add
          local.set 4
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 2
          i32.const 1
          i32.eq
          br_if 2 (;@1;)
          local.get 4
          local.set 2
          local.get 1
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 2
      local.set 4
      local.get 0
      local.set 3
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 3
        i32.and
        local.tee 2
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 4
          i32.const 16
          i32.lt_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 3
            local.get 1
            i32.load
            i32.store
            local.get 3
            i32.const 4
            i32.add
            local.get 1
            i32.const 4
            i32.add
            i32.load
            i32.store
            local.get 3
            i32.const 8
            i32.add
            local.get 1
            i32.const 8
            i32.add
            i32.load
            i32.store
            local.get 3
            i32.const 12
            i32.add
            local.get 1
            i32.const 12
            i32.add
            i32.load
            i32.store
            local.get 3
            i32.const 16
            i32.add
            local.set 3
            local.get 1
            i32.const 16
            i32.add
            local.set 1
            local.get 4
            i32.const -16
            i32.add
            local.tee 4
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 4
          i32.const 8
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 1
          i64.load align=4
          i64.store align=4
          local.get 1
          i32.const 8
          i32.add
          local.set 1
          local.get 3
          i32.const 8
          i32.add
          local.set 3
        end
        block  ;; label = @3
          local.get 4
          i32.const 4
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 3
          i32.const 4
          i32.add
          local.set 3
        end
        block  ;; label = @3
          local.get 4
          i32.const 2
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 1
          i32.load8_u
          i32.store8
          local.get 3
          local.get 1
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get 3
          i32.const 2
          i32.add
          local.set 3
          local.get 1
          i32.const 2
          i32.add
          local.set 1
        end
        local.get 4
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 0
        return
      end
      block  ;; label = @2
        local.get 4
        i32.const 32
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const -1
              i32.add
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 3 (;@2;)
            end
            local.get 3
            local.get 1
            i32.load8_u offset=1
            i32.store8 offset=1
            local.get 3
            local.get 1
            i32.load
            local.tee 5
            i32.store8
            local.get 3
            local.get 1
            i32.load8_u offset=2
            i32.store8 offset=2
            local.get 4
            i32.const -3
            i32.add
            local.set 4
            local.get 3
            i32.const 3
            i32.add
            local.set 6
            i32.const 0
            local.set 2
            loop  ;; label = @5
              local.get 6
              local.get 2
              i32.add
              local.tee 3
              local.get 1
              local.get 2
              i32.add
              local.tee 7
              i32.const 4
              i32.add
              i32.load
              local.tee 8
              i32.const 8
              i32.shl
              local.get 5
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 3
              i32.const 4
              i32.add
              local.get 7
              i32.const 8
              i32.add
              i32.load
              local.tee 5
              i32.const 8
              i32.shl
              local.get 8
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 3
              i32.const 8
              i32.add
              local.get 7
              i32.const 12
              i32.add
              i32.load
              local.tee 8
              i32.const 8
              i32.shl
              local.get 5
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 3
              i32.const 12
              i32.add
              local.get 7
              i32.const 16
              i32.add
              i32.load
              local.tee 5
              i32.const 8
              i32.shl
              local.get 8
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 2
              i32.const 16
              i32.add
              local.set 2
              local.get 4
              i32.const -16
              i32.add
              local.tee 4
              i32.const 16
              i32.gt_u
              br_if 0 (;@5;)
            end
            local.get 6
            local.get 2
            i32.add
            local.set 3
            local.get 1
            local.get 2
            i32.add
            i32.const 3
            i32.add
            local.set 1
            br 2 (;@2;)
          end
          local.get 3
          local.get 1
          i32.load
          local.tee 5
          i32.store8
          local.get 3
          local.get 1
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get 4
          i32.const -2
          i32.add
          local.set 4
          local.get 3
          i32.const 2
          i32.add
          local.set 6
          i32.const 0
          local.set 2
          loop  ;; label = @4
            local.get 6
            local.get 2
            i32.add
            local.tee 3
            local.get 1
            local.get 2
            i32.add
            local.tee 7
            i32.const 4
            i32.add
            i32.load
            local.tee 8
            i32.const 16
            i32.shl
            local.get 5
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 3
            i32.const 4
            i32.add
            local.get 7
            i32.const 8
            i32.add
            i32.load
            local.tee 5
            i32.const 16
            i32.shl
            local.get 8
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 3
            i32.const 8
            i32.add
            local.get 7
            i32.const 12
            i32.add
            i32.load
            local.tee 8
            i32.const 16
            i32.shl
            local.get 5
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 3
            i32.const 12
            i32.add
            local.get 7
            i32.const 16
            i32.add
            i32.load
            local.tee 5
            i32.const 16
            i32.shl
            local.get 8
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 2
            i32.const 16
            i32.add
            local.set 2
            local.get 4
            i32.const -16
            i32.add
            local.tee 4
            i32.const 17
            i32.gt_u
            br_if 0 (;@4;)
          end
          local.get 6
          local.get 2
          i32.add
          local.set 3
          local.get 1
          local.get 2
          i32.add
          i32.const 2
          i32.add
          local.set 1
          br 1 (;@2;)
        end
        local.get 3
        local.get 1
        i32.load
        local.tee 5
        i32.store8
        local.get 4
        i32.const -1
        i32.add
        local.set 4
        local.get 3
        i32.const 1
        i32.add
        local.set 6
        i32.const 0
        local.set 2
        loop  ;; label = @3
          local.get 6
          local.get 2
          i32.add
          local.tee 3
          local.get 1
          local.get 2
          i32.add
          local.tee 7
          i32.const 4
          i32.add
          i32.load
          local.tee 8
          i32.const 24
          i32.shl
          local.get 5
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 3
          i32.const 4
          i32.add
          local.get 7
          i32.const 8
          i32.add
          i32.load
          local.tee 5
          i32.const 24
          i32.shl
          local.get 8
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 3
          i32.const 8
          i32.add
          local.get 7
          i32.const 12
          i32.add
          i32.load
          local.tee 8
          i32.const 24
          i32.shl
          local.get 5
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 3
          i32.const 12
          i32.add
          local.get 7
          i32.const 16
          i32.add
          i32.load
          local.tee 5
          i32.const 24
          i32.shl
          local.get 8
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 2
          i32.const 16
          i32.add
          local.set 2
          local.get 4
          i32.const -16
          i32.add
          local.tee 4
          i32.const 18
          i32.gt_u
          br_if 0 (;@3;)
        end
        local.get 6
        local.get 2
        i32.add
        local.set 3
        local.get 1
        local.get 2
        i32.add
        i32.const 1
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 4
        i32.const 16
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        i32.load16_u align=1
        i32.store16 align=1
        local.get 3
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 3
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 3
        local.get 1
        i32.load8_u offset=4
        i32.store8 offset=4
        local.get 3
        local.get 1
        i32.load8_u offset=5
        i32.store8 offset=5
        local.get 3
        local.get 1
        i32.load8_u offset=6
        i32.store8 offset=6
        local.get 3
        local.get 1
        i32.load8_u offset=7
        i32.store8 offset=7
        local.get 3
        local.get 1
        i32.load8_u offset=8
        i32.store8 offset=8
        local.get 3
        local.get 1
        i32.load8_u offset=9
        i32.store8 offset=9
        local.get 3
        local.get 1
        i32.load8_u offset=10
        i32.store8 offset=10
        local.get 3
        local.get 1
        i32.load8_u offset=11
        i32.store8 offset=11
        local.get 3
        local.get 1
        i32.load8_u offset=12
        i32.store8 offset=12
        local.get 3
        local.get 1
        i32.load8_u offset=13
        i32.store8 offset=13
        local.get 3
        local.get 1
        i32.load8_u offset=14
        i32.store8 offset=14
        local.get 3
        local.get 1
        i32.load8_u offset=15
        i32.store8 offset=15
        local.get 3
        i32.const 16
        i32.add
        local.set 3
        local.get 1
        i32.const 16
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 4
        i32.const 8
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 3
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 3
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 3
        local.get 1
        i32.load8_u offset=4
        i32.store8 offset=4
        local.get 3
        local.get 1
        i32.load8_u offset=5
        i32.store8 offset=5
        local.get 3
        local.get 1
        i32.load8_u offset=6
        i32.store8 offset=6
        local.get 3
        local.get 1
        i32.load8_u offset=7
        i32.store8 offset=7
        local.get 3
        i32.const 8
        i32.add
        local.set 3
        local.get 1
        i32.const 8
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 4
        i32.const 4
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 3
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 3
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 3
        i32.const 4
        i32.add
        local.set 3
        local.get 1
        i32.const 4
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 4
        i32.const 2
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 3
        i32.const 2
        i32.add
        local.set 3
        local.get 1
        i32.const 2
        i32.add
        local.set 1
      end
      local.get 4
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.load8_u
      i32.store8
    end
    local.get 0)
  (func $__strchrnul (type 5) (param i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 1
      i32.const 255
      i32.and
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 0
            i32.load8_u
            local.tee 3
            i32.eqz
            br_if 2 (;@2;)
            local.get 3
            local.get 1
            i32.const 255
            i32.and
            i32.eq
            br_if 2 (;@2;)
            local.get 0
            i32.const 1
            i32.add
            local.tee 0
            i32.const 3
            i32.and
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 0
          i32.load
          local.tee 3
          i32.const -1
          i32.xor
          local.get 3
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          br_if 0 (;@3;)
          local.get 2
          i32.const 16843009
          i32.mul
          local.set 2
          loop  ;; label = @4
            local.get 3
            local.get 2
            i32.xor
            local.tee 3
            i32.const -1
            i32.xor
            local.get 3
            i32.const -16843009
            i32.add
            i32.and
            i32.const -2139062144
            i32.and
            br_if 1 (;@3;)
            local.get 0
            i32.load offset=4
            local.set 3
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            local.get 3
            i32.const -1
            i32.xor
            local.get 3
            i32.const -16843009
            i32.add
            i32.and
            i32.const -2139062144
            i32.and
            i32.eqz
            br_if 0 (;@4;)
          end
        end
        local.get 0
        i32.const -1
        i32.add
        local.set 0
        loop  ;; label = @3
          local.get 0
          i32.const 1
          i32.add
          local.tee 0
          i32.load8_u
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          local.get 1
          i32.const 255
          i32.and
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 0
      return
    end
    local.get 0
    local.get 0
    call $strlen
    i32.add)
  (func $memset (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8
      local.get 2
      local.get 0
      i32.add
      local.tee 3
      i32.const -1
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=2
      local.get 0
      local.get 1
      i32.store8 offset=1
      local.get 3
      i32.const -3
      i32.add
      local.get 1
      i32.store8
      local.get 3
      i32.const -2
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=3
      local.get 3
      i32.const -4
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.tee 3
      local.get 1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee 1
      i32.store
      local.get 3
      local.get 2
      local.get 4
      i32.sub
      i32.const -4
      i32.and
      local.tee 4
      i32.add
      local.tee 2
      i32.const -4
      i32.add
      local.get 1
      i32.store
      local.get 4
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=8
      local.get 3
      local.get 1
      i32.store offset=4
      local.get 2
      i32.const -8
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -12
      i32.add
      local.get 1
      i32.store
      local.get 4
      i32.const 25
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=24
      local.get 3
      local.get 1
      i32.store offset=20
      local.get 3
      local.get 1
      i32.store offset=16
      local.get 3
      local.get 1
      i32.store offset=12
      local.get 2
      i32.const -16
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -20
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -24
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -28
      i32.add
      local.get 1
      i32.store
      local.get 4
      local.get 3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee 5
      i32.sub
      local.tee 2
      i32.const 32
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      i64.extend_i32_u
      local.tee 6
      i64.const 32
      i64.shl
      local.get 6
      i64.or
      local.set 6
      local.get 3
      local.get 5
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        local.get 6
        i64.store
        local.get 1
        i32.const 24
        i32.add
        local.get 6
        i64.store
        local.get 1
        i32.const 16
        i32.add
        local.get 6
        i64.store
        local.get 1
        i32.const 8
        i32.add
        local.get 6
        i64.store
        local.get 1
        i32.const 32
        i32.add
        local.set 1
        local.get 2
        i32.const -32
        i32.add
        local.tee 2
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $strncmp (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 2
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.load8_u
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      i32.add
      local.set 0
      local.get 2
      i32.const -1
      i32.add
      local.set 2
      loop  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 255
          i32.and
          local.get 1
          i32.load8_u
          local.tee 5
          i32.eq
          br_if 0 (;@3;)
          local.get 4
          local.set 3
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 2
          br_if 0 (;@3;)
          local.get 4
          local.set 3
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 5
          br_if 0 (;@3;)
          local.get 4
          local.set 3
          br 2 (;@1;)
        end
        local.get 2
        i32.const -1
        i32.add
        local.set 2
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        i32.load8_u
        local.set 4
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 4
        br_if 0 (;@2;)
      end
    end
    local.get 3
    i32.const 255
    i32.and
    local.get 1
    i32.load8_u
    i32.sub)
  (func $strerror (type 4) (param i32) (result i32)
    (local i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=1060020
      local.tee 1
      br_if 0 (;@1;)
      i32.const 1059996
      local.set 1
      i32.const 0
      i32.const 1059996
      i32.store offset=1060020
    end
    i32.const 0
    local.get 0
    local.get 0
    i32.const 76
    i32.gt_u
    select
    i32.const 1
    i32.shl
    i32.const 1055056
    i32.add
    i32.load16_u
    i32.const 1053502
    i32.add
    local.get 1
    i32.load offset=20
    call $__lctrans)
  (func $strerror_r (type 7) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        call $strerror
        local.tee 0
        call $strlen
        local.tee 3
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 68
        local.set 3
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 0
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        call $memcpy
        local.get 2
        i32.add
        i32.const 0
        i32.store8
        i32.const 68
        return
      end
      local.get 1
      local.get 0
      local.get 3
      i32.const 1
      i32.add
      call $memcpy
      drop
      i32.const 0
      local.set 3
    end
    local.get 3)
  (func $strlen (type 4) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 0
            i32.load8_u
            br_if 0 (;@4;)
            local.get 0
            local.get 0
            i32.sub
            return
          end
          local.get 0
          i32.const 1
          i32.add
          local.set 1
          loop  ;; label = @4
            local.get 1
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 1
            i32.load8_u
            local.set 2
            local.get 1
            i32.const 1
            i32.add
            local.tee 3
            local.set 1
            local.get 2
            i32.eqz
            br_if 2 (;@2;)
            br 0 (;@4;)
          end
        end
        local.get 1
        i32.const -4
        i32.add
        local.set 1
        loop  ;; label = @3
          local.get 1
          i32.const 4
          i32.add
          local.tee 1
          i32.load
          local.tee 2
          i32.const -1
          i32.xor
          local.get 2
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          local.get 2
          i32.const 255
          i32.and
          br_if 0 (;@3;)
          local.get 1
          local.get 0
          i32.sub
          return
        end
        loop  ;; label = @3
          local.get 1
          i32.load8_u offset=1
          local.set 2
          local.get 1
          i32.const 1
          i32.add
          local.tee 3
          local.set 1
          local.get 2
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 3
      i32.const -1
      i32.add
      local.set 3
    end
    local.get 3
    local.get 0
    i32.sub)
  (func $dummy.1 (type 5) (param i32 i32) (result i32)
    local.get 0)
  (func $__lctrans (type 5) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $dummy.1)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h03424ba6fb5b0ab3E (type 5) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.tee 0
    i32.const 8
    i32.add
    i32.load
    local.set 3
    local.get 0
    i32.load
    local.set 0
    local.get 2
    local.get 1
    call $_ZN4core3fmt9Formatter10debug_list17h30ba90f4f5195486E
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
        i32.const 1055212
        call $_ZN4core3fmt8builders8DebugSet5entry17h3f8073bdf6327246E
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
    end
    local.get 2
    call $_ZN4core3fmt8builders9DebugList6finish17hbd393ccae3ab8f66E
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2fcc568f556cf2c7E (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      local.get 1
      call $_ZN4core3fmt9Formatter15debug_lower_hex17h94d0dcacea6d66a5E
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        call $_ZN4core3fmt9Formatter15debug_upper_hex17h8aed1da6860e1649E
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        call $_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h12e61027c854896bE
        return
      end
      local.get 0
      local.get 1
      call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h6e8c8fb0f0fc2100E
      return
    end
    local.get 0
    local.get 1
    call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17h058fa8b23f28af11E)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5c8a4b6fb91ea17dE (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      local.get 1
      call $_ZN4core3fmt9Formatter15debug_lower_hex17h94d0dcacea6d66a5E
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        call $_ZN4core3fmt9Formatter15debug_upper_hex17h8aed1da6860e1649E
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        call $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17ha4db52968ea7b1d8E
        return
      end
      local.get 0
      local.get 1
      call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h9160270fe535dfe0E
      return
    end
    local.get 0
    local.get 1
    call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h2ab909d98eb1d84bE)
  (func $_ZN4core10intrinsics17const_eval_select17h8b6e9ee441ac2777E (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN4core3ops8function6FnOnce9call_once17h011559c7d496e127E
    unreachable)
  (func $_ZN4core3ops8function6FnOnce9call_once17h011559c7d496e127E (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN5alloc5alloc18handle_alloc_error8rt_error17h1ac6ffddac5f001dE
    unreachable)
  (func $_ZN5alloc5alloc18handle_alloc_error8rt_error17h1ac6ffddac5f001dE (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call $__rust_alloc_error_handler
    unreachable)
  (func $_ZN4core3ptr27drop_in_place$LT$$RF$u8$GT$17h3de8c8b7b68e1a45E (type 1) (param i32))
  (func $_ZN5alloc7raw_vec11finish_grow17h9519a5d857e46718E (type 11) (param i32 i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 1
                  local.set 4
                  local.get 1
                  i32.const 0
                  i32.lt_s
                  br_if 1 (;@6;)
                  local.get 3
                  i32.load offset=8
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 3
                  i32.load offset=4
                  local.tee 5
                  br_if 2 (;@5;)
                  local.get 1
                  br_if 4 (;@3;)
                  local.get 2
                  local.set 3
                  br 5 (;@2;)
                end
                local.get 0
                local.get 1
                i32.store offset=4
                i32.const 1
                local.set 4
              end
              i32.const 0
              local.set 1
              br 4 (;@1;)
            end
            local.get 3
            i32.load
            local.get 5
            local.get 2
            local.get 1
            call $__rust_realloc
            local.set 3
            br 2 (;@2;)
          end
          local.get 1
          br_if 0 (;@3;)
          local.get 2
          local.set 3
          br 1 (;@2;)
        end
        local.get 1
        local.get 2
        call $__rust_alloc
        local.set 3
      end
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        i32.store offset=4
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 2
      local.set 1
    end
    local.get 0
    local.get 4
    i32.store
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    i32.store)
  (func $_ZN5alloc5alloc18handle_alloc_error17h978fb356bc87755dE (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN4core10intrinsics17const_eval_select17h8b6e9ee441ac2777E
    unreachable)
  (func $_ZN5alloc7raw_vec17capacity_overflow17h985fea32c04a3f34E (type 0)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 28
    i32.add
    i32.const 0
    i32.store
    local.get 0
    i32.const 1055228
    i32.store offset=24
    local.get 0
    i64.const 1
    i64.store offset=12 align=4
    local.get 0
    i32.const 1055316
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 1055324
    call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
    unreachable)
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7a0c26bc187ee3fbE (type 3) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 1
      i32.const 1
      i32.add
      local.tee 3
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 4
      i32.const 1
      i32.shl
      local.tee 1
      local.get 3
      local.get 1
      local.get 3
      i32.gt_u
      select
      local.tee 1
      i32.const 8
      local.get 1
      i32.const 8
      i32.gt_u
      select
      local.set 1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          br_if 0 (;@3;)
          i32.const 0
          local.set 3
          br 1 (;@2;)
        end
        local.get 2
        local.get 4
        i32.store offset=20
        local.get 2
        local.get 0
        i32.load
        i32.store offset=16
        i32.const 1
        local.set 3
      end
      local.get 2
      local.get 3
      i32.store offset=24
      local.get 2
      local.get 1
      i32.const 1
      local.get 2
      i32.const 16
      i32.add
      call $_ZN5alloc7raw_vec11finish_grow17h9519a5d857e46718E
      block  ;; label = @2
        local.get 2
        i32.load
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 8
        i32.add
        i32.load
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=4
        local.get 0
        call $_ZN5alloc5alloc18handle_alloc_error17h978fb356bc87755dE
        unreachable
      end
      local.get 2
      i32.load offset=4
      local.set 3
      local.get 0
      i32.const 4
      i32.add
      local.get 1
      i32.store
      local.get 0
      local.get 3
      i32.store
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    call $_ZN5alloc7raw_vec17capacity_overflow17h985fea32c04a3f34E
    unreachable)
  (func $__rg_oom (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call $rust_oom
    unreachable)
  (func $_ZN72_$LT$$RF$str$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17hef2276e19d27c613E (type 6) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 1
          i32.add
          local.tee 4
          local.get 2
          i32.lt_u
          br_if 0 (;@3;)
          local.get 4
          i32.const -1
          i32.le_s
          br_if 1 (;@2;)
          local.get 4
          i32.const 1
          call $__rust_alloc
          local.tee 5
          i32.eqz
          br_if 2 (;@1;)
          local.get 5
          local.get 1
          local.get 2
          call $memcpy
          local.set 6
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 8
              i32.lt_u
              br_if 0 (;@5;)
              local.get 3
              i32.const 8
              i32.add
              i32.const 0
              local.get 1
              local.get 2
              call $_ZN4core5slice6memchr19memchr_general_case17hee7da5ec908112edE
              local.get 3
              i32.load offset=12
              local.set 7
              local.get 3
              i32.load offset=8
              local.set 5
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 2
              br_if 0 (;@5;)
              i32.const 0
              local.set 7
              i32.const 0
              local.set 5
              br 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.load8_u
                br_if 0 (;@6;)
                i32.const 0
                local.set 8
                br 1 (;@5;)
              end
              i32.const 1
              local.set 8
              i32.const 0
              local.set 5
              block  ;; label = @6
                local.get 2
                i32.const 1
                i32.ne
                br_if 0 (;@6;)
                local.get 2
                local.set 7
                br 2 (;@4;)
              end
              local.get 1
              i32.load8_u offset=1
              i32.eqz
              br_if 0 (;@5;)
              i32.const 2
              local.set 8
              block  ;; label = @6
                local.get 2
                i32.const 2
                i32.ne
                br_if 0 (;@6;)
                local.get 2
                local.set 7
                br 2 (;@4;)
              end
              local.get 1
              i32.load8_u offset=2
              i32.eqz
              br_if 0 (;@5;)
              i32.const 3
              local.set 8
              block  ;; label = @6
                local.get 2
                i32.const 3
                i32.ne
                br_if 0 (;@6;)
                local.get 2
                local.set 7
                br 2 (;@4;)
              end
              local.get 1
              i32.load8_u offset=3
              i32.eqz
              br_if 0 (;@5;)
              i32.const 4
              local.set 8
              block  ;; label = @6
                local.get 2
                i32.const 4
                i32.ne
                br_if 0 (;@6;)
                local.get 2
                local.set 7
                br 2 (;@4;)
              end
              local.get 1
              i32.load8_u offset=4
              i32.eqz
              br_if 0 (;@5;)
              i32.const 5
              local.set 8
              block  ;; label = @6
                local.get 2
                i32.const 5
                i32.ne
                br_if 0 (;@6;)
                local.get 2
                local.set 7
                br 2 (;@4;)
              end
              local.get 1
              i32.load8_u offset=5
              i32.eqz
              br_if 0 (;@5;)
              i32.const 6
              local.set 8
              block  ;; label = @6
                local.get 2
                i32.const 6
                i32.ne
                br_if 0 (;@6;)
                local.get 2
                local.set 7
                br 2 (;@4;)
              end
              local.get 2
              local.set 7
              local.get 1
              i32.load8_u offset=6
              br_if 1 (;@4;)
            end
            i32.const 1
            local.set 5
            local.get 8
            local.set 7
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              br_if 0 (;@5;)
              local.get 3
              local.get 2
              i32.store offset=24
              local.get 3
              local.get 4
              i32.store offset=20
              local.get 3
              local.get 6
              i32.store offset=16
              local.get 3
              local.get 3
              i32.const 16
              i32.add
              call $_ZN5alloc3ffi5c_str7CString19_from_vec_unchecked17he509ca228aa0f306E
              local.get 0
              local.get 3
              i64.load
              i64.store offset=4 align=4
              i32.const 0
              local.set 2
              br 1 (;@4;)
            end
            local.get 0
            i32.const 16
            i32.add
            local.get 2
            i32.store
            local.get 0
            i32.const 12
            i32.add
            local.get 4
            i32.store
            local.get 0
            i32.const 8
            i32.add
            local.get 6
            i32.store
            local.get 0
            local.get 7
            i32.store offset=4
            i32.const 1
            local.set 2
          end
          local.get 0
          local.get 2
          i32.store
          local.get 3
          i32.const 32
          i32.add
          global.set $__stack_pointer
          return
        end
        i32.const 1055228
        i32.const 43
        i32.const 1055372
        call $_ZN4core9panicking5panic17h6405394cda32a2f1E
        unreachable
      end
      call $_ZN5alloc7raw_vec17capacity_overflow17h985fea32c04a3f34E
      unreachable
    end
    local.get 4
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h978fb356bc87755dE
    unreachable)
  (func $_ZN5alloc3ffi5c_str7CString19_from_vec_unchecked17he509ca228aa0f306E (type 3) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 4
                i32.add
                i32.load
                local.tee 3
                local.get 1
                i32.load offset=8
                local.tee 4
                i32.ne
                br_if 0 (;@6;)
                local.get 4
                i32.const 1
                i32.add
                local.tee 3
                local.get 4
                i32.lt_u
                br_if 4 (;@2;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 4
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 2
                  local.get 4
                  i32.store offset=20
                  local.get 2
                  local.get 1
                  i32.load
                  i32.store offset=16
                  i32.const 1
                  local.set 5
                end
                local.get 2
                local.get 5
                i32.store offset=24
                local.get 2
                local.get 3
                i32.const 1
                local.get 2
                i32.const 16
                i32.add
                call $_ZN5alloc7raw_vec11finish_grow17h9519a5d857e46718E
                local.get 2
                i32.load
                br_if 1 (;@5;)
                local.get 2
                i32.load offset=4
                local.set 5
                local.get 1
                i32.const 4
                i32.add
                local.get 3
                i32.store
                local.get 1
                local.get 5
                i32.store
              end
              block  ;; label = @6
                local.get 4
                local.get 3
                i32.ne
                br_if 0 (;@6;)
                local.get 1
                local.get 4
                call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7a0c26bc187ee3fbE
                local.get 1
                i32.const 4
                i32.add
                i32.load
                local.set 3
                local.get 1
                i32.load offset=8
                local.set 4
              end
              local.get 1
              local.get 4
              i32.const 1
              i32.add
              local.tee 5
              i32.store offset=8
              local.get 1
              i32.load
              local.tee 1
              local.get 4
              i32.add
              i32.const 0
              i32.store8
              local.get 3
              local.get 5
              i32.gt_u
              br_if 1 (;@4;)
              local.get 1
              local.set 4
              br 2 (;@3;)
            end
            local.get 2
            i32.const 8
            i32.add
            i32.load
            local.tee 1
            i32.eqz
            br_if 2 (;@2;)
            local.get 2
            i32.load offset=4
            local.get 1
            call $_ZN5alloc5alloc18handle_alloc_error17h978fb356bc87755dE
            unreachable
          end
          block  ;; label = @4
            local.get 5
            br_if 0 (;@4;)
            i32.const 1
            local.set 4
            local.get 1
            local.get 3
            i32.const 1
            call $__rust_dealloc
            br 1 (;@3;)
          end
          local.get 1
          local.get 3
          i32.const 1
          local.get 5
          call $__rust_realloc
          local.tee 4
          i32.eqz
          br_if 2 (;@1;)
        end
        local.get 0
        local.get 5
        i32.store offset=4
        local.get 0
        local.get 4
        i32.store
        local.get 2
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      call $_ZN5alloc7raw_vec17capacity_overflow17h985fea32c04a3f34E
      unreachable
    end
    local.get 5
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h978fb356bc87755dE
    unreachable)
  (func $_ZN64_$LT$alloc..ffi..c_str..NulError$u20$as$u20$core..fmt..Debug$GT$3fmt17h9a89a8ad3ecea7a5E (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.const 1055388
    i32.const 8
    call $_ZN4core3fmt9Formatter11debug_tuple17h7aa349266244812cE
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 2
    i32.const 12
    i32.add
    i32.const 1055396
    call $_ZN4core3fmt8builders10DebugTuple5field17he06b0dd27394f923E
    drop
    local.get 2
    local.get 0
    i32.const 4
    i32.add
    i32.store offset=12
    local.get 2
    local.get 2
    i32.const 12
    i32.add
    i32.const 1055412
    call $_ZN4core3fmt8builders10DebugTuple5field17he06b0dd27394f923E
    drop
    local.get 2
    call $_ZN4core3fmt8builders10DebugTuple6finish17h6e906ebc6223618aE
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3ops8function6FnOnce9call_once17h150734db55c86cf1E (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN4core5slice5index27slice_end_index_len_fail_rt17h423c95e29d2c1d75E
    unreachable)
  (func $_ZN4core5slice5index27slice_end_index_len_fail_rt17h423c95e29d2c1d75E (type 3) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
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
    i32.const 11
    i32.store
    local.get 2
    i64.const 2
    i64.store offset=12 align=4
    local.get 2
    i32.const 1056256
    i32.store offset=8
    local.get 2
    i32.const 11
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
    i32.const 1056272
    call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
    unreachable)
  (func $_ZN4core3ops8function6FnOnce9call_once17h6c6b91e98bce8957E (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN4core5slice5index25slice_index_order_fail_rt17hd695d441982069c4E
    unreachable)
  (func $_ZN4core5slice5index25slice_index_order_fail_rt17hd695d441982069c4E (type 3) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
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
    i32.const 11
    i32.store
    local.get 2
    i64.const 2
    i64.store offset=12 align=4
    local.get 2
    i32.const 1056324
    i32.store offset=8
    local.get 2
    i32.const 11
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
    i32.const 1056340
    call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
    unreachable)
  (func $_ZN4core3ops8function6FnOnce9call_once17h748025d745a2447bE (type 11) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN4core3str19slice_error_fail_rt17h628d9f951977447aE
    unreachable)
  (func $_ZN4core3str19slice_error_fail_rt17h628d9f951977447aE (type 11) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 3
    i32.store offset=12
    local.get 4
    local.get 2
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.const 257
                    i32.lt_u
                    br_if 0 (;@8;)
                    i32.const 256
                    local.set 5
                    block  ;; label = @9
                      local.get 0
                      i32.load8_s offset=256
                      i32.const -65
                      i32.gt_s
                      br_if 0 (;@9;)
                      i32.const 255
                      local.set 5
                      local.get 0
                      i32.load8_s offset=255
                      i32.const -65
                      i32.gt_s
                      br_if 0 (;@9;)
                      i32.const 254
                      local.set 5
                      local.get 0
                      i32.load8_s offset=254
                      i32.const -65
                      i32.gt_s
                      br_if 0 (;@9;)
                      i32.const 253
                      local.set 5
                    end
                    local.get 5
                    local.get 1
                    i32.lt_u
                    br_if 1 (;@7;)
                    local.get 5
                    local.get 1
                    i32.ne
                    br_if 3 (;@5;)
                  end
                  local.get 4
                  local.get 1
                  i32.store offset=20
                  local.get 4
                  local.get 0
                  i32.store offset=16
                  i32.const 0
                  local.set 5
                  i32.const 1055428
                  local.set 6
                  br 1 (;@6;)
                end
                local.get 4
                local.get 5
                i32.store offset=20
                local.get 4
                local.get 0
                i32.store offset=16
                i32.const 5
                local.set 5
                i32.const 1056639
                local.set 6
              end
              local.get 4
              local.get 5
              i32.store offset=28
              local.get 4
              local.get 6
              i32.store offset=24
              local.get 2
              local.get 1
              i32.gt_u
              local.tee 5
              br_if 1 (;@4;)
              local.get 3
              local.get 1
              i32.gt_u
              br_if 1 (;@4;)
              block  ;; label = @6
                local.get 2
                local.get 3
                i32.gt_u
                br_if 0 (;@6;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.eqz
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 2
                      local.get 1
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 1
                      local.get 2
                      i32.eq
                      br_if 1 (;@8;)
                      br 2 (;@7;)
                    end
                    local.get 0
                    local.get 2
                    i32.add
                    i32.load8_s
                    i32.const -64
                    i32.lt_s
                    br_if 1 (;@7;)
                  end
                  local.get 3
                  local.set 2
                end
                local.get 4
                local.get 2
                i32.store offset=32
                local.get 1
                local.set 3
                block  ;; label = @7
                  local.get 2
                  local.get 1
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 1
                  i32.add
                  local.tee 5
                  i32.const 0
                  local.get 2
                  i32.const -3
                  i32.add
                  local.tee 3
                  local.get 3
                  local.get 2
                  i32.gt_u
                  select
                  local.tee 3
                  i32.lt_u
                  br_if 4 (;@3;)
                  block  ;; label = @8
                    local.get 3
                    local.get 5
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 0
                    local.get 5
                    i32.add
                    local.get 0
                    local.get 3
                    i32.add
                    local.tee 7
                    i32.sub
                    local.set 5
                    block  ;; label = @9
                      local.get 0
                      local.get 2
                      i32.add
                      local.tee 8
                      i32.load8_s
                      i32.const -65
                      i32.le_s
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const -1
                      i32.add
                      local.set 6
                      br 1 (;@8;)
                    end
                    local.get 3
                    local.get 2
                    i32.eq
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 8
                      i32.const -1
                      i32.add
                      local.tee 2
                      i32.load8_s
                      i32.const -65
                      i32.le_s
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const -2
                      i32.add
                      local.set 6
                      br 1 (;@8;)
                    end
                    local.get 7
                    local.get 2
                    i32.eq
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 8
                      i32.const -2
                      i32.add
                      local.tee 2
                      i32.load8_s
                      i32.const -65
                      i32.le_s
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const -3
                      i32.add
                      local.set 6
                      br 1 (;@8;)
                    end
                    local.get 7
                    local.get 2
                    i32.eq
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 8
                      i32.const -3
                      i32.add
                      local.tee 2
                      i32.load8_s
                      i32.const -65
                      i32.le_s
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const -4
                      i32.add
                      local.set 6
                      br 1 (;@8;)
                    end
                    local.get 7
                    local.get 2
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 5
                    i32.const -5
                    i32.add
                    local.set 6
                  end
                  local.get 6
                  local.get 3
                  i32.add
                  local.set 3
                end
                block  ;; label = @7
                  local.get 3
                  i32.eqz
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 3
                    local.get 1
                    i32.lt_u
                    br_if 0 (;@8;)
                    local.get 3
                    local.get 1
                    i32.eq
                    br_if 1 (;@7;)
                    br 7 (;@1;)
                  end
                  local.get 0
                  local.get 3
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.le_s
                  br_if 6 (;@1;)
                end
                local.get 3
                local.get 1
                i32.eq
                br_if 4 (;@2;)
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        local.get 3
                        i32.add
                        local.tee 2
                        i32.load8_s
                        local.tee 1
                        i32.const -1
                        i32.gt_s
                        br_if 0 (;@10;)
                        local.get 2
                        i32.load8_u offset=1
                        i32.const 63
                        i32.and
                        local.set 0
                        local.get 1
                        i32.const 31
                        i32.and
                        local.set 5
                        local.get 1
                        i32.const -33
                        i32.gt_u
                        br_if 1 (;@9;)
                        local.get 5
                        i32.const 6
                        i32.shl
                        local.get 0
                        i32.or
                        local.set 2
                        br 2 (;@8;)
                      end
                      local.get 4
                      local.get 1
                      i32.const 255
                      i32.and
                      i32.store offset=36
                      i32.const 1
                      local.set 1
                      br 2 (;@7;)
                    end
                    local.get 0
                    i32.const 6
                    i32.shl
                    local.get 2
                    i32.load8_u offset=2
                    i32.const 63
                    i32.and
                    i32.or
                    local.set 0
                    block  ;; label = @9
                      local.get 1
                      i32.const -16
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 5
                      i32.const 12
                      i32.shl
                      i32.or
                      local.set 2
                      br 1 (;@8;)
                    end
                    local.get 0
                    i32.const 6
                    i32.shl
                    local.get 2
                    i32.load8_u offset=3
                    i32.const 63
                    i32.and
                    i32.or
                    local.get 5
                    i32.const 18
                    i32.shl
                    i32.const 1835008
                    i32.and
                    i32.or
                    local.tee 2
                    i32.const 1114112
                    i32.eq
                    br_if 6 (;@2;)
                  end
                  local.get 4
                  local.get 2
                  i32.store offset=36
                  i32.const 1
                  local.set 1
                  local.get 2
                  i32.const 128
                  i32.lt_u
                  br_if 0 (;@7;)
                  i32.const 2
                  local.set 1
                  local.get 2
                  i32.const 2048
                  i32.lt_u
                  br_if 0 (;@7;)
                  i32.const 3
                  i32.const 4
                  local.get 2
                  i32.const 65536
                  i32.lt_u
                  select
                  local.set 1
                end
                local.get 4
                local.get 3
                i32.store offset=40
                local.get 4
                local.get 1
                local.get 3
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
                i32.const 78
                i32.store
                local.get 4
                i32.const 100
                i32.add
                i32.const 78
                i32.store
                local.get 4
                i32.const 72
                i32.add
                i32.const 20
                i32.add
                i32.const 79
                i32.store
                local.get 4
                i32.const 84
                i32.add
                i32.const 80
                i32.store
                local.get 4
                i64.const 5
                i64.store offset=52 align=4
                local.get 4
                i32.const 1056872
                i32.store offset=48
                local.get 4
                i32.const 11
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
                i32.const 40
                i32.add
                i32.store offset=88
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
                i32.const 1056912
                call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
                unreachable
              end
              local.get 4
              i32.const 100
              i32.add
              i32.const 78
              i32.store
              local.get 4
              i32.const 72
              i32.add
              i32.const 20
              i32.add
              i32.const 78
              i32.store
              local.get 4
              i32.const 84
              i32.add
              i32.const 11
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
              i32.const 1056756
              i32.store offset=48
              local.get 4
              i32.const 11
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
              i32.const 1056788
              call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
              unreachable
            end
            local.get 0
            local.get 1
            i32.const 0
            local.get 5
            local.get 4
            call $_ZN4core3str16slice_error_fail17h2ed7ecfe0eda4c90E
            unreachable
          end
          local.get 4
          local.get 2
          local.get 3
          local.get 5
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
          i32.const 78
          i32.store
          local.get 4
          i32.const 84
          i32.add
          i32.const 78
          i32.store
          local.get 4
          i64.const 3
          i64.store offset=52 align=4
          local.get 4
          i32.const 1056680
          i32.store offset=48
          local.get 4
          i32.const 11
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
          i32.const 1056704
          call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
          unreachable
        end
        local.get 3
        local.get 5
        local.get 4
        call $_ZN4core5slice5index22slice_index_order_fail17h14510493d0b0a76fE
        unreachable
      end
      i32.const 1055520
      i32.const 43
      i32.const 1056804
      call $_ZN4core9panicking5panic17h6405394cda32a2f1E
      unreachable
    end
    local.get 0
    local.get 1
    local.get 3
    local.get 1
    local.get 4
    call $_ZN4core3str16slice_error_fail17h2ed7ecfe0eda4c90E
    unreachable)
  (func $_ZN4core3ops8function6FnOnce9call_once17he53df7ea8b7a3903E (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.load
    drop
    loop (result i32)  ;; label = @1
      br 0 (;@1;)
    end)
  (func $_ZN4core3ops8function6FnOnce9call_once17heec9d76810ad3b3dE (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN4core5slice5index29slice_start_index_len_fail_rt17hababafb733a83e71E
    unreachable)
  (func $_ZN4core5slice5index29slice_start_index_len_fail_rt17hababafb733a83e71E (type 3) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
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
    i32.const 11
    i32.store
    local.get 2
    i64.const 2
    i64.store offset=12 align=4
    local.get 2
    i32.const 1056176
    i32.store offset=8
    local.get 2
    i32.const 11
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
    i32.const 1056224
    call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
    unreachable)
  (func $_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17hef86815ca9672c46E (type 1) (param i32))
  (func $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E (type 3) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 1
    i32.store8 offset=24
    local.get 2
    local.get 1
    i32.store offset=20
    local.get 2
    local.get 0
    i32.store offset=16
    local.get 2
    i32.const 1055588
    i32.store offset=12
    local.get 2
    i32.const 1055428
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    call $rust_begin_unwind
    unreachable)
  (func $_ZN4core9panicking18panic_bounds_check17hda898183ca0e8f08E (type 6) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 44
    i32.add
    i32.const 11
    i32.store
    local.get 3
    i64.const 2
    i64.store offset=12 align=4
    local.get 3
    i32.const 1055504
    i32.store offset=8
    local.get 3
    i32.const 11
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
    local.get 2
    call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
    unreachable)
  (func $_ZN4core5slice5index26slice_start_index_len_fail17h4a9053b9acbf3e79E (type 6) (param i32 i32 i32)
    local.get 0
    local.get 1
    call $_ZN4core10intrinsics17const_eval_select17h53e3711853ca2f4bE
    unreachable)
  (func $_ZN4core5slice5index24slice_end_index_len_fail17hf80e6eb70f53b009E (type 6) (param i32 i32 i32)
    local.get 0
    local.get 1
    call $_ZN4core10intrinsics17const_eval_select17h03cc7e352ac6a32fE
    unreachable)
  (func $_ZN4core3fmt9Formatter3pad17hdffb817b8a6961faE (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=16
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=8
                local.tee 4
                i32.const 1
                i32.eq
                br_if 0 (;@6;)
                local.get 3
                i32.const 1
                i32.ne
                br_if 1 (;@5;)
              end
              local.get 3
              i32.const 1
              i32.ne
              br_if 3 (;@2;)
              local.get 1
              local.get 2
              i32.add
              local.set 5
              local.get 0
              i32.const 20
              i32.add
              i32.load
              local.tee 6
              br_if 1 (;@4;)
              i32.const 0
              local.set 7
              local.get 1
              local.set 8
              br 2 (;@3;)
            end
            local.get 0
            i32.load offset=24
            local.get 1
            local.get 2
            local.get 0
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type 7)
            local.set 3
            br 3 (;@1;)
          end
          i32.const 0
          local.set 7
          local.get 1
          local.set 8
          loop  ;; label = @4
            local.get 8
            local.tee 3
            local.get 5
            i32.eq
            br_if 2 (;@2;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load8_s
                local.tee 8
                i32.const -1
                i32.le_s
                br_if 0 (;@6;)
                local.get 3
                i32.const 1
                i32.add
                local.set 8
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 8
                i32.const -32
                i32.ge_u
                br_if 0 (;@6;)
                local.get 3
                i32.const 2
                i32.add
                local.set 8
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 8
                i32.const -16
                i32.ge_u
                br_if 0 (;@6;)
                local.get 3
                i32.const 3
                i32.add
                local.set 8
                br 1 (;@5;)
              end
              local.get 3
              i32.load8_u offset=2
              i32.const 63
              i32.and
              i32.const 6
              i32.shl
              local.get 3
              i32.load8_u offset=1
              i32.const 63
              i32.and
              i32.const 12
              i32.shl
              i32.or
              local.get 3
              i32.load8_u offset=3
              i32.const 63
              i32.and
              i32.or
              local.get 8
              i32.const 255
              i32.and
              i32.const 18
              i32.shl
              i32.const 1835008
              i32.and
              i32.or
              i32.const 1114112
              i32.eq
              br_if 3 (;@2;)
              local.get 3
              i32.const 4
              i32.add
              local.set 8
            end
            local.get 7
            local.get 3
            i32.sub
            local.get 8
            i32.add
            local.set 7
            local.get 6
            i32.const -1
            i32.add
            local.tee 6
            br_if 0 (;@4;)
          end
        end
        local.get 8
        local.get 5
        i32.eq
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 8
          i32.load8_s
          local.tee 3
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
          local.get 3
          i32.const -32
          i32.lt_u
          br_if 0 (;@3;)
          local.get 3
          i32.const -16
          i32.lt_u
          br_if 0 (;@3;)
          local.get 8
          i32.load8_u offset=2
          i32.const 63
          i32.and
          i32.const 6
          i32.shl
          local.get 8
          i32.load8_u offset=1
          i32.const 63
          i32.and
          i32.const 12
          i32.shl
          i32.or
          local.get 8
          i32.load8_u offset=3
          i32.const 63
          i32.and
          i32.or
          local.get 3
          i32.const 255
          i32.and
          i32.const 18
          i32.shl
          i32.const 1835008
          i32.and
          i32.or
          i32.const 1114112
          i32.eq
          br_if 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              br_if 0 (;@5;)
              i32.const 0
              local.set 8
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 7
              local.get 2
              i32.lt_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 3
              local.get 2
              local.set 8
              local.get 7
              local.get 2
              i32.eq
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            i32.const 0
            local.set 3
            local.get 7
            local.set 8
            local.get 1
            local.get 7
            i32.add
            i32.load8_s
            i32.const -64
            i32.lt_s
            br_if 1 (;@3;)
          end
          local.get 8
          local.set 7
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
      block  ;; label = @2
        local.get 4
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
        call_indirect (type 7)
        return
      end
      local.get 0
      i32.const 12
      i32.add
      i32.load
      local.set 5
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 16
          i32.lt_u
          br_if 0 (;@3;)
          local.get 1
          local.get 2
          call $_ZN4core3str5count14do_count_chars17h0e4ced0136b32880E
          local.set 8
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 2
          br_if 0 (;@3;)
          i32.const 0
          local.set 8
          br 1 (;@2;)
        end
        local.get 2
        i32.const 3
        i32.and
        local.set 7
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const -1
            i32.add
            i32.const 3
            i32.ge_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 8
            local.get 1
            local.set 3
            br 1 (;@3;)
          end
          local.get 2
          i32.const -4
          i32.and
          local.set 6
          i32.const 0
          local.set 8
          local.get 1
          local.set 3
          loop  ;; label = @4
            local.get 8
            local.get 3
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 3
            i32.const 1
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 3
            i32.const 2
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 3
            i32.const 3
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 8
            local.get 3
            i32.const 4
            i32.add
            local.set 3
            local.get 6
            i32.const -4
            i32.add
            local.tee 6
            br_if 0 (;@4;)
          end
        end
        local.get 7
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 8
          local.get 3
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 8
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 7
          i32.const -1
          i32.add
          local.tee 7
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 5
        local.get 8
        i32.le_u
        br_if 0 (;@2;)
        i32.const 0
        local.set 3
        local.get 5
        local.get 8
        i32.sub
        local.tee 7
        local.set 6
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              local.get 0
              i32.load8_u offset=32
              local.tee 8
              local.get 8
              i32.const 3
              i32.eq
              select
              i32.const 3
              i32.and
              br_table 2 (;@3;) 0 (;@5;) 1 (;@4;) 2 (;@3;)
            end
            i32.const 0
            local.set 6
            local.get 7
            local.set 3
            br 1 (;@3;)
          end
          local.get 7
          i32.const 1
          i32.shr_u
          local.set 3
          local.get 7
          i32.const 1
          i32.add
          i32.const 1
          i32.shr_u
          local.set 6
        end
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 0
        i32.const 28
        i32.add
        i32.load
        local.set 7
        local.get 0
        i32.load offset=4
        local.set 8
        local.get 0
        i32.load offset=24
        local.set 0
        block  ;; label = @3
          loop  ;; label = @4
            local.get 3
            i32.const -1
            i32.add
            local.tee 3
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            local.get 8
            local.get 7
            i32.load offset=16
            call_indirect (type 5)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        i32.const 1
        local.set 3
        local.get 8
        i32.const 1114112
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        local.get 2
        local.get 7
        i32.load offset=12
        call_indirect (type 7)
        br_if 1 (;@1;)
        i32.const 0
        local.set 3
        loop  ;; label = @3
          block  ;; label = @4
            local.get 6
            local.get 3
            i32.ne
            br_if 0 (;@4;)
            local.get 6
            local.get 6
            i32.lt_u
            return
          end
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 0
          local.get 8
          local.get 7
          i32.load offset=16
          call_indirect (type 5)
          i32.eqz
          br_if 0 (;@3;)
        end
        local.get 3
        i32.const -1
        i32.add
        local.get 6
        i32.lt_u
        return
      end
      local.get 0
      i32.load offset=24
      local.get 1
      local.get 2
      local.get 0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 7)
      return
    end
    local.get 3)
  (func $_ZN4core9panicking5panic17h6405394cda32a2f1E (type 6) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i32.const 1055428
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
    call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
    unreachable)
  (func $_ZN4core5slice5index22slice_index_order_fail17h14510493d0b0a76fE (type 6) (param i32 i32 i32)
    local.get 0
    local.get 1
    call $_ZN4core10intrinsics17const_eval_select17hbbd9e1d08d4fb708E
    unreachable)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17ha4db52968ea7b1d8E (type 5) (param i32 i32) (result i32)
    local.get 0
    i64.load32_u
    i32.const 1
    local.get 1
    call $_ZN4core3fmt3num3imp7fmt_u6417h7a9b2bd468910652E)
  (func $_ZN4core10intrinsics17const_eval_select17h03cc7e352ac6a32fE (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN4core3ops8function6FnOnce9call_once17h150734db55c86cf1E
    unreachable)
  (func $_ZN4core10intrinsics17const_eval_select17h53e3711853ca2f4bE (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN4core3ops8function6FnOnce9call_once17heec9d76810ad3b3dE
    unreachable)
  (func $_ZN4core10intrinsics17const_eval_select17hbbd9e1d08d4fb708E (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN4core3ops8function6FnOnce9call_once17h6c6b91e98bce8957E
    unreachable)
  (func $_ZN4core10intrinsics17const_eval_select17hdf37b06945f80931E (type 1) (param i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call $_ZN4core3ops8function6FnOnce9call_once17h748025d745a2447bE
    unreachable)
  (func $_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h8571265841c07f2bE (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 2
    global.set $__stack_pointer
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
              i64.load32_u
              i32.const 1
              local.get 1
              call $_ZN4core3fmt3num3imp7fmt_u6417h7a9b2bd468910652E
              local.set 0
              br 4 (;@1;)
            end
            local.get 0
            i32.load
            local.set 0
            i32.const 0
            local.set 3
            loop  ;; label = @5
              local.get 2
              local.get 3
              i32.add
              i32.const 127
              i32.add
              i32.const 48
              i32.const 87
              local.get 0
              i32.const 15
              i32.and
              local.tee 4
              i32.const 10
              i32.lt_u
              select
              local.get 4
              i32.add
              i32.store8
              local.get 3
              i32.const -1
              i32.add
              local.set 3
              local.get 0
              i32.const 15
              i32.gt_u
              local.set 4
              local.get 0
              i32.const 4
              i32.shr_u
              local.set 0
              local.get 4
              br_if 0 (;@5;)
            end
            local.get 3
            i32.const 128
            i32.add
            local.tee 0
            i32.const 129
            i32.ge_u
            br_if 1 (;@3;)
            local.get 1
            i32.const 1
            i32.const 1055885
            i32.const 2
            local.get 2
            local.get 3
            i32.add
            i32.const 128
            i32.add
            i32.const 0
            local.get 3
            i32.sub
            call $_ZN4core3fmt9Formatter12pad_integral17h4317e5bcf4d85e19E
            local.set 0
            br 3 (;@1;)
          end
          local.get 0
          i32.load
          local.set 0
          i32.const 0
          local.set 3
          loop  ;; label = @4
            local.get 2
            local.get 3
            i32.add
            i32.const 127
            i32.add
            i32.const 48
            i32.const 55
            local.get 0
            i32.const 15
            i32.and
            local.tee 4
            i32.const 10
            i32.lt_u
            select
            local.get 4
            i32.add
            i32.store8
            local.get 3
            i32.const -1
            i32.add
            local.set 3
            local.get 0
            i32.const 15
            i32.gt_u
            local.set 4
            local.get 0
            i32.const 4
            i32.shr_u
            local.set 0
            local.get 4
            br_if 0 (;@4;)
          end
          local.get 3
          i32.const 128
          i32.add
          local.tee 0
          i32.const 129
          i32.ge_u
          br_if 1 (;@2;)
          local.get 1
          i32.const 1
          i32.const 1055885
          i32.const 2
          local.get 2
          local.get 3
          i32.add
          i32.const 128
          i32.add
          i32.const 0
          local.get 3
          i32.sub
          call $_ZN4core3fmt9Formatter12pad_integral17h4317e5bcf4d85e19E
          local.set 0
          br 2 (;@1;)
        end
        local.get 0
        i32.const 128
        local.get 0
        call $_ZN4core5slice5index26slice_start_index_len_fail17h4a9053b9acbf3e79E
        unreachable
      end
      local.get 0
      i32.const 128
      local.get 0
      call $_ZN4core5slice5index26slice_start_index_len_fail17h4a9053b9acbf3e79E
      unreachable
    end
    local.get 2
    i32.const 128
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt5write17h2ef748b44faf8d91E (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
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
            br_if 0 (;@4;)
            local.get 2
            i32.const 20
            i32.add
            i32.load
            local.tee 6
            i32.eqz
            br_if 1 (;@3;)
            local.get 2
            i32.load
            local.set 1
            local.get 2
            i32.load offset=16
            local.set 0
            local.get 6
            i32.const -1
            i32.add
            i32.const 536870911
            i32.and
            i32.const 1
            i32.add
            local.tee 4
            local.set 6
            loop  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 4
                i32.add
                i32.load
                local.tee 7
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                i32.load offset=32
                local.get 1
                i32.load
                local.get 7
                local.get 3
                i32.load offset=36
                i32.load offset=12
                call_indirect (type 7)
                br_if 4 (;@2;)
              end
              local.get 0
              i32.load
              local.get 3
              i32.const 8
              i32.add
              local.get 0
              i32.const 4
              i32.add
              i32.load
              call_indirect (type 5)
              br_if 3 (;@2;)
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              local.get 1
              i32.const 8
              i32.add
              local.set 1
              local.get 6
              i32.const -1
              i32.add
              local.tee 6
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          local.get 2
          i32.const 12
          i32.add
          i32.load
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 5
          i32.shl
          local.set 8
          local.get 0
          i32.const -1
          i32.add
          i32.const 134217727
          i32.and
          i32.const 1
          i32.add
          local.set 4
          local.get 2
          i32.load
          local.set 1
          i32.const 0
          local.set 6
          loop  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 4
              i32.add
              i32.load
              local.tee 0
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=32
              local.get 1
              i32.load
              local.get 0
              local.get 3
              i32.load offset=36
              i32.load offset=12
              call_indirect (type 7)
              br_if 3 (;@2;)
            end
            local.get 3
            local.get 5
            local.get 6
            i32.add
            local.tee 0
            i32.const 28
            i32.add
            i32.load8_u
            i32.store8 offset=40
            local.get 3
            local.get 0
            i32.const 4
            i32.add
            i64.load align=4
            i64.const 32
            i64.rotl
            i64.store offset=8
            local.get 0
            i32.const 24
            i32.add
            i32.load
            local.set 9
            local.get 2
            i32.load offset=16
            local.set 10
            i32.const 0
            local.set 11
            i32.const 0
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const 20
                  i32.add
                  i32.load
                  br_table 1 (;@6;) 0 (;@7;) 2 (;@5;) 1 (;@6;)
                end
                local.get 9
                i32.const 3
                i32.shl
                local.set 12
                i32.const 0
                local.set 7
                local.get 10
                local.get 12
                i32.add
                local.tee 12
                i32.load offset=4
                i32.const 81
                i32.ne
                br_if 1 (;@5;)
                local.get 12
                i32.load
                i32.load
                local.set 9
              end
              i32.const 1
              local.set 7
            end
            local.get 3
            local.get 9
            i32.store offset=20
            local.get 3
            local.get 7
            i32.store offset=16
            local.get 0
            i32.const 16
            i32.add
            i32.load
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const 12
                  i32.add
                  i32.load
                  br_table 1 (;@6;) 0 (;@7;) 2 (;@5;) 1 (;@6;)
                end
                local.get 7
                i32.const 3
                i32.shl
                local.set 9
                local.get 10
                local.get 9
                i32.add
                local.tee 9
                i32.load offset=4
                i32.const 81
                i32.ne
                br_if 1 (;@5;)
                local.get 9
                i32.load
                i32.load
                local.set 7
              end
              i32.const 1
              local.set 11
            end
            local.get 3
            local.get 7
            i32.store offset=28
            local.get 3
            local.get 11
            i32.store offset=24
            local.get 10
            local.get 0
            i32.load
            i32.const 3
            i32.shl
            i32.add
            local.tee 0
            i32.load
            local.get 3
            i32.const 8
            i32.add
            local.get 0
            i32.load offset=4
            call_indirect (type 5)
            br_if 2 (;@2;)
            local.get 1
            i32.const 8
            i32.add
            local.set 1
            local.get 8
            local.get 6
            i32.const 32
            i32.add
            local.tee 6
            i32.ne
            br_if 0 (;@4;)
          end
        end
        i32.const 0
        local.set 0
        local.get 4
        local.get 2
        i32.load offset=4
        i32.lt_u
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=32
        local.get 2
        i32.load
        local.get 4
        i32.const 3
        i32.shl
        i32.add
        i32.const 0
        local.get 1
        select
        local.tee 1
        i32.load
        local.get 1
        i32.load offset=4
        local.get 3
        i32.load offset=36
        i32.load offset=12
        call_indirect (type 7)
        i32.eqz
        br_if 1 (;@1;)
      end
      i32.const 1
      local.set 0
    end
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hd0cd50f8cd91e0c9E (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 1
    local.set 3
    block  ;; label = @1
      local.get 0
      local.get 1
      call $_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h8571265841c07f2bE
      br_if 0 (;@1;)
      local.get 1
      i32.const 28
      i32.add
      i32.load
      local.set 4
      local.get 1
      i32.load offset=24
      local.set 5
      local.get 2
      i32.const 28
      i32.add
      i32.const 0
      i32.store
      local.get 2
      i32.const 1055428
      i32.store offset=24
      local.get 2
      i64.const 1
      i64.store offset=12 align=4
      local.get 2
      i32.const 1055432
      i32.store offset=8
      local.get 5
      local.get 4
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h2ef748b44faf8d91E
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      local.get 1
      call $_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h8571265841c07f2bE
      local.set 3
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h2a4868d6a6f1ee50E (type 2) (param i32) (result i64)
    i64.const -1168863921878326592)
  (func $_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h45ce4f1f4061a2c4E (type 5) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=24
    i32.const 1055440
    i32.const 14
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 7))
  (func $_ZN4core4char7methods22_$LT$impl$u20$char$GT$16escape_debug_ext17h409c04aceb3978cbE (type 6) (param i32 i32 i32)
    (local i32 i32 i64)
    i32.const 48
    local.set 3
    i32.const 2
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      br_table 8 (;@1;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 1 (;@8;) 3 (;@6;) 6 (;@3;) 6 (;@3;) 2 (;@7;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 4 (;@5;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 6 (;@3;) 5 (;@4;) 0 (;@9;)
                    end
                    i32.const 92
                    local.set 3
                    local.get 1
                    i32.const 92
                    i32.eq
                    br_if 6 (;@2;)
                    br 5 (;@3;)
                  end
                  i32.const 116
                  local.set 3
                  br 5 (;@2;)
                end
                i32.const 114
                local.set 3
                br 4 (;@2;)
              end
              i32.const 110
              local.set 3
              br 3 (;@2;)
            end
            local.get 2
            i32.const 65536
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            i32.const 34
            local.set 3
            br 2 (;@2;)
          end
          local.get 2
          i32.const 256
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 39
          local.set 3
          br 1 (;@2;)
        end
        local.get 1
        local.set 3
        block  ;; label = @3
          local.get 2
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          call $_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h35af8268d57c0bdcE
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
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
          local.set 5
          i32.const 3
          local.set 4
          br 2 (;@1;)
        end
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 65536
                i32.lt_u
                br_if 0 (;@6;)
                local.get 1
                i32.const 131072
                i32.ge_u
                br_if 1 (;@5;)
                local.get 3
                i32.const 1057655
                i32.const 42
                i32.const 1057739
                i32.const 192
                i32.const 1057931
                i32.const 438
                call $_ZN4core7unicode9printable5check17h3128d58d97254e75E
                br_if 3 (;@3;)
                br 2 (;@4;)
              end
              local.get 3
              i32.const 1056984
              i32.const 40
              i32.const 1057064
              i32.const 288
              i32.const 1057352
              i32.const 303
              call $_ZN4core7unicode9printable5check17h3128d58d97254e75E
              i32.eqz
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 1
            i32.const 917999
            i32.gt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const 2097150
            i32.and
            i32.const 178206
            i32.eq
            br_if 0 (;@4;)
            local.get 1
            i32.const 2097120
            i32.and
            i32.const 173792
            i32.eq
            br_if 0 (;@4;)
            local.get 1
            i32.const -177977
            i32.add
            i32.const 7
            i32.lt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const -183984
            i32.add
            i32.const -15
            i32.gt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const -194560
            i32.add
            i32.const -3104
            i32.gt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const -196608
            i32.add
            i32.const -1507
            i32.gt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const -917760
            i32.add
            i32.const -716213
            i32.lt_u
            br_if 1 (;@3;)
          end
          local.get 1
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
          local.set 5
          i32.const 3
          local.set 4
          br 2 (;@1;)
        end
        i32.const 1
        local.set 4
      end
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store
    local.get 0
    i32.const 8
    i32.add
    local.get 5
    i64.store align=4)
  (func $_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h35af8268d57c0bdcE (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.const 11
    i32.shl
    local.set 1
    i32.const 0
    local.set 2
    i32.const 32
    local.set 3
    i32.const 32
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const 1
              i32.shr_u
              local.get 2
              i32.add
              local.tee 3
              i32.const 2
              i32.shl
              i32.const 1058532
              i32.add
              i32.load
              i32.const 11
              i32.shl
              local.tee 5
              local.get 1
              i32.lt_u
              br_if 0 (;@5;)
              local.get 5
              local.get 1
              i32.eq
              br_if 3 (;@2;)
              local.get 3
              local.set 4
              br 1 (;@4;)
            end
            local.get 3
            i32.const 1
            i32.add
            local.set 2
          end
          local.get 4
          local.get 2
          i32.sub
          local.set 3
          local.get 4
          local.get 2
          i32.gt_u
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 3
      i32.const 1
      i32.add
      local.set 2
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 31
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          i32.const 2
          i32.shl
          local.set 3
          i32.const 707
          local.set 4
          block  ;; label = @4
            local.get 2
            i32.const 31
            i32.eq
            br_if 0 (;@4;)
            local.get 3
            i32.const 1058536
            i32.add
            i32.load
            i32.const 21
            i32.shr_u
            local.set 4
          end
          i32.const 0
          local.set 1
          block  ;; label = @4
            local.get 2
            i32.const -1
            i32.add
            local.tee 5
            local.get 2
            i32.gt_u
            br_if 0 (;@4;)
            local.get 5
            i32.const 32
            i32.ge_u
            br_if 2 (;@2;)
            local.get 5
            i32.const 2
            i32.shl
            i32.const 1058532
            i32.add
            i32.load
            i32.const 2097151
            i32.and
            local.set 1
          end
          block  ;; label = @4
            local.get 4
            local.get 3
            i32.const 1058532
            i32.add
            i32.load
            i32.const 21
            i32.shr_u
            local.tee 2
            i32.const -1
            i32.xor
            i32.add
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 1
            i32.sub
            local.set 1
            local.get 2
            i32.const 707
            local.get 2
            i32.const 707
            i32.gt_u
            select
            local.set 3
            local.get 4
            i32.const -1
            i32.add
            local.set 5
            i32.const 0
            local.set 4
            loop  ;; label = @5
              local.get 3
              local.get 2
              i32.eq
              br_if 4 (;@1;)
              local.get 4
              local.get 2
              i32.const 1058660
              i32.add
              i32.load8_u
              i32.add
              local.tee 4
              local.get 1
              i32.gt_u
              br_if 1 (;@4;)
              local.get 5
              local.get 2
              i32.const 1
              i32.add
              local.tee 2
              i32.ne
              br_if 0 (;@5;)
            end
            local.get 5
            local.set 2
          end
          local.get 2
          i32.const 1
          i32.and
          return
        end
        local.get 2
        i32.const 32
        i32.const 1058412
        call $_ZN4core9panicking18panic_bounds_check17hda898183ca0e8f08E
        unreachable
      end
      local.get 5
      i32.const 32
      i32.const 1058444
      call $_ZN4core9panicking18panic_bounds_check17hda898183ca0e8f08E
      unreachable
    end
    local.get 3
    i32.const 707
    i32.const 1058428
    call $_ZN4core9panicking18panic_bounds_check17hda898183ca0e8f08E
    unreachable)
  (func $_ZN4core7unicode9printable5check17h3128d58d97254e75E (type 12) (param i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    i32.const 1
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 2
        i32.const 1
        i32.shl
        i32.add
        local.set 8
        local.get 0
        i32.const 65280
        i32.and
        i32.const 8
        i32.shr_u
        local.set 9
        i32.const 0
        local.set 10
        local.get 0
        i32.const 255
        i32.and
        local.set 11
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i32.const 2
            i32.add
            local.set 12
            local.get 10
            local.get 1
            i32.load8_u offset=1
            local.tee 2
            i32.add
            local.set 13
            block  ;; label = @5
              local.get 1
              i32.load8_u
              local.tee 1
              local.get 9
              i32.eq
              br_if 0 (;@5;)
              local.get 1
              local.get 9
              i32.gt_u
              br_if 3 (;@2;)
              local.get 13
              local.set 10
              local.get 12
              local.set 1
              local.get 12
              local.get 8
              i32.ne
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
            block  ;; label = @5
              local.get 13
              local.get 10
              i32.lt_u
              br_if 0 (;@5;)
              local.get 13
              local.get 4
              i32.gt_u
              br_if 2 (;@3;)
              local.get 3
              local.get 10
              i32.add
              local.set 1
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 2
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 2
                  i32.const -1
                  i32.add
                  local.set 2
                  local.get 1
                  i32.load8_u
                  local.set 10
                  local.get 1
                  i32.const 1
                  i32.add
                  local.set 1
                  local.get 10
                  local.get 11
                  i32.ne
                  br_if 0 (;@7;)
                end
                i32.const 0
                local.set 7
                br 5 (;@1;)
              end
              local.get 13
              local.set 10
              local.get 12
              local.set 1
              local.get 12
              local.get 8
              i32.ne
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
          end
          local.get 10
          local.get 13
          local.get 2
          call $_ZN4core5slice5index22slice_index_order_fail17h14510493d0b0a76fE
          unreachable
        end
        local.get 13
        local.get 4
        local.get 2
        call $_ZN4core5slice5index24slice_end_index_len_fail17hf80e6eb70f53b009E
        unreachable
      end
      local.get 6
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      local.get 6
      i32.add
      local.set 11
      local.get 0
      i32.const 65535
      i32.and
      local.set 1
      i32.const 1
      local.set 7
      block  ;; label = @2
        loop  ;; label = @3
          local.get 5
          i32.const 1
          i32.add
          local.set 10
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.load8_u
              local.tee 2
              i32.const 24
              i32.shl
              i32.const 24
              i32.shr_s
              local.tee 13
              i32.const 0
              i32.lt_s
              br_if 0 (;@5;)
              local.get 10
              local.set 5
              br 1 (;@4;)
            end
            local.get 10
            local.get 11
            i32.eq
            br_if 2 (;@2;)
            local.get 13
            i32.const 127
            i32.and
            i32.const 8
            i32.shl
            local.get 5
            i32.load8_u offset=1
            i32.or
            local.set 2
            local.get 5
            i32.const 2
            i32.add
            local.set 5
          end
          local.get 1
          local.get 2
          i32.sub
          local.tee 1
          i32.const 0
          i32.lt_s
          br_if 2 (;@1;)
          local.get 7
          i32.const 1
          i32.xor
          local.set 7
          local.get 5
          local.get 11
          i32.ne
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      i32.const 1055520
      i32.const 43
      i32.const 1056968
      call $_ZN4core9panicking5panic17h6405394cda32a2f1E
      unreachable
    end
    local.get 7
    i32.const 1
    i32.and)
  (func $_ZN4core5slice6memchr19memchr_general_case17hee7da5ec908112edE (type 11) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 3
            i32.add
            i32.const -4
            i32.and
            local.get 2
            i32.sub
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 4
            local.get 4
            local.get 3
            i32.gt_u
            select
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            local.set 5
            local.get 1
            i32.const 255
            i32.and
            local.set 6
            i32.const 1
            local.set 7
            loop  ;; label = @5
              local.get 2
              local.get 5
              i32.add
              i32.load8_u
              local.get 6
              i32.eq
              br_if 4 (;@1;)
              local.get 4
              local.get 5
              i32.const 1
              i32.add
              local.tee 5
              i32.ne
              br_if 0 (;@5;)
            end
            local.get 4
            local.get 3
            i32.const -8
            i32.add
            local.tee 8
            i32.gt_u
            br_if 2 (;@2;)
            br 1 (;@3;)
          end
          local.get 3
          i32.const -8
          i32.add
          local.set 8
          i32.const 0
          local.set 4
        end
        local.get 1
        i32.const 255
        i32.and
        i32.const 16843009
        i32.mul
        local.set 5
        block  ;; label = @3
          loop  ;; label = @4
            local.get 2
            local.get 4
            i32.add
            local.tee 6
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
            local.get 6
            i32.const 4
            i32.add
            i32.load
            local.get 5
            i32.xor
            local.tee 6
            i32.const -1
            i32.xor
            local.get 6
            i32.const -16843009
            i32.add
            i32.and
            i32.or
            i32.const -2139062144
            i32.and
            br_if 1 (;@3;)
            local.get 4
            i32.const 8
            i32.add
            local.tee 4
            local.get 8
            i32.le_u
            br_if 0 (;@4;)
          end
        end
        local.get 4
        local.get 3
        i32.le_u
        br_if 0 (;@2;)
        local.get 4
        local.get 3
        local.get 4
        call $_ZN4core5slice5index26slice_start_index_len_fail17h4a9053b9acbf3e79E
        unreachable
      end
      block  ;; label = @2
        local.get 4
        local.get 3
        i32.eq
        br_if 0 (;@2;)
        local.get 4
        local.get 3
        i32.sub
        local.set 8
        local.get 2
        local.get 4
        i32.add
        local.set 6
        i32.const 0
        local.set 5
        local.get 1
        i32.const 255
        i32.and
        local.set 7
        block  ;; label = @3
          loop  ;; label = @4
            local.get 6
            local.get 5
            i32.add
            i32.load8_u
            local.get 7
            i32.eq
            br_if 1 (;@3;)
            local.get 8
            local.get 5
            i32.const 1
            i32.add
            local.tee 5
            i32.add
            i32.eqz
            br_if 2 (;@2;)
            br 0 (;@4;)
          end
        end
        local.get 4
        local.get 5
        i32.add
        local.set 5
        i32.const 1
        local.set 7
        br 1 (;@1;)
      end
      i32.const 0
      local.set 7
    end
    local.get 0
    local.get 5
    i32.store offset=4
    local.get 0
    local.get 7
    i32.store)
  (func $_ZN4core3str8converts9from_utf817h6fbe8c227eaa57ffE (type 6) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i64 i64 i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.get 2
      i32.const -7
      i32.add
      local.tee 3
      local.get 3
      local.get 2
      i32.gt_u
      select
      local.set 4
      local.get 1
      i32.const 3
      i32.add
      i32.const -4
      i32.and
      local.get 1
      i32.sub
      local.set 5
      i32.const 0
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              loop  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      local.get 3
                      i32.add
                      i32.load8_u
                      local.tee 6
                      i32.const 24
                      i32.shl
                      i32.const 24
                      i32.shr_s
                      local.tee 7
                      i32.const 0
                      i32.lt_s
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const -1
                      i32.eq
                      br_if 1 (;@8;)
                      local.get 5
                      local.get 3
                      i32.sub
                      i32.const 3
                      i32.and
                      br_if 1 (;@8;)
                      block  ;; label = @10
                        local.get 3
                        local.get 4
                        i32.ge_u
                        br_if 0 (;@10;)
                        loop  ;; label = @11
                          local.get 1
                          local.get 3
                          i32.add
                          local.tee 6
                          i32.load
                          local.get 6
                          i32.const 4
                          i32.add
                          i32.load
                          i32.or
                          i32.const -2139062144
                          i32.and
                          br_if 1 (;@10;)
                          local.get 3
                          i32.const 8
                          i32.add
                          local.tee 3
                          local.get 4
                          i32.lt_u
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 3
                      local.get 2
                      i32.ge_u
                      br_if 2 (;@7;)
                      loop  ;; label = @10
                        local.get 1
                        local.get 3
                        i32.add
                        i32.load8_s
                        i32.const 0
                        i32.lt_s
                        br_if 3 (;@7;)
                        local.get 2
                        local.get 3
                        i32.const 1
                        i32.add
                        local.tee 3
                        i32.ne
                        br_if 0 (;@10;)
                        br 9 (;@1;)
                      end
                    end
                    i64.const 1099511627776
                    local.set 8
                    i64.const 4294967296
                    local.set 9
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 6
                                      i32.const 1056356
                                      i32.add
                                      i32.load8_u
                                      i32.const -2
                                      i32.add
                                      br_table 0 (;@17;) 1 (;@16;) 2 (;@15;) 15 (;@2;)
                                    end
                                    local.get 3
                                    i32.const 1
                                    i32.add
                                    local.tee 6
                                    local.get 2
                                    i32.lt_u
                                    br_if 6 (;@10;)
                                    i64.const 0
                                    local.set 8
                                    br 13 (;@3;)
                                  end
                                  i64.const 0
                                  local.set 8
                                  local.get 3
                                  i32.const 1
                                  i32.add
                                  local.tee 10
                                  local.get 2
                                  i32.ge_u
                                  br_if 12 (;@3;)
                                  local.get 1
                                  local.get 10
                                  i32.add
                                  i32.load8_s
                                  local.set 10
                                  local.get 6
                                  i32.const -224
                                  i32.add
                                  br_table 1 (;@14;) 3 (;@12;) 3 (;@12;) 3 (;@12;) 3 (;@12;) 3 (;@12;) 3 (;@12;) 3 (;@12;) 3 (;@12;) 3 (;@12;) 3 (;@12;) 3 (;@12;) 3 (;@12;) 2 (;@13;) 3 (;@12;)
                                end
                                i64.const 0
                                local.set 8
                                local.get 3
                                i32.const 1
                                i32.add
                                local.tee 10
                                local.get 2
                                i32.ge_u
                                br_if 11 (;@3;)
                                local.get 1
                                local.get 10
                                i32.add
                                i32.load8_s
                                local.set 10
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 6
                                        i32.const -240
                                        i32.add
                                        br_table 1 (;@17;) 0 (;@18;) 0 (;@18;) 0 (;@18;) 2 (;@16;) 0 (;@18;)
                                      end
                                      local.get 7
                                      i32.const 15
                                      i32.add
                                      i32.const 255
                                      i32.and
                                      i32.const 2
                                      i32.gt_u
                                      br_if 13 (;@4;)
                                      local.get 10
                                      i32.const -1
                                      i32.gt_s
                                      br_if 13 (;@4;)
                                      local.get 10
                                      i32.const -64
                                      i32.ge_u
                                      br_if 13 (;@4;)
                                      br 2 (;@15;)
                                    end
                                    local.get 10
                                    i32.const 112
                                    i32.add
                                    i32.const 255
                                    i32.and
                                    i32.const 48
                                    i32.ge_u
                                    br_if 12 (;@4;)
                                    br 1 (;@15;)
                                  end
                                  local.get 10
                                  i32.const -113
                                  i32.gt_s
                                  br_if 11 (;@4;)
                                end
                                local.get 3
                                i32.const 2
                                i32.add
                                local.tee 6
                                local.get 2
                                i32.ge_u
                                br_if 11 (;@3;)
                                local.get 1
                                local.get 6
                                i32.add
                                i32.load8_s
                                i32.const -65
                                i32.gt_s
                                br_if 9 (;@5;)
                                i64.const 0
                                local.set 9
                                local.get 3
                                i32.const 3
                                i32.add
                                local.tee 6
                                local.get 2
                                i32.ge_u
                                br_if 12 (;@2;)
                                local.get 1
                                local.get 6
                                i32.add
                                i32.load8_s
                                i32.const -65
                                i32.le_s
                                br_if 5 (;@9;)
                                i64.const 3298534883328
                                local.set 8
                                i64.const 4294967296
                                local.set 9
                                br 12 (;@2;)
                              end
                              local.get 10
                              i32.const -32
                              i32.and
                              i32.const -96
                              i32.ne
                              br_if 9 (;@4;)
                              br 2 (;@11;)
                            end
                            local.get 10
                            i32.const -96
                            i32.ge_s
                            br_if 8 (;@4;)
                            br 1 (;@11;)
                          end
                          block  ;; label = @12
                            local.get 7
                            i32.const 31
                            i32.add
                            i32.const 255
                            i32.and
                            i32.const 12
                            i32.lt_u
                            br_if 0 (;@12;)
                            local.get 7
                            i32.const -2
                            i32.and
                            i32.const -18
                            i32.ne
                            br_if 8 (;@4;)
                            local.get 10
                            i32.const -1
                            i32.gt_s
                            br_if 8 (;@4;)
                            local.get 10
                            i32.const -64
                            i32.ge_u
                            br_if 8 (;@4;)
                            br 1 (;@11;)
                          end
                          local.get 10
                          i32.const -65
                          i32.gt_s
                          br_if 7 (;@4;)
                        end
                        i64.const 0
                        local.set 9
                        local.get 3
                        i32.const 2
                        i32.add
                        local.tee 6
                        local.get 2
                        i32.ge_u
                        br_if 8 (;@2;)
                        local.get 1
                        local.get 6
                        i32.add
                        i32.load8_s
                        i32.const -65
                        i32.gt_s
                        br_if 5 (;@5;)
                        br 1 (;@9;)
                      end
                      i64.const 1099511627776
                      local.set 8
                      i64.const 4294967296
                      local.set 9
                      local.get 1
                      local.get 6
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      br_if 7 (;@2;)
                    end
                    local.get 6
                    i32.const 1
                    i32.add
                    local.set 3
                    br 1 (;@7;)
                  end
                  local.get 3
                  i32.const 1
                  i32.add
                  local.set 3
                end
                local.get 3
                local.get 2
                i32.lt_u
                br_if 0 (;@6;)
                br 5 (;@1;)
              end
            end
            i64.const 2199023255552
            local.set 8
            i64.const 4294967296
            local.set 9
            br 2 (;@2;)
          end
          i64.const 1099511627776
          local.set 8
          i64.const 4294967296
          local.set 9
          br 1 (;@2;)
        end
        i64.const 0
        local.set 9
      end
      local.get 0
      local.get 8
      local.get 3
      i64.extend_i32_u
      i64.or
      local.get 9
      i64.or
      i64.store offset=4 align=4
      local.get 0
      i32.const 1
      i32.store
      return
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    i32.store
    local.get 0
    i32.const 0
    i32.store)
  (func $_ZN4core3fmt8builders11DebugStruct5field17hb9d3b8fcd126795aE (type 13) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    i32.const 1
    local.set 6
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=4
      br_if 0 (;@1;)
      local.get 0
      i32.load8_u offset=5
      local.set 7
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 8
        i32.load
        local.tee 9
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.set 6
        local.get 8
        i32.load offset=24
        i32.const 1055837
        i32.const 1055839
        local.get 7
        i32.const 255
        i32.and
        local.tee 7
        select
        i32.const 2
        i32.const 3
        local.get 7
        select
        local.get 8
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        br_if 1 (;@1;)
        i32.const 1
        local.set 6
        local.get 8
        i32.load offset=24
        local.get 1
        local.get 2
        local.get 8
        i32.load offset=28
        i32.load offset=12
        call_indirect (type 7)
        br_if 1 (;@1;)
        i32.const 1
        local.set 6
        local.get 8
        i32.load offset=24
        i32.const 1055784
        i32.const 2
        local.get 8
        i32.load offset=28
        i32.load offset=12
        call_indirect (type 7)
        br_if 1 (;@1;)
        local.get 3
        local.get 8
        local.get 4
        i32.load offset=12
        call_indirect (type 5)
        local.set 6
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 7
        i32.const 255
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.set 6
        local.get 8
        i32.load offset=24
        i32.const 1055832
        i32.const 3
        local.get 8
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        br_if 1 (;@1;)
        local.get 8
        i32.load
        local.set 9
      end
      i32.const 1
      local.set 6
      local.get 5
      i32.const 1
      i32.store8 offset=23
      local.get 5
      i32.const 52
      i32.add
      i32.const 1055804
      i32.store
      local.get 5
      i32.const 16
      i32.add
      local.get 5
      i32.const 23
      i32.add
      i32.store
      local.get 5
      local.get 9
      i32.store offset=24
      local.get 5
      local.get 8
      i64.load offset=24 align=4
      i64.store offset=8
      local.get 8
      i64.load offset=8 align=4
      local.set 10
      local.get 8
      i64.load offset=16 align=4
      local.set 11
      local.get 5
      local.get 8
      i32.load8_u offset=32
      i32.store8 offset=56
      local.get 5
      local.get 8
      i32.load offset=4
      i32.store offset=28
      local.get 5
      local.get 11
      i64.store offset=40
      local.get 5
      local.get 10
      i64.store offset=32
      local.get 5
      local.get 5
      i32.const 8
      i32.add
      i32.store offset=48
      local.get 5
      i32.const 8
      i32.add
      local.get 1
      local.get 2
      call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h8623112eeafe2800E
      br_if 0 (;@1;)
      local.get 5
      i32.const 8
      i32.add
      i32.const 1055784
      i32.const 2
      call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h8623112eeafe2800E
      br_if 0 (;@1;)
      local.get 3
      local.get 5
      i32.const 24
      i32.add
      local.get 4
      i32.load offset=12
      call_indirect (type 5)
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=48
      i32.const 1055835
      i32.const 2
      local.get 5
      i32.load offset=52
      i32.load offset=12
      call_indirect (type 7)
      local.set 6
    end
    local.get 0
    i32.const 1
    i32.store8 offset=5
    local.get 0
    local.get 6
    i32.store8 offset=4
    local.get 5
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core6option13expect_failed17h71dab1eaa8cb15ffE (type 6) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN4core9panicking9panic_str17hefaee680dd8e5b26E
    unreachable)
  (func $_ZN4core9panicking9panic_str17hefaee680dd8e5b26E (type 6) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking13panic_display17h0cbd9d7b67cbe7b8E
    unreachable)
  (func $_ZN70_$LT$core..panic..location..Location$u20$as$u20$core..fmt..Display$GT$3fmt17h99d2a8b701e773a5E (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 20
    i32.add
    i32.const 11
    i32.store
    local.get 2
    i32.const 12
    i32.add
    i32.const 11
    i32.store
    local.get 2
    i32.const 78
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store
    local.get 2
    local.get 0
    i32.const 12
    i32.add
    i32.store offset=16
    local.get 2
    local.get 0
    i32.const 8
    i32.add
    i32.store offset=8
    local.get 1
    i32.const 28
    i32.add
    i32.load
    local.set 0
    local.get 1
    i32.load offset=24
    local.set 1
    local.get 2
    i32.const 24
    i32.add
    i32.const 20
    i32.add
    i32.const 3
    i32.store
    local.get 2
    i64.const 3
    i64.store offset=28 align=4
    local.get 2
    i32.const 1055564
    i32.store offset=24
    local.get 2
    local.get 2
    i32.store offset=40
    local.get 1
    local.get 0
    local.get 2
    i32.const 24
    i32.add
    call $_ZN4core3fmt5write17h2ef748b44faf8d91E
    local.set 0
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hf0310493bea7b2a3E (type 5) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN4core3fmt9Formatter3pad17hdffb817b8a6961faE)
  (func $_ZN4core5panic10panic_info9PanicInfo7payload17h896f9bee6424fa6fE (type 3) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store)
  (func $_ZN4core5panic10panic_info9PanicInfo7message17h908015f03cb83f64E (type 4) (param i32) (result i32)
    local.get 0
    i32.load offset=8)
  (func $_ZN4core5panic10panic_info9PanicInfo8location17h2213c5464e558925E (type 4) (param i32) (result i32)
    local.get 0
    i32.load offset=12)
  (func $_ZN4core5panic10panic_info9PanicInfo10can_unwind17h9c7767dd5996c83bE (type 4) (param i32) (result i32)
    local.get 0
    i32.load8_u offset=16)
  (func $_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h25762335f37de3d5E (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 1
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load offset=24
      local.tee 4
      i32.const 1055604
      i32.const 12
      local.get 1
      i32.const 28
      i32.add
      i32.load
      local.tee 1
      i32.load offset=12
      call_indirect (type 7)
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=8
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.store offset=12
          local.get 2
          i32.const 82
          i32.store offset=20
          local.get 2
          local.get 2
          i32.const 12
          i32.add
          i32.store offset=16
          i32.const 1
          local.set 3
          local.get 2
          i32.const 60
          i32.add
          i32.const 1
          i32.store
          local.get 2
          i64.const 2
          i64.store offset=44 align=4
          local.get 2
          i32.const 1055620
          i32.store offset=40
          local.get 2
          local.get 2
          i32.const 16
          i32.add
          i32.store offset=56
          local.get 4
          local.get 1
          local.get 2
          i32.const 40
          i32.add
          call $_ZN4core3fmt5write17h2ef748b44faf8d91E
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        local.tee 3
        local.get 0
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 2)
        i64.const -5139102199292759541
        i64.ne
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        i32.store offset=12
        local.get 2
        i32.const 83
        i32.store offset=20
        local.get 2
        local.get 2
        i32.const 12
        i32.add
        i32.store offset=16
        i32.const 1
        local.set 3
        local.get 2
        i32.const 60
        i32.add
        i32.const 1
        i32.store
        local.get 2
        i64.const 2
        i64.store offset=44 align=4
        local.get 2
        i32.const 1055620
        i32.store offset=40
        local.get 2
        local.get 2
        i32.const 16
        i32.add
        i32.store offset=56
        local.get 4
        local.get 1
        local.get 2
        i32.const 40
        i32.add
        call $_ZN4core3fmt5write17h2ef748b44faf8d91E
        br_if 1 (;@1;)
      end
      local.get 0
      i32.load offset=12
      local.set 3
      local.get 2
      i32.const 16
      i32.add
      i32.const 20
      i32.add
      i32.const 11
      i32.store
      local.get 2
      i32.const 16
      i32.add
      i32.const 12
      i32.add
      i32.const 11
      i32.store
      local.get 2
      local.get 3
      i32.const 12
      i32.add
      i32.store offset=32
      local.get 2
      local.get 3
      i32.const 8
      i32.add
      i32.store offset=24
      local.get 2
      i32.const 78
      i32.store offset=20
      local.get 2
      local.get 3
      i32.store offset=16
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
      i32.const 1055564
      i32.store offset=40
      local.get 2
      local.get 2
      i32.const 16
      i32.add
      i32.store offset=56
      local.get 4
      local.get 1
      local.get 2
      i32.const 40
      i32.add
      call $_ZN4core3fmt5write17h2ef748b44faf8d91E
      local.set 3
    end
    local.get 2
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h03bb1cca26d727b7E (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
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
    call $_ZN4core3fmt5write17h2ef748b44faf8d91E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hff61c71d51b59022E (type 5) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.tee 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN4core3fmt9Formatter3pad17hdffb817b8a6961faE)
  (func $_ZN4core9panicking13panic_display17h0cbd9d7b67cbe7b8E (type 3) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 20
    i32.add
    i32.const 1
    i32.store
    local.get 2
    i64.const 1
    i64.store offset=4 align=4
    local.get 2
    i32.const 1055636
    i32.store
    local.get 2
    i32.const 78
    i32.store offset=28
    local.get 2
    local.get 0
    i32.store offset=24
    local.get 2
    local.get 2
    i32.const 24
    i32.add
    i32.store offset=16
    local.get 2
    local.get 1
    call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
    unreachable)
  (func $_ZN4core9panicking19assert_failed_inner17h8664cfe8c86a498cE (type 14) (param i32 i32 i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    local.get 7
    local.get 2
    i32.store offset=12
    local.get 7
    local.get 1
    i32.store offset=8
    local.get 7
    local.get 4
    i32.store offset=20
    local.get 7
    local.get 3
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 255
            i32.and
            br_table 0 (;@4;) 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          local.get 7
          i32.const 1055653
          i32.store offset=24
          i32.const 2
          local.set 0
          br 2 (;@1;)
        end
        local.get 7
        i32.const 1055651
        i32.store offset=24
        i32.const 2
        local.set 0
        br 1 (;@1;)
      end
      local.get 7
      i32.const 1055644
      i32.store offset=24
      i32.const 7
      local.set 0
    end
    local.get 7
    local.get 0
    i32.store offset=28
    block  ;; label = @1
      local.get 5
      i32.load
      br_if 0 (;@1;)
      local.get 7
      i32.const 56
      i32.add
      i32.const 20
      i32.add
      i32.const 84
      i32.store
      local.get 7
      i32.const 68
      i32.add
      i32.const 84
      i32.store
      local.get 7
      i32.const 88
      i32.add
      i32.const 20
      i32.add
      i32.const 3
      i32.store
      local.get 7
      i64.const 4
      i64.store offset=92 align=4
      local.get 7
      i32.const 1055752
      i32.store offset=88
      local.get 7
      i32.const 78
      i32.store offset=60
      local.get 7
      local.get 7
      i32.const 56
      i32.add
      i32.store offset=104
      local.get 7
      local.get 7
      i32.const 16
      i32.add
      i32.store offset=72
      local.get 7
      local.get 7
      i32.const 8
      i32.add
      i32.store offset=64
      local.get 7
      local.get 7
      i32.const 24
      i32.add
      i32.store offset=56
      local.get 7
      i32.const 88
      i32.add
      local.get 6
      call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
      unreachable
    end
    local.get 7
    i32.const 32
    i32.add
    i32.const 16
    i32.add
    local.get 5
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 7
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get 5
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 7
    local.get 5
    i64.load align=4
    i64.store offset=32
    local.get 7
    i32.const 88
    i32.add
    i32.const 20
    i32.add
    i32.const 4
    i32.store
    local.get 7
    i32.const 84
    i32.add
    i32.const 5
    i32.store
    local.get 7
    i32.const 56
    i32.add
    i32.const 20
    i32.add
    i32.const 84
    i32.store
    local.get 7
    i32.const 68
    i32.add
    i32.const 84
    i32.store
    local.get 7
    i64.const 4
    i64.store offset=92 align=4
    local.get 7
    i32.const 1055716
    i32.store offset=88
    local.get 7
    i32.const 78
    i32.store offset=60
    local.get 7
    local.get 7
    i32.const 56
    i32.add
    i32.store offset=104
    local.get 7
    local.get 7
    i32.const 32
    i32.add
    i32.store offset=80
    local.get 7
    local.get 7
    i32.const 16
    i32.add
    i32.store offset=72
    local.get 7
    local.get 7
    i32.const 8
    i32.add
    i32.store offset=64
    local.get 7
    local.get 7
    i32.const 24
    i32.add
    i32.store offset=56
    local.get 7
    i32.const 88
    i32.add
    local.get 6
    call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
    unreachable)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h68b1b36ef58af525E (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 5))
  (func $_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h5d96065e7ee4deebE (type 5) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.const 28
    i32.add
    i32.load
    local.set 3
    local.get 1
    i32.load offset=24
    local.set 1
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 0
    i64.load align=4
    i64.store offset=8
    local.get 1
    local.get 3
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h2ef748b44faf8d91E
    local.set 0
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core6result13unwrap_failed17h42eb2bde7057019eE (type 10) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 5
    global.set $__stack_pointer
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
    i32.const 84
    i32.store
    local.get 5
    i64.const 2
    i64.store offset=28 align=4
    local.get 5
    i32.const 1055788
    i32.store offset=24
    local.get 5
    i32.const 78
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
    call $_ZN4core9panicking9panic_fmt17h99615bf411b9c1d7E
    unreachable)
  (func $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h8623112eeafe2800E (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=4
        local.set 3
        local.get 0
        i32.load
        local.set 4
        local.get 0
        i32.load offset=8
        local.set 5
        loop  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.load8_u
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.const 1055828
            i32.const 4
            local.get 3
            i32.load offset=12
            call_indirect (type 7)
            i32.eqz
            br_if 0 (;@4;)
            i32.const 1
            return
          end
          i32.const 0
          local.set 6
          local.get 2
          local.set 7
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 1
                    local.get 6
                    i32.add
                    local.set 8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 7
                              i32.const 8
                              i32.lt_u
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                local.get 8
                                i32.const 3
                                i32.add
                                i32.const -4
                                i32.and
                                local.get 8
                                i32.sub
                                local.tee 0
                                br_if 0 (;@14;)
                                local.get 7
                                i32.const -8
                                i32.add
                                local.set 9
                                i32.const 0
                                local.set 0
                                br 3 (;@11;)
                              end
                              local.get 7
                              local.get 0
                              local.get 0
                              local.get 7
                              i32.gt_u
                              select
                              local.set 0
                              i32.const 0
                              local.set 10
                              loop  ;; label = @14
                                local.get 8
                                local.get 10
                                i32.add
                                i32.load8_u
                                i32.const 10
                                i32.eq
                                br_if 5 (;@9;)
                                local.get 0
                                local.get 10
                                i32.const 1
                                i32.add
                                local.tee 10
                                i32.eq
                                br_if 2 (;@12;)
                                br 0 (;@14;)
                              end
                            end
                            local.get 7
                            i32.eqz
                            br_if 5 (;@7;)
                            i32.const 0
                            local.set 10
                            local.get 8
                            i32.load8_u
                            i32.const 10
                            i32.eq
                            br_if 3 (;@9;)
                            local.get 7
                            i32.const 1
                            i32.eq
                            br_if 5 (;@7;)
                            i32.const 1
                            local.set 10
                            local.get 8
                            i32.load8_u offset=1
                            i32.const 10
                            i32.eq
                            br_if 3 (;@9;)
                            local.get 7
                            i32.const 2
                            i32.eq
                            br_if 5 (;@7;)
                            i32.const 2
                            local.set 10
                            local.get 8
                            i32.load8_u offset=2
                            i32.const 10
                            i32.eq
                            br_if 3 (;@9;)
                            local.get 7
                            i32.const 3
                            i32.eq
                            br_if 5 (;@7;)
                            i32.const 3
                            local.set 10
                            local.get 8
                            i32.load8_u offset=3
                            i32.const 10
                            i32.eq
                            br_if 3 (;@9;)
                            local.get 7
                            i32.const 4
                            i32.eq
                            br_if 5 (;@7;)
                            i32.const 4
                            local.set 10
                            local.get 8
                            i32.load8_u offset=4
                            i32.const 10
                            i32.eq
                            br_if 3 (;@9;)
                            local.get 7
                            i32.const 5
                            i32.eq
                            br_if 5 (;@7;)
                            i32.const 5
                            local.set 10
                            local.get 8
                            i32.load8_u offset=5
                            i32.const 10
                            i32.eq
                            br_if 3 (;@9;)
                            local.get 7
                            i32.const 6
                            i32.eq
                            br_if 5 (;@7;)
                            i32.const 6
                            local.set 10
                            local.get 8
                            i32.load8_u offset=6
                            i32.const 10
                            i32.ne
                            br_if 5 (;@7;)
                            br 3 (;@9;)
                          end
                          local.get 0
                          local.get 7
                          i32.const -8
                          i32.add
                          local.tee 9
                          i32.gt_u
                          br_if 1 (;@10;)
                        end
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 8
                            local.get 0
                            i32.add
                            local.tee 10
                            i32.load
                            local.tee 11
                            i32.const -1
                            i32.xor
                            local.get 11
                            i32.const 168430090
                            i32.xor
                            i32.const -16843009
                            i32.add
                            i32.and
                            local.get 10
                            i32.const 4
                            i32.add
                            i32.load
                            local.tee 10
                            i32.const -1
                            i32.xor
                            local.get 10
                            i32.const 168430090
                            i32.xor
                            i32.const -16843009
                            i32.add
                            i32.and
                            i32.or
                            i32.const -2139062144
                            i32.and
                            br_if 1 (;@11;)
                            local.get 0
                            i32.const 8
                            i32.add
                            local.tee 0
                            local.get 9
                            i32.le_u
                            br_if 0 (;@12;)
                          end
                        end
                        local.get 0
                        local.get 7
                        i32.le_u
                        br_if 0 (;@10;)
                        local.get 0
                        local.get 7
                        local.get 0
                        call $_ZN4core5slice5index26slice_start_index_len_fail17h4a9053b9acbf3e79E
                        unreachable
                      end
                      local.get 0
                      local.get 7
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 0
                      local.get 7
                      i32.sub
                      local.set 11
                      local.get 8
                      local.get 0
                      i32.add
                      local.set 8
                      i32.const 0
                      local.set 10
                      block  ;; label = @10
                        loop  ;; label = @11
                          local.get 8
                          local.get 10
                          i32.add
                          i32.load8_u
                          i32.const 10
                          i32.eq
                          br_if 1 (;@10;)
                          local.get 11
                          local.get 10
                          i32.const 1
                          i32.add
                          local.tee 10
                          i32.add
                          br_if 0 (;@11;)
                          br 4 (;@7;)
                        end
                      end
                      local.get 0
                      local.get 10
                      i32.add
                      local.set 10
                    end
                    block  ;; label = @9
                      local.get 10
                      local.get 6
                      i32.add
                      local.tee 0
                      i32.const 1
                      i32.add
                      local.tee 6
                      local.get 0
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 2
                      local.get 6
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 1
                      local.get 0
                      i32.add
                      i32.load8_u
                      i32.const 10
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 1
                      i32.store8
                      local.get 2
                      local.get 6
                      i32.le_u
                      br_if 3 (;@6;)
                      local.get 6
                      local.set 0
                      local.get 1
                      local.get 6
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.le_s
                      br_if 4 (;@5;)
                      br 5 (;@4;)
                    end
                    local.get 2
                    local.get 6
                    i32.sub
                    local.set 7
                    local.get 2
                    local.get 6
                    i32.ge_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 5
                i32.const 0
                i32.store8
                local.get 2
                local.set 6
              end
              local.get 2
              local.set 0
              local.get 2
              local.get 6
              i32.eq
              br_if 1 (;@4;)
            end
            local.get 1
            local.get 2
            i32.const 0
            local.get 6
            local.get 0
            call $_ZN4core3str16slice_error_fail17h2ed7ecfe0eda4c90E
            unreachable
          end
          block  ;; label = @4
            local.get 4
            local.get 1
            local.get 0
            local.get 3
            i32.load offset=12
            call_indirect (type 7)
            i32.eqz
            br_if 0 (;@4;)
            i32.const 1
            return
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              local.get 0
              i32.gt_u
              br_if 0 (;@5;)
              local.get 2
              local.get 0
              i32.eq
              br_if 1 (;@4;)
              br 4 (;@1;)
            end
            local.get 1
            local.get 0
            i32.add
            i32.load8_s
            i32.const -65
            i32.le_s
            br_if 3 (;@1;)
          end
          local.get 1
          local.get 0
          i32.add
          local.set 1
          local.get 2
          local.get 0
          i32.sub
          local.tee 2
          br_if 0 (;@3;)
        end
      end
      i32.const 0
      return
    end
    local.get 1
    local.get 2
    local.get 0
    local.get 2
    local.get 0
    call $_ZN4core3str16slice_error_fail17h2ed7ecfe0eda4c90E
    unreachable)
  (func $_ZN4core3str16slice_error_fail17h2ed7ecfe0eda4c90E (type 10) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 3
    i32.store offset=12
    local.get 5
    local.get 2
    i32.store offset=8
    local.get 5
    local.get 1
    i32.store offset=4
    local.get 5
    local.get 0
    i32.store
    local.get 5
    call $_ZN4core10intrinsics17const_eval_select17hdf37b06945f80931E
    unreachable)
  (func $_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17hc5aa5ceee3dd1a23E (type 4) (param i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 1
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=4
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.set 3
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=5
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=24
        i32.const 1055852
        i32.const 7
        local.get 3
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        local.set 2
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 3
        i32.load8_u
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=24
        i32.const 1055846
        i32.const 6
        local.get 3
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        local.set 2
        br 1 (;@1;)
      end
      i32.const 1
      local.set 2
      local.get 1
      i32.const 1
      i32.store8 offset=15
      local.get 1
      i32.const 8
      i32.add
      local.get 1
      i32.const 15
      i32.add
      i32.store
      local.get 1
      local.get 3
      i64.load offset=24 align=4
      i64.store
      local.get 1
      i32.const 1055842
      i32.const 3
      call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h8623112eeafe2800E
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=24
      i32.const 1055845
      i32.const 1
      local.get 3
      i32.load offset=28
      i32.load offset=12
      call_indirect (type 7)
      local.set 2
    end
    local.get 0
    local.get 2
    i32.store8 offset=4
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $_ZN4core3fmt8builders10DebugTuple5field17he06b0dd27394f923E (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=8
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=4
        local.set 4
        i32.const 1
        local.set 5
        br 1 (;@1;)
      end
      local.get 0
      i32.load offset=4
      local.set 4
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 6
        i32.load
        local.tee 7
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.set 5
        local.get 6
        i32.load offset=24
        i32.const 1055837
        i32.const 1055863
        local.get 4
        select
        i32.const 2
        i32.const 1
        local.get 4
        select
        local.get 6
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        br_if 1 (;@1;)
        local.get 1
        local.get 6
        local.get 2
        i32.load offset=12
        call_indirect (type 5)
        local.set 5
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 6
          i32.load offset=24
          i32.const 1055861
          i32.const 2
          local.get 6
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 7)
          i32.eqz
          br_if 0 (;@3;)
          i32.const 1
          local.set 5
          i32.const 0
          local.set 4
          br 2 (;@1;)
        end
        local.get 6
        i32.load
        local.set 7
      end
      i32.const 1
      local.set 5
      local.get 3
      i32.const 1
      i32.store8 offset=23
      local.get 3
      i32.const 52
      i32.add
      i32.const 1055804
      i32.store
      local.get 3
      i32.const 16
      i32.add
      local.get 3
      i32.const 23
      i32.add
      i32.store
      local.get 3
      local.get 7
      i32.store offset=24
      local.get 3
      local.get 6
      i64.load offset=24 align=4
      i64.store offset=8
      local.get 6
      i64.load offset=8 align=4
      local.set 8
      local.get 6
      i64.load offset=16 align=4
      local.set 9
      local.get 3
      local.get 6
      i32.load8_u offset=32
      i32.store8 offset=56
      local.get 3
      local.get 6
      i32.load offset=4
      i32.store offset=28
      local.get 3
      local.get 9
      i64.store offset=40
      local.get 3
      local.get 8
      i64.store offset=32
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
      call_indirect (type 5)
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=48
      i32.const 1055835
      i32.const 2
      local.get 3
      i32.load offset=52
      i32.load offset=12
      call_indirect (type 7)
      local.set 5
    end
    local.get 0
    local.get 5
    i32.store8 offset=8
    local.get 0
    local.get 4
    i32.const 1
    i32.add
    i32.store offset=4
    local.get 3
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt8builders10DebugTuple6finish17h6e906ebc6223618aE (type 4) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.load8_u offset=8
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 255
      i32.and
      local.set 3
      i32.const 1
      local.set 1
      block  ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        local.get 0
        i32.load
        local.set 3
        block  ;; label = @3
          local.get 2
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.load8_u offset=9
          i32.const 255
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.load8_u
          i32.const 4
          i32.and
          br_if 0 (;@3;)
          i32.const 1
          local.set 1
          local.get 3
          i32.load offset=24
          i32.const 1055864
          i32.const 1
          local.get 3
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 7)
          br_if 1 (;@2;)
        end
        local.get 3
        i32.load offset=24
        i32.const 1055428
        i32.const 1
        local.get 3
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        local.set 1
      end
      local.get 0
      local.get 1
      i32.store8 offset=8
    end
    local.get 1
    i32.const 255
    i32.and
    i32.const 0
    i32.ne)
  (func $_ZN4core3fmt8builders10DebugInner5entry17h2153b0224d82568eE (type 6) (param i32 i32 i32)
    (local i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
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
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load
              local.tee 5
              i32.load
              local.tee 6
              i32.const 4
              i32.and
              br_if 0 (;@5;)
              local.get 4
              i32.const 255
              i32.and
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
            local.get 4
            i32.const 255
            i32.and
            br_if 1 (;@3;)
            i32.const 1
            local.set 4
            local.get 5
            i32.load offset=24
            i32.const 1055865
            i32.const 1
            local.get 5
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type 7)
            br_if 3 (;@1;)
            local.get 5
            i32.load
            local.set 6
            br 1 (;@3;)
          end
          i32.const 1
          local.set 4
          local.get 5
          i32.load offset=24
          i32.const 1055837
          i32.const 2
          local.get 5
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 7)
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        i32.const 1
        local.set 4
        local.get 3
        i32.const 1
        i32.store8 offset=23
        local.get 3
        i32.const 52
        i32.add
        i32.const 1055804
        i32.store
        local.get 3
        i32.const 16
        i32.add
        local.get 3
        i32.const 23
        i32.add
        i32.store
        local.get 3
        local.get 6
        i32.store offset=24
        local.get 3
        local.get 5
        i64.load offset=24 align=4
        i64.store offset=8
        local.get 5
        i64.load offset=8 align=4
        local.set 7
        local.get 5
        i64.load offset=16 align=4
        local.set 8
        local.get 3
        local.get 5
        i32.load8_u offset=32
        i32.store8 offset=56
        local.get 3
        local.get 5
        i32.load offset=4
        i32.store offset=28
        local.get 3
        local.get 8
        i64.store offset=40
        local.get 3
        local.get 7
        i64.store offset=32
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
        call_indirect (type 5)
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=48
        i32.const 1055835
        i32.const 2
        local.get 3
        i32.load offset=52
        i32.load offset=12
        call_indirect (type 7)
        local.set 4
        br 1 (;@1;)
      end
      local.get 1
      local.get 5
      local.get 2
      i32.load offset=12
      call_indirect (type 5)
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
    global.set $__stack_pointer)
  (func $_ZN4core3fmt8builders8DebugSet5entry17h3f8073bdf6327246E (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN4core3fmt8builders10DebugInner5entry17h2153b0224d82568eE
    local.get 0)
  (func $_ZN4core3fmt8builders9DebugList6finish17hbd393ccae3ab8f66E (type 4) (param i32) (result i32)
    (local i32)
    i32.const 1
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=4
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.tee 0
      i32.load offset=24
      i32.const 1055884
      i32.const 1
      local.get 0
      i32.load offset=28
      i32.load offset=12
      call_indirect (type 7)
      local.set 1
    end
    local.get 1)
  (func $_ZN4core3fmt9Formatter12pad_integral17h4317e5bcf4d85e19E (type 15) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.eqz
        br_if 0 (;@2;)
        i32.const 43
        i32.const 1114112
        local.get 0
        i32.load
        local.tee 1
        i32.const 1
        i32.and
        local.tee 6
        select
        local.set 7
        local.get 6
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
      local.set 1
      i32.const 45
      local.set 7
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 16
          i32.lt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          call $_ZN4core3str5count14do_count_chars17h0e4ced0136b32880E
          local.set 6
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 3
          br_if 0 (;@3;)
          i32.const 0
          local.set 6
          br 1 (;@2;)
        end
        local.get 3
        i32.const 3
        i32.and
        local.set 9
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const -1
            i32.add
            i32.const 3
            i32.ge_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 6
            local.get 2
            local.set 1
            br 1 (;@3;)
          end
          local.get 3
          i32.const -4
          i32.and
          local.set 10
          i32.const 0
          local.set 6
          local.get 2
          local.set 1
          loop  ;; label = @4
            local.get 6
            local.get 1
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 1
            i32.const 1
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 1
            i32.const 2
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 1
            i32.const 3
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 6
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 10
            i32.const -4
            i32.add
            local.tee 10
            br_if 0 (;@4;)
          end
        end
        local.get 9
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 6
          local.get 1
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 6
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 9
          i32.const -1
          i32.add
          local.tee 9
          br_if 0 (;@3;)
        end
      end
      local.get 6
      local.get 8
      i32.add
      local.set 8
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=8
        br_if 0 (;@2;)
        i32.const 1
        local.set 1
        local.get 0
        local.get 7
        local.get 2
        local.get 3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hf3b5eaf77ecc342dE
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
        call_indirect (type 7)
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.const 12
                i32.add
                i32.load
                local.tee 6
                local.get 8
                i32.le_u
                br_if 0 (;@6;)
                local.get 0
                i32.load8_u
                i32.const 8
                i32.and
                br_if 4 (;@2;)
                i32.const 0
                local.set 1
                local.get 6
                local.get 8
                i32.sub
                local.tee 9
                local.set 8
                i32.const 1
                local.get 0
                i32.load8_u offset=32
                local.tee 6
                local.get 6
                i32.const 3
                i32.eq
                select
                i32.const 3
                i32.and
                br_table 3 (;@3;) 1 (;@5;) 2 (;@4;) 3 (;@3;)
              end
              i32.const 1
              local.set 1
              local.get 0
              local.get 7
              local.get 2
              local.get 3
              call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hf3b5eaf77ecc342dE
              br_if 4 (;@1;)
              local.get 0
              i32.load offset=24
              local.get 4
              local.get 5
              local.get 0
              i32.const 28
              i32.add
              i32.load
              i32.load offset=12
              call_indirect (type 7)
              return
            end
            i32.const 0
            local.set 8
            local.get 9
            local.set 1
            br 1 (;@3;)
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
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        i32.const 28
        i32.add
        i32.load
        local.set 9
        local.get 0
        i32.load offset=4
        local.set 6
        local.get 0
        i32.load offset=24
        local.set 10
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i32.const -1
            i32.add
            local.tee 1
            i32.eqz
            br_if 1 (;@3;)
            local.get 10
            local.get 6
            local.get 9
            i32.load offset=16
            call_indirect (type 5)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        i32.const 1
        local.set 1
        local.get 6
        i32.const 1114112
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        local.get 7
        local.get 2
        local.get 3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hf3b5eaf77ecc342dE
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=24
        local.get 4
        local.get 5
        local.get 0
        i32.load offset=28
        i32.load offset=12
        call_indirect (type 7)
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=28
        local.set 9
        local.get 0
        i32.load offset=24
        local.set 0
        i32.const 0
        local.set 1
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              local.get 8
              local.get 1
              i32.ne
              br_if 0 (;@5;)
              local.get 8
              local.set 1
              br 2 (;@3;)
            end
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 0
            local.get 6
            local.get 9
            i32.load offset=16
            call_indirect (type 5)
            i32.eqz
            br_if 0 (;@4;)
          end
          local.get 1
          i32.const -1
          i32.add
          local.set 1
        end
        local.get 1
        local.get 8
        i32.lt_u
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      i32.load offset=4
      local.set 11
      local.get 0
      i32.const 48
      i32.store offset=4
      local.get 0
      i32.load8_u offset=32
      local.set 12
      i32.const 1
      local.set 1
      local.get 0
      i32.const 1
      i32.store8 offset=32
      local.get 0
      local.get 7
      local.get 2
      local.get 3
      call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hf3b5eaf77ecc342dE
      br_if 0 (;@1;)
      i32.const 0
      local.set 1
      local.get 6
      local.get 8
      i32.sub
      local.tee 9
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 1
            local.get 0
            i32.load8_u offset=32
            local.tee 6
            local.get 6
            i32.const 3
            i32.eq
            select
            i32.const 3
            i32.and
            br_table 2 (;@2;) 0 (;@4;) 1 (;@3;) 2 (;@2;)
          end
          i32.const 0
          local.set 3
          local.get 9
          local.set 1
          br 1 (;@2;)
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
        local.set 3
      end
      local.get 1
      i32.const 1
      i32.add
      local.set 1
      local.get 0
      i32.const 28
      i32.add
      i32.load
      local.set 9
      local.get 0
      i32.load offset=4
      local.set 6
      local.get 0
      i32.load offset=24
      local.set 10
      block  ;; label = @2
        loop  ;; label = @3
          local.get 1
          i32.const -1
          i32.add
          local.tee 1
          i32.eqz
          br_if 1 (;@2;)
          local.get 10
          local.get 6
          local.get 9
          i32.load offset=16
          call_indirect (type 5)
          i32.eqz
          br_if 0 (;@3;)
        end
        i32.const 1
        return
      end
      i32.const 1
      local.set 1
      local.get 6
      i32.const 1114112
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=24
      local.get 4
      local.get 5
      local.get 0
      i32.load offset=28
      i32.load offset=12
      call_indirect (type 7)
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=28
      local.set 1
      local.get 0
      i32.load offset=24
      local.set 10
      i32.const 0
      local.set 9
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          local.get 9
          i32.eq
          br_if 1 (;@2;)
          local.get 9
          i32.const 1
          i32.add
          local.set 9
          local.get 10
          local.get 6
          local.get 1
          i32.load offset=16
          call_indirect (type 5)
          i32.eqz
          br_if 0 (;@3;)
        end
        i32.const 1
        local.set 1
        local.get 9
        i32.const -1
        i32.add
        local.get 3
        i32.lt_u
        br_if 1 (;@1;)
      end
      local.get 0
      local.get 12
      i32.store8 offset=32
      local.get 0
      local.get 11
      i32.store offset=4
      i32.const 0
      return
    end
    local.get 1)
  (func $_ZN4core3fmt5Write10write_char17h1f0df5f4462cbb0dE (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
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
            i32.const 12
            i32.shr_u
            i32.const 224
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
            i32.store8 offset=13
            i32.const 3
            local.set 1
            br 3 (;@1;)
          end
          local.get 2
          local.get 1
          i32.store8 offset=12
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
        i32.const 192
        i32.or
        i32.store8 offset=12
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
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h8623112eeafe2800E
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN4core3fmt5Write9write_fmt17hf0c47637e4093cd4E (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
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
    i32.const 1056088
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h2ef748b44faf8d91E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hfbe3f7728aab085fE (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 2
    call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h8623112eeafe2800E)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4bc7902170802e75E (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 0
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
            i32.const 12
            i32.shr_u
            i32.const 224
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
            i32.store8 offset=13
            i32.const 3
            local.set 1
            br 3 (;@1;)
          end
          local.get 2
          local.get 1
          i32.store8 offset=12
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
        i32.const 192
        i32.or
        i32.store8 offset=12
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
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h8623112eeafe2800E
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h0f1bb392b394ed85E (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
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
    i32.const 1056088
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h2ef748b44faf8d91E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN4core3str5count14do_count_chars17h0e4ced0136b32880E (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 3
        i32.add
        i32.const -4
        i32.and
        local.tee 2
        local.get 0
        i32.sub
        local.tee 3
        local.get 1
        i32.gt_u
        br_if 0 (;@2;)
        local.get 3
        i32.const 4
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        i32.sub
        local.tee 4
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        local.get 4
        i32.const 3
        i32.and
        local.set 5
        i32.const 0
        local.set 6
        i32.const 0
        local.set 1
        block  ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.const 3
          i32.and
          local.set 7
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              local.get 0
              i32.const -1
              i32.xor
              i32.add
              i32.const 3
              i32.ge_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 1
              local.get 0
              local.set 2
              br 1 (;@4;)
            end
            local.get 3
            i32.const -4
            i32.and
            local.set 8
            i32.const 0
            local.set 1
            local.get 0
            local.set 2
            loop  ;; label = @5
              local.get 1
              local.get 2
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 2
              i32.const 1
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 2
              i32.const 2
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 2
              i32.const 3
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.set 1
              local.get 2
              i32.const 4
              i32.add
              local.set 2
              local.get 8
              i32.const -4
              i32.add
              local.tee 8
              br_if 0 (;@5;)
            end
          end
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 1
            local.get 2
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 1
            local.get 2
            i32.const 1
            i32.add
            local.set 2
            local.get 7
            i32.const -1
            i32.add
            local.tee 7
            br_if 0 (;@4;)
          end
        end
        local.get 0
        local.get 3
        i32.add
        local.set 0
        block  ;; label = @3
          local.get 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 4
          i32.const -4
          i32.and
          i32.add
          local.tee 2
          i32.load8_s
          i32.const -65
          i32.gt_s
          local.set 6
          local.get 5
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          local.get 6
          local.get 2
          i32.load8_s offset=1
          i32.const -65
          i32.gt_s
          i32.add
          local.set 6
          local.get 5
          i32.const 2
          i32.eq
          br_if 0 (;@3;)
          local.get 6
          local.get 2
          i32.load8_s offset=2
          i32.const -65
          i32.gt_s
          i32.add
          local.set 6
        end
        local.get 4
        i32.const 2
        i32.shr_u
        local.set 3
        local.get 6
        local.get 1
        i32.add
        local.set 8
        loop  ;; label = @3
          local.get 0
          local.set 6
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 3
          i32.const 192
          local.get 3
          i32.const 192
          i32.lt_u
          select
          local.tee 4
          i32.const 3
          i32.and
          local.set 5
          local.get 4
          i32.const 2
          i32.shl
          local.set 9
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.const 252
              i32.and
              local.tee 10
              i32.const 2
              i32.shl
              local.tee 0
              br_if 0 (;@5;)
              i32.const 0
              local.set 2
              br 1 (;@4;)
            end
            local.get 6
            local.get 0
            i32.add
            local.set 7
            i32.const 0
            local.set 2
            local.get 6
            local.set 0
            loop  ;; label = @5
              local.get 0
              i32.const 12
              i32.add
              i32.load
              local.tee 1
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 1
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 0
              i32.const 8
              i32.add
              i32.load
              local.tee 1
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 1
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.tee 1
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 1
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 0
              i32.load
              local.tee 1
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 1
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 2
              i32.add
              i32.add
              i32.add
              i32.add
              local.set 2
              local.get 0
              i32.const 16
              i32.add
              local.tee 0
              local.get 7
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 6
          local.get 9
          i32.add
          local.set 0
          local.get 3
          local.get 4
          i32.sub
          local.set 3
          local.get 2
          i32.const 8
          i32.shr_u
          i32.const 16711935
          i32.and
          local.get 2
          i32.const 16711935
          i32.and
          i32.add
          i32.const 65537
          i32.mul
          i32.const 16
          i32.shr_u
          local.get 8
          i32.add
          local.set 8
          local.get 5
          i32.eqz
          br_if 0 (;@3;)
        end
        local.get 6
        local.get 10
        i32.const 2
        i32.shl
        i32.add
        local.set 0
        local.get 5
        i32.const 1073741823
        i32.add
        local.tee 4
        i32.const 1073741823
        i32.and
        local.tee 2
        i32.const 1
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        local.set 3
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 3
            i32.ge_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 1
          i32.const 2147483644
          i32.and
          local.set 1
          i32.const 0
          local.set 2
          loop  ;; label = @4
            local.get 0
            i32.const 12
            i32.add
            i32.load
            local.tee 7
            i32.const -1
            i32.xor
            i32.const 7
            i32.shr_u
            local.get 7
            i32.const 6
            i32.shr_u
            i32.or
            i32.const 16843009
            i32.and
            local.get 0
            i32.const 8
            i32.add
            i32.load
            local.tee 7
            i32.const -1
            i32.xor
            i32.const 7
            i32.shr_u
            local.get 7
            i32.const 6
            i32.shr_u
            i32.or
            i32.const 16843009
            i32.and
            local.get 0
            i32.const 4
            i32.add
            i32.load
            local.tee 7
            i32.const -1
            i32.xor
            i32.const 7
            i32.shr_u
            local.get 7
            i32.const 6
            i32.shr_u
            i32.or
            i32.const 16843009
            i32.and
            local.get 0
            i32.load
            local.tee 7
            i32.const -1
            i32.xor
            i32.const 7
            i32.shr_u
            local.get 7
            i32.const 6
            i32.shr_u
            i32.or
            i32.const 16843009
            i32.and
            local.get 2
            i32.add
            i32.add
            i32.add
            i32.add
            local.set 2
            local.get 0
            i32.const 16
            i32.add
            local.set 0
            local.get 1
            i32.const -4
            i32.add
            local.tee 1
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.const -1073741823
          i32.add
          local.set 1
          loop  ;; label = @4
            local.get 0
            i32.load
            local.tee 7
            i32.const -1
            i32.xor
            i32.const 7
            i32.shr_u
            local.get 7
            i32.const 6
            i32.shr_u
            i32.or
            i32.const 16843009
            i32.and
            local.get 2
            i32.add
            local.set 2
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            local.get 1
            i32.const -1
            i32.add
            local.tee 1
            br_if 0 (;@4;)
          end
        end
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 16711935
        i32.and
        local.get 2
        i32.const 16711935
        i32.and
        i32.add
        i32.const 65537
        i32.mul
        i32.const 16
        i32.shr_u
        local.get 8
        i32.add
        return
      end
      block  ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        i32.const 0
        return
      end
      local.get 1
      i32.const 3
      i32.and
      local.set 2
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const -1
          i32.add
          i32.const 3
          i32.ge_u
          br_if 0 (;@3;)
          i32.const 0
          local.set 8
          br 1 (;@2;)
        end
        local.get 1
        i32.const -4
        i32.and
        local.set 1
        i32.const 0
        local.set 8
        loop  ;; label = @3
          local.get 8
          local.get 0
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.get 0
          i32.const 1
          i32.add
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.get 0
          i32.const 2
          i32.add
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.get 0
          i32.const 3
          i32.add
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 8
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          local.get 1
          i32.const -4
          i32.add
          local.tee 1
          br_if 0 (;@3;)
        end
      end
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 8
        local.get 0
        i32.load8_s
        i32.const -65
        i32.gt_s
        i32.add
        local.set 8
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 8)
  (func $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hf3b5eaf77ecc342dE (type 8) (param i32 i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 1114112
          i32.eq
          br_if 0 (;@3;)
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
          call_indirect (type 5)
          br_if 1 (;@2;)
        end
        local.get 2
        br_if 1 (;@1;)
        i32.const 0
        local.set 4
      end
      local.get 4
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
    call_indirect (type 7))
  (func $_ZN4core3fmt9Formatter9write_fmt17hec9643383b3d06f7E (type 5) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.const 28
    i32.add
    i32.load
    local.set 3
    local.get 0
    i32.load offset=24
    local.set 0
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
    local.get 0
    local.get 3
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h2ef748b44faf8d91E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN4core3fmt9Formatter15debug_lower_hex17h94d0dcacea6d66a5E (type 4) (param i32) (result i32)
    local.get 0
    i32.load8_u
    i32.const 16
    i32.and
    i32.const 4
    i32.shr_u)
  (func $_ZN4core3fmt9Formatter15debug_upper_hex17h8aed1da6860e1649E (type 4) (param i32) (result i32)
    local.get 0
    i32.load8_u
    i32.const 32
    i32.and
    i32.const 5
    i32.shr_u)
  (func $_ZN4core3fmt9Formatter12debug_struct17h3b10dc23d3bd99b0E (type 11) (param i32 i32 i32 i32)
    local.get 1
    i32.load offset=24
    local.get 2
    local.get 3
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 7)
    local.set 2
    local.get 0
    i32.const 0
    i32.store8 offset=5
    local.get 0
    local.get 2
    i32.store8 offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_ZN4core3fmt9Formatter11debug_tuple17h7aa349266244812cE (type 11) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.load offset=24
    local.get 2
    local.get 3
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 7)
    i32.store8 offset=8
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 3
    i32.eqz
    i32.store8 offset=9
    local.get 0
    i32.const 0
    i32.store offset=4)
  (func $_ZN4core3fmt9Formatter10debug_list17h30ba90f4f5195486E (type 3) (param i32 i32)
    (local i32)
    local.get 1
    i32.load offset=24
    i32.const 1055866
    i32.const 1
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 7)
    local.set 2
    local.get 0
    i32.const 0
    i32.store8 offset=5
    local.get 0
    local.get 2
    i32.store8 offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17hb997cbd94fa7b7fcE (type 5) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.load8_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 1056116
      i32.const 5
      call $_ZN4core3fmt9Formatter3pad17hdffb817b8a6961faE
      return
    end
    local.get 1
    i32.const 1056112
    i32.const 4
    call $_ZN4core3fmt9Formatter3pad17hdffb817b8a6961faE)
  (func $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hfc8318cab0d901c2E (type 7) (param i32 i32 i32) (result i32)
    local.get 2
    local.get 0
    local.get 1
    call $_ZN4core3fmt9Formatter3pad17hdffb817b8a6961faE)
  (func $_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h52c162147e556c68E (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 1
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load offset=24
      local.tee 4
      i32.const 39
      local.get 1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=16
      local.tee 5
      call_indirect (type 5)
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      i32.load
      i32.const 257
      call $_ZN4core4char7methods22_$LT$impl$u20$char$GT$16escape_debug_ext17h409c04aceb3978cbE
      local.get 2
      i32.const 12
      i32.add
      i32.load8_u
      local.set 6
      local.get 2
      i32.const 8
      i32.add
      i32.load
      local.set 7
      local.get 2
      i32.load
      local.set 1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load offset=4
            local.tee 8
            i32.const 1114112
            i32.eq
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 1
              local.set 0
              i32.const 92
              local.set 3
              i32.const 1
              local.set 1
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      br_table 7 (;@2;) 1 (;@8;) 3 (;@6;) 0 (;@9;) 7 (;@2;)
                    end
                    local.get 6
                    i32.const 255
                    i32.and
                    local.set 0
                    i32.const 0
                    local.set 6
                    i32.const 3
                    local.set 1
                    i32.const 125
                    local.set 3
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          br_table 9 (;@2;) 5 (;@6;) 4 (;@7;) 0 (;@11;) 1 (;@10;) 2 (;@9;) 9 (;@2;)
                        end
                        i32.const 2
                        local.set 6
                        i32.const 123
                        local.set 3
                        br 4 (;@6;)
                      end
                      i32.const 3
                      local.set 1
                      i32.const 117
                      local.set 3
                      i32.const 3
                      local.set 6
                      br 3 (;@6;)
                    end
                    i32.const 4
                    local.set 6
                    i32.const 92
                    local.set 3
                    br 2 (;@6;)
                  end
                  i32.const 0
                  local.set 1
                  local.get 8
                  local.set 3
                  br 1 (;@6;)
                end
                i32.const 2
                i32.const 1
                local.get 7
                select
                local.set 6
                i32.const 48
                i32.const 87
                local.get 8
                local.get 7
                i32.const 2
                i32.shl
                i32.shr_u
                i32.const 15
                i32.and
                local.tee 3
                i32.const 10
                i32.lt_u
                select
                local.get 3
                i32.add
                local.set 3
                local.get 7
                i32.const -1
                i32.add
                i32.const 0
                local.get 7
                select
                local.set 7
              end
              local.get 4
              local.get 3
              local.get 5
              call_indirect (type 5)
              i32.eqz
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          loop  ;; label = @4
            local.get 1
            local.set 0
            i32.const 92
            local.set 3
            i32.const 1
            local.set 1
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                br_table 4 (;@2;) 4 (;@2;) 1 (;@5;) 0 (;@6;) 4 (;@2;)
              end
              local.get 6
              i32.const 255
              i32.and
              local.set 0
              i32.const 0
              local.set 6
              i32.const 3
              local.set 1
              i32.const 125
              local.set 3
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      br_table 7 (;@2;) 4 (;@5;) 3 (;@6;) 2 (;@7;) 1 (;@8;) 0 (;@9;) 7 (;@2;)
                    end
                    i32.const 4
                    local.set 6
                    i32.const 92
                    local.set 3
                    br 3 (;@5;)
                  end
                  i32.const 3
                  local.set 1
                  i32.const 117
                  local.set 3
                  i32.const 3
                  local.set 6
                  br 2 (;@5;)
                end
                i32.const 2
                local.set 6
                i32.const 123
                local.set 3
                br 1 (;@5;)
              end
              i32.const 2
              i32.const 1
              local.get 7
              select
              local.set 6
              i32.const 1114112
              local.get 7
              i32.const 2
              i32.shl
              i32.shr_u
              i32.const 1
              i32.and
              i32.const 48
              i32.or
              local.set 3
              local.get 7
              i32.const -1
              i32.add
              i32.const 0
              local.get 7
              select
              local.set 7
            end
            local.get 4
            local.get 3
            local.get 5
            call_indirect (type 5)
            i32.eqz
            br_if 0 (;@4;)
          end
        end
        i32.const 1
        local.set 3
        br 1 (;@1;)
      end
      local.get 4
      i32.const 39
      local.get 5
      call_indirect (type 5)
      local.set 3
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $_ZN4core5slice6memchr7memrchr17hfd97be038f192a1eE (type 11) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 3
    i32.const 0
    local.get 3
    local.get 2
    i32.const 3
    i32.add
    i32.const -4
    i32.and
    local.get 2
    i32.sub
    local.tee 4
    i32.sub
    i32.const 7
    i32.and
    local.get 3
    local.get 4
    i32.lt_u
    local.tee 5
    select
    local.tee 6
    i32.sub
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        local.get 6
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 6
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              local.get 3
              i32.add
              local.tee 6
              local.get 2
              local.get 7
              i32.add
              local.tee 8
              i32.sub
              local.set 9
              block  ;; label = @6
                local.get 6
                i32.const -1
                i32.add
                local.tee 10
                i32.load8_u
                local.get 1
                i32.const 255
                i32.and
                i32.ne
                br_if 0 (;@6;)
                local.get 9
                i32.const -1
                i32.add
                local.get 7
                i32.add
                local.set 6
                br 2 (;@4;)
              end
              local.get 8
              local.get 10
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 6
                i32.const -2
                i32.add
                local.tee 10
                i32.load8_u
                local.get 1
                i32.const 255
                i32.and
                i32.ne
                br_if 0 (;@6;)
                local.get 9
                i32.const -2
                i32.add
                local.get 7
                i32.add
                local.set 6
                br 2 (;@4;)
              end
              local.get 8
              local.get 10
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 6
                i32.const -3
                i32.add
                local.tee 10
                i32.load8_u
                local.get 1
                i32.const 255
                i32.and
                i32.ne
                br_if 0 (;@6;)
                local.get 9
                i32.const -3
                i32.add
                local.get 7
                i32.add
                local.set 6
                br 2 (;@4;)
              end
              local.get 8
              local.get 10
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 6
                i32.const -4
                i32.add
                local.tee 10
                i32.load8_u
                local.get 1
                i32.const 255
                i32.and
                i32.ne
                br_if 0 (;@6;)
                local.get 9
                i32.const -4
                i32.add
                local.get 7
                i32.add
                local.set 6
                br 2 (;@4;)
              end
              local.get 8
              local.get 10
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 6
                i32.const -5
                i32.add
                local.tee 10
                i32.load8_u
                local.get 1
                i32.const 255
                i32.and
                i32.ne
                br_if 0 (;@6;)
                local.get 9
                i32.const -5
                i32.add
                local.get 7
                i32.add
                local.set 6
                br 2 (;@4;)
              end
              local.get 8
              local.get 10
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 6
                i32.const -6
                i32.add
                local.tee 10
                i32.load8_u
                local.get 1
                i32.const 255
                i32.and
                i32.ne
                br_if 0 (;@6;)
                local.get 9
                i32.const -6
                i32.add
                local.get 7
                i32.add
                local.set 6
                br 2 (;@4;)
              end
              local.get 8
              local.get 10
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 6
                i32.const -7
                i32.add
                local.tee 6
                i32.load8_u
                local.get 1
                i32.const 255
                i32.and
                i32.ne
                br_if 0 (;@6;)
                local.get 9
                i32.const -7
                i32.add
                local.get 7
                i32.add
                local.set 6
                br 2 (;@4;)
              end
              local.get 8
              local.get 6
              i32.eq
              br_if 0 (;@5;)
              local.get 9
              i32.const -8
              i32.add
              local.get 7
              i32.add
              local.set 6
              br 1 (;@4;)
            end
            local.get 3
            local.get 4
            local.get 5
            select
            local.set 8
            local.get 1
            i32.const 255
            i32.and
            i32.const 16843009
            i32.mul
            local.set 4
            block  ;; label = @5
              loop  ;; label = @6
                local.get 7
                local.tee 6
                local.get 8
                i32.le_u
                br_if 1 (;@5;)
                local.get 6
                i32.const -8
                i32.add
                local.set 7
                local.get 2
                local.get 6
                i32.add
                local.tee 5
                i32.const -8
                i32.add
                i32.load
                local.get 4
                i32.xor
                local.tee 9
                i32.const -1
                i32.xor
                local.get 9
                i32.const -16843009
                i32.add
                i32.and
                local.get 5
                i32.const -4
                i32.add
                i32.load
                local.get 4
                i32.xor
                local.tee 5
                i32.const -1
                i32.xor
                local.get 5
                i32.const -16843009
                i32.add
                i32.and
                i32.or
                i32.const -2139062144
                i32.and
                i32.eqz
                br_if 0 (;@6;)
              end
            end
            local.get 6
            local.get 3
            i32.gt_u
            br_if 3 (;@1;)
            local.get 2
            i32.const -1
            i32.add
            local.set 4
            local.get 1
            i32.const 255
            i32.and
            local.set 5
            loop  ;; label = @5
              block  ;; label = @6
                local.get 6
                br_if 0 (;@6;)
                i32.const 0
                local.set 7
                br 3 (;@3;)
              end
              local.get 4
              local.get 6
              i32.add
              local.set 7
              local.get 6
              i32.const -1
              i32.add
              local.set 6
              local.get 7
              i32.load8_u
              local.get 5
              i32.ne
              br_if 0 (;@5;)
            end
          end
          i32.const 1
          local.set 7
        end
        local.get 0
        local.get 6
        i32.store offset=4
        local.get 0
        local.get 7
        i32.store
        return
      end
      local.get 7
      local.get 3
      local.get 6
      call $_ZN4core5slice5index26slice_start_index_len_fail17h4a9053b9acbf3e79E
      unreachable
    end
    local.get 6
    local.get 3
    local.get 6
    call $_ZN4core5slice5index24slice_end_index_len_fail17hf80e6eb70f53b009E
    unreachable)
  (func $_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h12e61027c854896bE (type 5) (param i32 i32) (result i32)
    local.get 0
    i64.load8_u
    i32.const 1
    local.get 1
    call $_ZN4core3fmt3num3imp7fmt_u6417h7a9b2bd468910652E)
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17h058fa8b23f28af11E (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load8_u
    local.set 3
    i32.const 0
    local.set 0
    loop  ;; label = @1
      local.get 2
      local.get 0
      i32.add
      i32.const 127
      i32.add
      i32.const 48
      i32.const 87
      local.get 3
      i32.const 15
      i32.and
      local.tee 4
      i32.const 10
      i32.lt_u
      select
      local.get 4
      i32.add
      i32.store8
      local.get 0
      i32.const -1
      i32.add
      local.set 0
      local.get 3
      i32.const 255
      i32.and
      local.tee 4
      i32.const 4
      i32.shr_u
      local.set 3
      local.get 4
      i32.const 15
      i32.gt_u
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 0
      i32.const 128
      i32.add
      local.tee 3
      i32.const 129
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      i32.const 128
      local.get 0
      call $_ZN4core5slice5index26slice_start_index_len_fail17h4a9053b9acbf3e79E
      unreachable
    end
    local.get 1
    i32.const 1
    i32.const 1055885
    i32.const 2
    local.get 2
    local.get 0
    i32.add
    i32.const 128
    i32.add
    i32.const 0
    local.get 0
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h4317e5bcf4d85e19E
    local.set 0
    local.get 2
    i32.const 128
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h2ab909d98eb1d84bE (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 0
    i32.const 0
    local.set 3
    loop  ;; label = @1
      local.get 2
      local.get 3
      i32.add
      i32.const 127
      i32.add
      i32.const 48
      i32.const 87
      local.get 0
      i32.const 15
      i32.and
      local.tee 4
      i32.const 10
      i32.lt_u
      select
      local.get 4
      i32.add
      i32.store8
      local.get 3
      i32.const -1
      i32.add
      local.set 3
      local.get 0
      i32.const 15
      i32.gt_u
      local.set 4
      local.get 0
      i32.const 4
      i32.shr_u
      local.set 0
      local.get 4
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 3
      i32.const 128
      i32.add
      local.tee 0
      i32.const 129
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 128
      local.get 0
      call $_ZN4core5slice5index26slice_start_index_len_fail17h4a9053b9acbf3e79E
      unreachable
    end
    local.get 1
    i32.const 1
    i32.const 1055885
    i32.const 2
    local.get 2
    local.get 3
    i32.add
    i32.const 128
    i32.add
    i32.const 0
    local.get 3
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h4317e5bcf4d85e19E
    local.set 0
    local.get 2
    i32.const 128
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h7de682af4b1661f3E (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 2
    global.set $__stack_pointer
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
              i64.load8_u
              i32.const 1
              local.get 1
              call $_ZN4core3fmt3num3imp7fmt_u6417h7a9b2bd468910652E
              local.set 0
              br 4 (;@1;)
            end
            local.get 0
            i32.load8_u
            local.set 3
            i32.const 0
            local.set 0
            loop  ;; label = @5
              local.get 2
              local.get 0
              i32.add
              i32.const 127
              i32.add
              i32.const 48
              i32.const 87
              local.get 3
              i32.const 15
              i32.and
              local.tee 4
              i32.const 10
              i32.lt_u
              select
              local.get 4
              i32.add
              i32.store8
              local.get 0
              i32.const -1
              i32.add
              local.set 0
              local.get 3
              i32.const 255
              i32.and
              local.tee 4
              i32.const 4
              i32.shr_u
              local.set 3
              local.get 4
              i32.const 15
              i32.gt_u
              br_if 0 (;@5;)
            end
            local.get 0
            i32.const 128
            i32.add
            local.tee 3
            i32.const 129
            i32.ge_u
            br_if 1 (;@3;)
            local.get 1
            i32.const 1
            i32.const 1055885
            i32.const 2
            local.get 2
            local.get 0
            i32.add
            i32.const 128
            i32.add
            i32.const 0
            local.get 0
            i32.sub
            call $_ZN4core3fmt9Formatter12pad_integral17h4317e5bcf4d85e19E
            local.set 0
            br 3 (;@1;)
          end
          local.get 0
          i32.load8_u
          local.set 3
          i32.const 0
          local.set 0
          loop  ;; label = @4
            local.get 2
            local.get 0
            i32.add
            i32.const 127
            i32.add
            i32.const 48
            i32.const 55
            local.get 3
            i32.const 15
            i32.and
            local.tee 4
            i32.const 10
            i32.lt_u
            select
            local.get 4
            i32.add
            i32.store8
            local.get 0
            i32.const -1
            i32.add
            local.set 0
            local.get 3
            i32.const 255
            i32.and
            local.tee 4
            i32.const 4
            i32.shr_u
            local.set 3
            local.get 4
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
          end
          local.get 0
          i32.const 128
          i32.add
          local.tee 3
          i32.const 129
          i32.ge_u
          br_if 1 (;@2;)
          local.get 1
          i32.const 1
          i32.const 1055885
          i32.const 2
          local.get 2
          local.get 0
          i32.add
          i32.const 128
          i32.add
          i32.const 0
          local.get 0
          i32.sub
          call $_ZN4core3fmt9Formatter12pad_integral17h4317e5bcf4d85e19E
          local.set 0
          br 2 (;@1;)
        end
        local.get 3
        i32.const 128
        local.get 0
        call $_ZN4core5slice5index26slice_start_index_len_fail17h4a9053b9acbf3e79E
        unreachable
      end
      local.get 3
      i32.const 128
      local.get 0
      call $_ZN4core5slice5index26slice_start_index_len_fail17h4a9053b9acbf3e79E
      unreachable
    end
    local.get 2
    i32.const 128
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt3num3imp7fmt_u6417h7a9b2bd468910652E (type 16) (param i64 i32 i32) (result i32)
    (local i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 39
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.const 10000
        i64.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 5
        br 1 (;@1;)
      end
      i32.const 39
      local.set 4
      loop  ;; label = @2
        local.get 3
        i32.const 9
        i32.add
        local.get 4
        i32.add
        local.tee 6
        i32.const -4
        i32.add
        local.get 0
        local.get 0
        i64.const 10000
        i64.div_u
        local.tee 5
        i64.const 10000
        i64.mul
        i64.sub
        i32.wrap_i64
        local.tee 7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 8
        i32.const 1
        i32.shl
        i32.const 1055887
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 6
        i32.const -2
        i32.add
        local.get 7
        local.get 8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1055887
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 4
        i32.const -4
        i32.add
        local.set 4
        local.get 0
        i64.const 99999999
        i64.gt_u
        local.set 6
        local.get 5
        local.set 0
        local.get 6
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 5
      i32.wrap_i64
      local.tee 6
      i32.const 99
      i32.le_u
      br_if 0 (;@1;)
      local.get 3
      i32.const 9
      i32.add
      local.get 4
      i32.const -2
      i32.add
      local.tee 4
      i32.add
      local.get 5
      i32.wrap_i64
      local.tee 6
      local.get 6
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 6
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1055887
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 10
        i32.lt_u
        br_if 0 (;@2;)
        local.get 3
        i32.const 9
        i32.add
        local.get 4
        i32.const -2
        i32.add
        local.tee 4
        i32.add
        local.get 6
        i32.const 1
        i32.shl
        i32.const 1055887
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      local.get 3
      i32.const 9
      i32.add
      local.get 4
      i32.const -1
      i32.add
      local.tee 4
      i32.add
      local.get 6
      i32.const 48
      i32.add
      i32.store8
    end
    local.get 2
    local.get 1
    i32.const 1055428
    i32.const 0
    local.get 3
    i32.const 9
    i32.add
    local.get 4
    i32.add
    i32.const 39
    local.get 4
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h4317e5bcf4d85e19E
    local.set 4
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h6e8c8fb0f0fc2100E (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load8_u
    local.set 3
    i32.const 0
    local.set 0
    loop  ;; label = @1
      local.get 2
      local.get 0
      i32.add
      i32.const 127
      i32.add
      i32.const 48
      i32.const 55
      local.get 3
      i32.const 15
      i32.and
      local.tee 4
      i32.const 10
      i32.lt_u
      select
      local.get 4
      i32.add
      i32.store8
      local.get 0
      i32.const -1
      i32.add
      local.set 0
      local.get 3
      i32.const 255
      i32.and
      local.tee 4
      i32.const 4
      i32.shr_u
      local.set 3
      local.get 4
      i32.const 15
      i32.gt_u
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 0
      i32.const 128
      i32.add
      local.tee 3
      i32.const 129
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      i32.const 128
      local.get 0
      call $_ZN4core5slice5index26slice_start_index_len_fail17h4a9053b9acbf3e79E
      unreachable
    end
    local.get 1
    i32.const 1
    i32.const 1055885
    i32.const 2
    local.get 2
    local.get 0
    i32.add
    i32.const 128
    i32.add
    i32.const 0
    local.get 0
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h4317e5bcf4d85e19E
    local.set 0
    local.get 2
    i32.const 128
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h9160270fe535dfe0E (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 0
    i32.const 0
    local.set 3
    loop  ;; label = @1
      local.get 2
      local.get 3
      i32.add
      i32.const 127
      i32.add
      i32.const 48
      i32.const 55
      local.get 0
      i32.const 15
      i32.and
      local.tee 4
      i32.const 10
      i32.lt_u
      select
      local.get 4
      i32.add
      i32.store8
      local.get 3
      i32.const -1
      i32.add
      local.set 3
      local.get 0
      i32.const 15
      i32.gt_u
      local.set 4
      local.get 0
      i32.const 4
      i32.shr_u
      local.set 0
      local.get 4
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 3
      i32.const 128
      i32.add
      local.tee 0
      i32.const 129
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 128
      local.get 0
      call $_ZN4core5slice5index26slice_start_index_len_fail17h4a9053b9acbf3e79E
      unreachable
    end
    local.get 1
    i32.const 1
    i32.const 1055885
    i32.const 2
    local.get 2
    local.get 3
    i32.add
    i32.const 128
    i32.add
    i32.const 0
    local.get 3
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h4317e5bcf4d85e19E
    local.set 0
    local.get 2
    i32.const 128
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9e35fc35ca15d905E (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.tee 0
    i64.extend_i32_u
    local.get 0
    i32.const -1
    i32.xor
    i64.extend_i32_s
    i64.const 1
    i64.add
    local.get 0
    i32.const -1
    i32.gt_s
    local.tee 0
    select
    local.get 0
    local.get 1
    call $_ZN4core3fmt3num3imp7fmt_u6417h7a9b2bd468910652E)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h386753199df0e53eE (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h7de682af4b1661f3E)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4e1a3fe3a59d592bE (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h8571265841c07f2bE)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h989ed6e909270364E (type 5) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 0
        i32.load8_u
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=24
        i32.const 1058464
        i32.const 4
        local.get 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.load offset=24
      i32.const 1058460
      i32.const 4
      local.get 1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 7)
      i32.store8 offset=8
      local.get 2
      local.get 1
      i32.store
      local.get 2
      i32.const 0
      i32.store8 offset=9
      local.get 2
      i32.const 0
      i32.store offset=4
      i32.const 1
      local.set 1
      local.get 2
      local.get 0
      i32.const 1
      i32.add
      i32.store offset=12
      local.get 2
      local.get 2
      i32.const 12
      i32.add
      i32.const 1055868
      call $_ZN4core3fmt8builders10DebugTuple5field17he06b0dd27394f923E
      drop
      local.get 2
      i32.load8_u offset=8
      local.set 0
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          local.tee 3
          br_if 0 (;@3;)
          local.get 0
          local.set 1
          br 1 (;@2;)
        end
        local.get 0
        i32.const 255
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.load
        local.set 0
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 2
          i32.load8_u offset=9
          i32.const 255
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.load8_u
          i32.const 4
          i32.and
          br_if 0 (;@3;)
          i32.const 1
          local.set 1
          local.get 0
          i32.load offset=24
          i32.const 1055864
          i32.const 1
          local.get 0
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 7)
          br_if 1 (;@2;)
        end
        local.get 0
        i32.load offset=24
        i32.const 1055428
        i32.const 1
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        local.set 1
      end
      local.get 1
      i32.const 255
      i32.and
      i32.const 0
      i32.ne
      local.set 1
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he7cf4a535b506ed0E (type 5) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.load offset=24
    i32.const 1058484
    i32.const 9
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 7)
    local.set 3
    local.get 2
    i32.const 0
    i32.store8 offset=5
    local.get 2
    local.get 3
    i32.store8 offset=4
    local.get 2
    local.get 1
    i32.store
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    i32.const 1058493
    i32.const 11
    local.get 2
    i32.const 12
    i32.add
    i32.const 1058468
    call $_ZN4core3fmt8builders11DebugStruct5field17hb9d3b8fcd126795aE
    local.set 1
    local.get 2
    local.get 0
    i32.const 4
    i32.add
    i32.store offset=12
    local.get 1
    i32.const 1058504
    i32.const 9
    local.get 2
    i32.const 12
    i32.add
    i32.const 1058516
    call $_ZN4core3fmt8builders11DebugStruct5field17hb9d3b8fcd126795aE
    drop
    local.get 2
    i32.load8_u offset=4
    local.set 1
    block  ;; label = @1
      local.get 2
      i32.load8_u offset=5
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 255
      i32.and
      local.set 0
      i32.const 1
      local.set 1
      local.get 0
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        i32.load
        local.tee 1
        i32.load8_u
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=24
        i32.const 1055859
        i32.const 2
        local.get 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        local.set 1
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=24
      i32.const 1055845
      i32.const 1
      local.get 1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 7)
      local.set 1
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
    i32.const 255
    i32.and
    i32.const 0
    i32.ne)
  (func $_start.command_export (type 0)
    call $__wasm_call_ctors
    call $_start
    call $__wasm_call_dtors)
  (func $main.command_export (type 5) (param i32 i32) (result i32)
    call $__wasm_call_ctors
    local.get 0
    local.get 1
    call $main
    call $__wasm_call_dtors)
  (table (;0;) 96 96 funcref)
  (memory (;0;) 17)
  (global $__stack_pointer (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1060032))
  (global (;2;) i32 (i32.const 1060024))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "_start" (func $_start.command_export))
  (export "main" (func $main.command_export))
  (elem (;0;) (i32.const 1) func $_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17he1573f359a613b09E $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hf807556a99eec383E $_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h4e24ac503c69cf8cE $_ZN10hola_mundo4main17h1d24e09ef05d951cE $_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h5d96065e7ee4deebE $_ZN70_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hfee43d8350e7c81bE $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h9e35fc35ca15d905E $_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h7d8e2150b648531dE $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h71856d8bb90844f7E $_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hd20c3c83e26fca9cE $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17ha4db52968ea7b1d8E $_ZN3std5alloc24default_alloc_error_hook17hdb1063b4360c7761E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcee21abe5ad85d30E $_ZN91_$LT$std..sys_common..backtrace.._print..DisplayBacktrace$u20$as$u20$core..fmt..Display$GT$3fmt17ha8c314372f104831E $_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h25762335f37de3d5E $_ZN4core3ptr100drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h335d06f119438367E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hc75216ac55fa425fE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h515886c78afc694cE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h130f99f124dee891E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hc459e8f6dc90b575E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h108c6840d23e7c95E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h2d571acce61e149dE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha3405926a339532fE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hd35612ea4bacacf5E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h64a94de5d3773034E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hea1067a2ece8e5ffE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h139bac260cf569fdE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h374b2d257d29c421E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h75ce0f4d68bbb2c5E $_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h45ce4f1f4061a2c4E $_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he7cf4a535b506ed0E $_ZN4core3ptr103drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$$GT$17hce023cec8850c6daE $_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h078290382cfa5a70E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hbe7df2b7f23aed8aE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0c6ee3d143a9dea1E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9de8a96643c354bE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h50bc5dc57687cc47E $_ZN4core3ptr87drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$$RF$mut$u20$$u5b$u8$u5d$$GT$$GT$17h4575af63a2563a2dE $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h6bd3182eabd7b129E $_ZN4core3fmt5Write10write_char17h61e215b863f0ca6dE $_ZN4core3fmt5Write9write_fmt17hcd88d4c641337d08E $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h29fd8facc77f926dE $_ZN4core3fmt5Write10write_char17hb7aaed9e8182ef91E $_ZN4core3fmt5Write9write_fmt17h199e7d453caedcf5E $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hcb53779818ae681cE $_ZN4core3fmt5Write10write_char17h358ec89c8ac32558E $_ZN4core3fmt5Write9write_fmt17h3ef9142786c68774E $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h8b8633a15344f1e2E $_ZN3std4sync4once4Once9call_once28_$u7b$$u7b$closure$u7d$$u7d$17h02a899a6c50ac4afE $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h8a071956dd7a48d2E $_ZN3std4sync4once4Once15call_once_force28_$u7b$$u7b$closure$u7d$$u7d$17hd4fa96228b9d3142E $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17h6e2e18814a5afd4dE $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$14write_vectored17h9452213f45728b86E $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$17is_write_vectored17h57899dce665a0655E $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$5flush17hcfbade330f02aea5E $_ZN3std2io5Write9write_all17h81bc6154e5530c81E $_ZN3std2io5Write18write_all_vectored17h43b8d14001c950f0E $_ZN3std2io5Write9write_fmt17h397b3193dd120aaaE $_ZN4core3ptr226drop_in_place$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$..from..StringError$GT$17h2170f7965e0d706dE $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17hfa05a960524aa24dE $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h819318eb55b75955E $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$17is_write_vectored17h3901fd8e7571a3d8E $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5flush17hde6ed85a18f77b85E $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hf3e99fae79f03350E $_ZN3std2io5Write18write_all_vectored17hbcf8a21dc4fe1a19E $_ZN3std2io5Write9write_fmt17hd0e7437d74f735c0E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h2c9ea59ee3a5dbc5E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17ha809a2d0acb08a8eE $_ZN4core3ptr70drop_in_place$LT$std..panicking..begin_panic_handler..PanicPayload$GT$17h347aec0313a987b0E $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h3b72f46d985fad41E $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h732efbeb5c8777a2E $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h067be35367d3ec76E $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h110f8caaa3159adfE $_ZN4core3ptr27drop_in_place$LT$$RF$u8$GT$17h3de8c8b7b68e1a45E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2fcc568f556cf2c7E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5c8a4b6fb91ea17dE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h03424ba6fb5b0ab3E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hf0310493bea7b2a3E $_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hd0cd50f8cd91e0c9E $_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h52c162147e556c68E $_ZN4core3ops8function6FnOnce9call_once17he53df7ea8b7a3903E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h03bb1cca26d727b7E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hff61c71d51b59022E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h68b1b36ef58af525E $_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17hef86815ca9672c46E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h2a4868d6a6f1ee50E $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h8623112eeafe2800E $_ZN4core3fmt5Write10write_char17h1f0df5f4462cbb0dE $_ZN4core3fmt5Write9write_fmt17hf0c47637e4093cd4E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h386753199df0e53eE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hfbe3f7728aab085fE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4bc7902170802e75E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h0f1bb392b394ed85E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4e1a3fe3a59d592bE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h989ed6e909270364E)
  (data $.rodata (i32.const 1048576) "invalid args\00\00\10\00\0c\00\00\00/rustc/e092d0b6b43f2de967af0887873151bb1c0b18d3/library/core/src/fmt/mod.rs\00\14\00\10\00K\00\00\00\86\01\00\00\0d\00\00\00\01\00\00\00\04\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\03\00\00\00Hola Mundo\0a\00\88\00\10\00\0b\00\00\00()\00\00\10\00\00\00\04\00\00\00\04\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\10\00\00\00\04\00\00\00\04\00\00\00\14\00\00\00\15\00\00\00\16\00\00\00\10\00\00\00\04\00\00\00\04\00\00\00\17\00\00\00\18\00\00\00\19\00\00\00\10\00\00\00\04\00\00\00\04\00\00\00\1a\00\00\00\1b\00\00\00\1c\00\00\00already borrowed\10\00\00\00\00\00\00\00\01\00\00\00\1d\00\00\00assertion failed: mid <= self.len()called `Option::unwrap()` on a `None` value\00\00\10\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00called `Result::unwrap()` on an `Err` value\00\10\00\00\00\08\00\00\00\04\00\00\00\1f\00\00\00 \00\00\00\08\00\00\00\04\00\00\00!\00\00\00\10\00\00\00\04\00\00\00\04\00\00\00\22\00\00\00\10\00\00\00\04\00\00\00\04\00\00\00#\00\00\00internal error: entered unreachable code/rustc/e092d0b6b43f2de967af0887873151bb1c0b18d3/library/alloc/src/vec/mod.rs\14\02\10\00L\00\00\00<\07\00\00$\00\00\00ErrOk\00\00\00\10\00\00\00\04\00\00\00\04\00\00\00$\00\00\00\10\00\00\00\04\00\00\00\04\00\00\00%\00\00\00mainfatal runtime error: \0a\00\00\9c\02\10\00\15\00\00\00\b1\02\10\00\01\00\00\00unwrap failed: CString::new(\22main\22) = \00\00\c4\02\10\00&\00\00\00library/std/src/rt.rs\00\00\00\f4\02\10\00\15\00\00\00_\00\00\00\0d\00\00\00use of std::thread::current() is not possible after the thread's local data has been destroyedlibrary/std/src/thread/mod.rs\00z\03\10\00\1d\00\00\00\a5\02\00\00#\00\00\00failed to generate unique thread ID: bitspace exhausted\00\a8\03\10\007\00\00\00z\03\10\00\1d\00\00\00\13\04\00\00\11\00\00\00z\03\10\00\1d\00\00\00\19\04\00\00*\00\00\00RUST_BACKTRACE\00\00\00\01\10\00\00\00\00\00: \00failed to write the buffered data#\04\10\00!\00\00\00\17\00\00\00library/std/src/io/buffered/bufwriter.rsP\04\10\00(\00\00\00\8d\00\00\00\12\00\00\00library/std/src/io/buffered/linewritershim.rs\00\00\00\88\04\10\00-\00\00\00\01\01\00\00)\00\00\00uncategorized errorother errorout of memoryunexpected end of fileunsupportedoperation interruptedargument list too longinvalid filenametoo many linkscross-device link or renamedeadlockexecutable file busyresource busyfile too largefilesystem quota exceededseek on unseekable fileno storage spacewrite zerotimed outinvalid datainvalid input parameterstale network file handlefilesystem loop or indirection limit (e.g. symlink loop)read-only filesystem or storage mediumdirectory not emptyis a directorynot a directoryoperation would blockentity already existsbroken pipenetwork downaddress not availableaddress in usenot connectedconnection abortednetwork unreachablehost unreachableconnection resetconnection refusedpermission deniedentity not found (os error )\00\00\00\00\01\10\00\00\00\00\00\b5\07\10\00\0b\00\00\00\c0\07\10\00\01\00\00\00failed to write whole buffer\dc\07\10\00\1c\00\00\00\17\00\00\00library/std/src/io/stdio.rs\00\04\08\10\00\1b\00\00\00o\02\00\00\13\00\00\00\04\08\10\00\1b\00\00\00\dc\02\00\00\14\00\00\00failed printing to \00@\08\10\00\13\00\00\00 \04\10\00\02\00\00\00\04\08\10\00\1b\00\00\00\f8\03\00\00\09\00\00\00stdoutlibrary/std/src/io/mod.rs\00z\08\10\00\19\00\00\00\0a\05\00\00\16\00\00\00z\08\10\00\19\00\00\00\f1\05\00\00!\00\00\00formatter error\00\b4\08\10\00\0f\00\00\00(\00\00\00&\00\00\00\0c\00\00\00\04\00\00\00'\00\00\00(\00\00\00)\00\00\00&\00\00\00\0c\00\00\00\04\00\00\00*\00\00\00+\00\00\00,\00\00\00&\00\00\00\0c\00\00\00\04\00\00\00-\00\00\00.\00\00\00/\00\00\00library/std/src/panic.rs\18\09\10\00\18\00\00\00\f0\00\00\00\12\00\00\00\10\00\00\00\04\00\00\00\04\00\00\000\00\00\001\00\00\00library/std/src/sync/once.rsT\09\10\00\1c\00\00\00\14\01\00\002\00\00\00\10\00\00\00\04\00\00\00\04\00\00\002\00\00\003\00\00\00T\09\10\00\1c\00\00\00N\01\00\00\0e\00\00\00T\09\10\00\1c\00\00\00N\01\00\001\00\00\00assertion failed: state_and_queue.addr() & STATE_MASK == RUNNINGOnce instance has previously been poisoned\00\00\f4\09\10\00*\00\00\00\02\00\00\00T\09\10\00\1c\00\00\00\ff\01\00\00\09\00\00\00T\09\10\00\1c\00\00\00\0c\02\00\005\00\00\00PoisonErrorstack backtrace:\0aW\0a\10\00\11\00\00\00note: Some details are omitted, run with `RUST_BACKTRACE=full` for a verbose backtrace.\0ap\0a\10\00X\00\00\00lock count overflow in reentrant mutexlibrary/std/src/sys_common/remutex.rs\00\f6\0a\10\00%\00\00\00\a7\00\00\00\0e\00\00\00library/std/src/sys_common/thread_info.rs\00\00\00,\0b\10\00)\00\00\00\16\00\00\003\00\00\00,\0b\10\00)\00\00\00+\00\00\00+\00\00\00assertion failed: thread_info.is_none()\00x\0b\10\00'\00\00\00memory allocation of  bytes failed\0a\00\a8\0b\10\00\15\00\00\00\bd\0b\10\00\0e\00\00\00library/std/src/alloc.rs\dc\0b\10\00\18\00\00\00D\01\00\00\09\00\00\00library/std/src/panicking.rs\04\0c\10\00\1c\00\00\00\11\01\00\00$\00\00\00Box<dyn Any><unnamed>\00\00\00\10\00\00\00\00\00\00\00\01\00\00\004\00\00\005\00\00\006\00\00\007\00\00\008\00\00\009\00\00\00:\00\00\00;\00\00\00\0c\00\00\00\04\00\00\00<\00\00\00=\00\00\00>\00\00\00?\00\00\00@\00\00\00A\00\00\00B\00\00\00thread '' panicked at '', \00\00\98\0c\10\00\08\00\00\00\a0\0c\10\00\0f\00\00\00\af\0c\10\00\03\00\00\00\b1\02\10\00\01\00\00\00note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace\0a\00\00\d4\0c\10\00N\00\00\00\04\0c\10\00\1c\00\00\00F\02\00\00\1f\00\00\00\04\0c\10\00\1c\00\00\00G\02\00\00\1e\00\00\00;\00\00\00\0c\00\00\00\04\00\00\00C\00\00\00\10\00\00\00\08\00\00\00\04\00\00\00D\00\00\00E\00\00\00\10\00\00\00\04\00\00\00F\00\00\00G\00\00\00\10\00\00\00\08\00\00\00\04\00\00\00H\00\00\00I\00\00\00thread panicked while processing panic. aborting.\0a\00\00\94\0d\10\002\00\00\00\0apanicked after panic::always_abort(), aborting.\0a\00\00\00\00\01\10\00\00\00\00\00\d0\0d\10\001\00\00\00thread panicked while panicking. aborting.\0a\00\14\0e\10\00+\00\00\00failed to initiate panic, error H\0e\10\00 \00\00\00advancing IoSlice beyond its length\00p\0e\10\00#\00\00\00library/std/src/sys/wasi/io.rs\00\00\9c\0e\10\00\1e\00\00\00\16\00\00\00\0d\00\00\00condvar wait not supported\00\00\cc\0e\10\00\1a\00\00\00library/std/src/sys/wasi/../unsupported/locks/condvar.rs\f0\0e\10\008\00\00\00\17\00\00\00\09\00\00\00cannot recursively acquire mutex8\0f\10\00 \00\00\00library/std/src/sys/wasi/../unsupported/locks/mutex.rs\00\00`\0f\10\006\00\00\00\17\00\00\00\09\00\00\00rwlock locked for writing\00\00\00\a8\0f\10\00\19\00\00\00strerror_r failure\00\00\cc\0f\10\00\12\00\00\00library/std/src/sys/wasi/os.rs\00\00\e8\0f\10\00\1e\00\00\00/\00\00\00\0d\00\00\00\e8\0f\10\00\1e\00\00\001\00\00\006\00\00\00\08\00\0e\00\0f\00?\00\02\00@\005\00\0d\00\04\00\03\00,\00\1b\00\1c\00I\00\14\00\06\004\000\00library/std/src/sys_common/thread_parker/generic.rs\00L\10\10\003\00\00\00'\00\00\00&\00\00\00inconsistent park state\00\90\10\10\00\17\00\00\00L\10\10\003\00\00\005\00\00\00\17\00\00\00park state changed unexpectedly\00\c0\10\10\00\1f\00\00\00L\10\10\003\00\00\002\00\00\00\11\00\00\00inconsistent state in unpark\f8\10\10\00\1c\00\00\00L\10\10\003\00\00\00l\00\00\00\12\00\00\00L\10\10\003\00\00\00z\00\00\00\1f\00\00\00\0e\00\00\00\10\00\00\00\16\00\00\00\15\00\00\00\0b\00\00\00\16\00\00\00\0d\00\00\00\0b\00\00\00\13\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\10\00\00\00\10\00\00\00\13\00\00\00\12\00\00\00\0d\00\00\00\0e\00\00\00\15\00\00\00\0c\00\00\00\0b\00\00\00\15\00\00\00\15\00\00\00\0f\00\00\00\0e\00\00\00\13\00\00\00&\00\00\008\00\00\00\19\00\00\00\17\00\00\00\0c\00\00\00\09\00\00\00\0a\00\00\00\10\00\00\00\17\00\00\00\19\00\00\00\0e\00\00\00\0d\00\00\00\14\00\00\00\08\00\00\00\1b\00\00\00O\05\10\00?\05\10\00)\05\10\00\14\05\10\00\09\05\10\00\f3\04\10\00\e6\04\10\00\db\04\10\00\c8\04\10\00\a5\07\10\00\a5\07\10\00\a5\07\10\00\a5\07\10\00\a5\07\10\00\a5\07\10\00\a5\07\10\00\a5\07\10\00\a5\07\10\00\a5\07\10\00\a5\07\10\00\a5\07\10\00\a5\07\10\00\a5\07\10\00\a5\07\10\00\a5\07\10\00\a5\07\10\00\a5\07\10\00\a5\07\10\00\a5\07\10\00\a5\07\10\00\a5\07\10\00\a5\07\10\00\a5\07\10\00\94\07\10\00\82\07\10\00r\07\10\00b\07\10\00O\07\10\00=\07\10\000\07\10\00\22\07\10\00\0d\07\10\00\01\07\10\00\f6\06\10\00\e1\06\10\00\cc\06\10\00\bd\06\10\00\af\06\10\00\9c\06\10\00v\06\10\00>\06\10\00%\06\10\00\0e\06\10\00\02\06\10\00\f9\05\10\00\ef\05\10\00\df\05\10\00\c8\05\10\00\af\05\10\00\a1\05\10\00\94\05\10\00\80\05\10\00x\05\10\00]\05\10\00/\00Success\00Illegal byte sequence\00Domain error\00Result not representable\00Not a tty\00Permission denied\00Operation not permitted\00No such file or directory\00No such process\00File exists\00Value too large for data type\00No space left on device\00Out of memory\00Resource busy\00Interrupted system call\00Resource temporarily unavailable\00Invalid seek\00Cross-device link\00Read-only file system\00Directory not empty\00Connection reset by peer\00Operation timed out\00Connection refused\00Host is unreachable\00Address in use\00Broken pipe\00I/O error\00No such device or address\00No such device\00Not a directory\00Is a directory\00Text file busy\00Exec format error\00Invalid argument\00Argument list too long\00Symbolic link loop\00Filename too long\00Too many open files in system\00No file descriptors available\00Bad file descriptor\00No child process\00Bad address\00File too large\00Too many links\00No locks available\00Resource deadlock would occur\00State not recoverable\00Previous owner died\00Operation canceled\00Function not implemented\00No message of desired type\00Identifier removed\00Link has been severed\00Protocol error\00Bad message\00Not a socket\00Destination address required\00Message too large\00Protocol wrong type for socket\00Protocol not available\00Protocol not supported\00Not supported\00Address family not supported by protocol\00Address not available\00Network is down\00Network unreachable\00Connection reset by network\00Connection aborted\00No buffer space available\00Socket is connected\00Socket not connected\00Operation already in progress\00Operation in progress\00Stale file handle\00Quota exceeded\00Multihop attempted\00Capabilities insufficient\00\00\00\00\00u\02N\00\d6\01\e2\04\b9\04\18\01\8e\05\ed\02\16\04\f2\00\97\03\01\038\05\af\01\82\01O\03/\04\1e\00\d4\05\a2\00\12\03\1e\03\c2\01\de\03\08\00\ac\05\00\01d\02\f1\01e\054\02\8c\02\cf\02-\03L\04\e3\05\9f\02\f8\04\1c\05\08\05\b1\02K\05\15\02x\00R\02<\03\f1\03\e4\00\c3\03}\04\cc\00\aa\03y\05$\02n\01m\03\22\04\ab\04D\00\fb\01\ae\00\83\03`\00\e5\01\07\04\94\04^\04+\00X\019\01\92\00\c2\05\9b\01C\02F\01\f6\05\00\00J\00\00\00\04\00\00\00\04\00\00\00K\00\00\00called `Option::unwrap()` on a `None` valuelibrary/alloc/src/raw_vec.rscapacity overflowC\1a\10\00\11\00\00\00'\1a\10\00\1c\00\00\00\05\02\00\00\05\00\00\00library/alloc/src/ffi/c_str.rs\00\00l\1a\10\00\1e\00\00\00\1b\01\00\007\00\00\00NulErrorJ\00\00\00\04\00\00\00\04\00\00\00L\00\00\00J\00\00\00\04\00\00\00\04\00\00\00M\00\00\00)..\00\c5\1a\10\00\02\00\00\00BorrowMutErrorindex out of bounds: the len is  but the index is \de\1a\10\00 \00\00\00\fe\1a\10\00\12\00\00\00called `Option::unwrap()` on a `None` value:\c4\1a\10\00\00\00\00\00K\1b\10\00\01\00\00\00K\1b\10\00\01\00\00\00U\00\00\00\00\00\00\00\01\00\00\00V\00\00\00panicked at '', \80\1b\10\00\01\00\00\00\81\1b\10\00\03\00\00\00\c4\1a\10\00\00\00\00\00matches!===assertion failed: `(left  right)`\0a  left: ``,\0a right: ``: \00\00\00\a7\1b\10\00\19\00\00\00\c0\1b\10\00\12\00\00\00\d2\1b\10\00\0c\00\00\00\de\1b\10\00\03\00\00\00`\00\00\00\a7\1b\10\00\19\00\00\00\c0\1b\10\00\12\00\00\00\d2\1b\10\00\0c\00\00\00\04\1c\10\00\01\00\00\00: \00\00\c4\1a\10\00\00\00\00\00(\1c\10\00\02\00\00\00U\00\00\00\0c\00\00\00\04\00\00\00W\00\00\00X\00\00\00Y\00\00\00     {\0a,\0a,  { ..\0a}, .. } { .. } }(\0a(,\0a[\00U\00\00\00\04\00\00\00\04\00\00\00Z\00\00\00]0x00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00U\00\00\00\04\00\00\00\04\00\00\00[\00\00\00\5c\00\00\00]\00\00\00truefalserange start index  out of range for slice of length \00\00\00y\1d\10\00\12\00\00\00\8b\1d\10\00\22\00\00\00library/core/src/slice/index.rs\00\c0\1d\10\00\1f\00\00\004\00\00\00\05\00\00\00range end index \f0\1d\10\00\10\00\00\00\8b\1d\10\00\22\00\00\00\c0\1d\10\00\1f\00\00\00I\00\00\00\05\00\00\00slice index starts at  but ends at \00 \1e\10\00\16\00\00\006\1e\10\00\0d\00\00\00\c0\1d\10\00\1f\00\00\00\5c\00\00\00\05\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\00\00\00\00\00\00\00\00\00\00\00library/core/src/str/mod.rs[...]byte index  is out of bounds of `\00\00\00\84\1f\10\00\0b\00\00\00\8f\1f\10\00\16\00\00\00\04\1c\10\00\01\00\00\00d\1f\10\00\1b\00\00\00k\00\00\00\09\00\00\00begin <= end ( <= ) when slicing `\00\00\d0\1f\10\00\0e\00\00\00\de\1f\10\00\04\00\00\00\e2\1f\10\00\10\00\00\00\04\1c\10\00\01\00\00\00d\1f\10\00\1b\00\00\00o\00\00\00\05\00\00\00d\1f\10\00\1b\00\00\00}\00\00\00-\00\00\00 is not a char boundary; it is inside  (bytes ) of `\84\1f\10\00\0b\00\00\004 \10\00&\00\00\00Z \10\00\08\00\00\00b \10\00\06\00\00\00\04\1c\10\00\01\00\00\00d\1f\10\00\1b\00\00\00\7f\00\00\00\05\00\00\00library/core/src/unicode/printable.rs\00\00\00\a0 \10\00%\00\00\00\1a\00\00\006\00\00\00\00\01\03\05\05\06\06\02\07\06\08\07\09\11\0a\1c\0b\19\0c\1a\0d\10\0e\0d\0f\04\10\03\12\12\13\09\16\01\17\04\18\01\19\03\1a\07\1b\01\1c\02\1f\16 \03+\03-\0b.\010\031\022\01\a7\02\a9\02\aa\04\ab\08\fa\02\fb\05\fd\02\fe\03\ff\09\adxy\8b\8d\a20WX\8b\8c\90\1c\dd\0e\0fKL\fb\fc./?\5c]_\e2\84\8d\8e\91\92\a9\b1\ba\bb\c5\c6\c9\ca\de\e4\e5\ff\00\04\11\12)147:;=IJ]\84\8e\92\a9\b1\b4\ba\bb\c6\ca\ce\cf\e4\e5\00\04\0d\0e\11\12)14:;EFIJ^de\84\91\9b\9d\c9\ce\cf\0d\11):;EIW[\5c^_de\8d\91\a9\b4\ba\bb\c5\c9\df\e4\e5\f0\0d\11EIde\80\84\b2\bc\be\bf\d5\d7\f0\f1\83\85\8b\a4\a6\be\bf\c5\c7\ce\cf\da\dbH\98\bd\cd\c6\ce\cfINOWY^_\89\8e\8f\b1\b6\b7\bf\c1\c6\c7\d7\11\16\17[\5c\f6\f7\fe\ff\80mq\de\df\0e\1fno\1c\1d_}~\ae\af\7f\bb\bc\16\17\1e\1fFGNOXZ\5c^~\7f\b5\c5\d4\d5\dc\f0\f1\f5rs\8ftu\96&./\a7\af\b7\bf\c7\cf\d7\df\9a@\97\980\8f\1f\d2\d4\ce\ffNOZ[\07\08\0f\10'/\ee\efno7=?BE\90\91Sgu\c8\c9\d0\d1\d8\d9\e7\fe\ff\00 _\22\82\df\04\82D\08\1b\04\06\11\81\ac\0e\80\ab\05\1f\09\81\1b\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0aP\0f\12\07U\07\03\04\1c\0a\09\03\08\03\07\03\02\03\03\03\0c\04\05\03\0b\06\01\0e\15\05N\07\1b\07W\07\02\06\16\0dP\04C\03-\03\01\04\11\06\0f\0c:\04\1d%_ m\04j%\80\c8\05\82\b0\03\1a\06\82\fd\03Y\07\16\09\18\09\14\0c\14\0cj\06\0a\06\1a\06Y\07+\05F\0a,\04\0c\04\01\031\0b,\04\1a\06\0b\03\80\ac\06\0a\06/1M\03\80\a4\08<\03\0f\03<\078\08+\05\82\ff\11\18\08/\11-\03!\0f!\0f\80\8c\04\82\97\19\0b\15\88\94\05/\05;\07\02\0e\18\09\80\be\22t\0c\80\d6\1a\0c\05\80\ff\05\80\df\0c\f2\9d\037\09\81\5c\14\80\b8\08\80\cb\05\0a\18;\03\0a\068\08F\08\0c\06t\0b\1e\03Z\04Y\09\80\83\18\1c\0a\16\09L\04\80\8a\06\ab\a4\0c\17\041\a1\04\81\da&\07\0c\05\05\80\a6\10\81\f5\07\01 *\06L\04\80\8d\04\80\be\03\1b\03\0f\0d\00\06\01\01\03\01\04\02\05\07\07\02\08\08\09\02\0a\05\0b\02\0e\04\10\01\11\02\12\05\13\11\14\01\15\02\17\02\19\0d\1c\05\1d\08$\01j\04k\02\af\03\bc\02\cf\02\d1\02\d4\0c\d5\09\d6\02\d7\02\da\01\e0\05\e1\02\e7\04\e8\02\ee \f0\04\f8\02\fa\02\fb\01\0c';>NO\8f\9e\9e\9f{\8b\93\96\a2\b2\ba\86\b1\06\07\096=>V\f3\d0\d1\04\14\1867VW\7f\aa\ae\af\bd5\e0\12\87\89\8e\9e\04\0d\0e\11\12)14:EFIJNOde\5c\b6\b7\1b\1c\07\08\0a\0b\14\1769:\a8\a9\d8\d9\097\90\91\a8\07\0a;>fi\8f\92o_\bf\ee\efZb\f4\fc\ff\9a\9b./'(U\9d\a0\a1\a3\a4\a7\a8\ad\ba\bc\c4\06\0b\0c\15\1d:?EQ\a6\a7\cc\cd\a0\07\19\1a\22%>?\e7\ec\ef\ff\c5\c6\04 #%&(38:HJLPSUVXZ\5c^`cefksx}\7f\8a\a4\aa\af\b0\c0\d0\ae\afno\93^\22{\05\03\04-\03f\03\01/.\80\82\1d\031\0f\1c\04$\09\1e\05+\05D\04\0e*\80\aa\06$\04$\04(\084\0bNC\817\09\16\0a\08\18;E9\03c\08\090\16\05!\03\1b\05\01@8\04K\05/\04\0a\07\09\07@ '\04\0c\096\03:\05\1a\07\04\0c\07PI73\0d3\07.\08\0a\81&RN(\08*\16\1a&\1c\14\17\09N\04$\09D\0d\19\07\0a\06H\08'\09u\0b?A*\06;\05\0a\06Q\06\01\05\10\03\05\80\8bb\1eH\08\0a\80\a6^\22E\0b\0a\06\0d\13:\06\0a6,\04\17\80\b9<dS\0cH\09\0aFE\1bH\08S\0dI\81\07F\0a\1d\03GI7\03\0e\08\0a\069\07\0a\816\19\80\b7\01\0f2\0d\83\9bfu\0b\80\c4\8aLc\0d\84/\8f\d1\82G\a1\b9\829\07*\04\5c\06&\0aF\0a(\05\13\82\b0[eK\049\07\11@\05\0b\02\0e\97\f8\08\84\d6*\09\a2\e7\813-\03\11\04\08\81\8c\89\04k\05\0d\03\09\07\10\92`G\09t<\80\f6\0as\08p\15F\80\9a\14\0cW\09\19\80\87\81G\03\85B\0f\15\84P\1f\80\e1+\80\d5-\03\1a\04\02\81@\1f\11:\05\01\84\e0\80\f7)L\04\0a\04\02\83\11DL=\80\c2<\06\01\04U\05\1b4\02\81\0e,\04d\0cV\0a\80\ae8\1d\0d,\04\09\07\02\0e\06\80\9a\83\d8\05\10\03\0d\03t\0cY\07\0c\04\01\0f\0c\048\08\0a\06(\08\22N\81T\0c\15\03\05\03\07\09\1d\03\0b\05\06\0a\0a\06\08\08\07\09\80\cb%\0a\84\06library/core/src/unicode/unicode_data.rs\00\00\00A&\10\00(\00\00\00K\00\00\00(\00\00\00A&\10\00(\00\00\00W\00\00\00\16\00\00\00A&\10\00(\00\00\00R\00\00\00>\00\00\00SomeNoneU\00\00\00\04\00\00\00\04\00\00\00^\00\00\00Utf8Errorvalid_up_toerror_len\00\00\00U\00\00\00\04\00\00\00\04\00\00\00_\00\00\00\00\03\00\00\83\04 \00\91\05`\00]\13\a0\00\12\17 \1f\0c `\1f\ef,\a0+*0 ,o\a6\e0,\02\a8`-\1e\fb`.\00\fe 6\9e\ff`6\fd\01\e16\01\0a!7$\0d\e17\ab\0ea9/\18\a190\1c\e1G\f3\1e!L\f0j\e1OOo!P\9d\bc\a1P\00\cfaQe\d1\a1Q\00\da!R\00\e0\e1S0\e1aU\ae\e2\a1V\d0\e8\e1V \00nW\f0\01\ffW\00p\00\07\00-\01\01\01\02\01\02\01\01H\0b0\15\10\01e\07\02\06\02\02\01\04#\01\1e\1b[\0b:\09\09\01\18\04\01\09\01\03\01\05+\03<\08*\18\01 7\01\01\01\04\08\04\01\03\07\0a\02\1d\01:\01\01\01\02\04\08\01\09\01\0a\02\1a\01\02\029\01\04\02\04\02\02\03\03\01\1e\02\03\01\0b\029\01\04\05\01\02\04\01\14\02\16\06\01\01:\01\01\02\01\04\08\01\07\03\0a\02\1e\01;\01\01\01\0c\01\09\01(\01\03\017\01\01\03\05\03\01\04\07\02\0b\02\1d\01:\01\02\01\02\01\03\01\05\02\07\02\0b\02\1c\029\02\01\01\02\04\08\01\09\01\0a\02\1d\01H\01\04\01\02\03\01\01\08\01Q\01\02\07\0c\08b\01\02\09\0b\06J\02\1b\01\01\01\01\017\0e\01\05\01\02\05\0b\01$\09\01f\04\01\06\01\02\02\02\19\02\04\03\10\04\0d\01\02\02\06\01\0f\01\00\03\00\03\1d\02\1e\02\1e\02@\02\01\07\08\01\02\0b\09\01-\03\01\01u\02\22\01v\03\04\02\09\01\06\03\db\02\02\01:\01\01\07\01\01\01\01\02\08\06\0a\02\010\1f1\040\07\01\01\05\01(\09\0c\02 \04\02\02\01\038\01\01\02\03\01\01\03:\08\02\02\98\03\01\0d\01\07\04\01\06\01\03\02\c6@\00\01\c3!\00\03\8d\01` \00\06i\02\00\04\01\0a \02P\02\00\01\03\01\04\01\19\02\05\01\97\02\1a\12\0d\01&\08\19\0b.\030\01\02\04\02\02'\01C\06\02\02\02\02\0c\01\08\01/\013\01\01\03\02\02\05\02\01\01*\02\08\01\ee\01\02\01\04\01\00\01\00\10\10\10\00\02\00\01\e2\01\95\05\00\03\01\02\05\04(\03\04\01\a5\02\00\04\00\02\99\0b1\04{\016\0f)\01\02\02\0a\031\04\02\02\07\01=\03$\05\01\08>\01\0c\024\09\0a\04\02\01_\03\02\01\01\02\06\01\a0\01\03\08\15\029\02\01\01\01\01\16\01\0e\07\03\05\c3\08\02\03\01\01\17\01Q\01\02\06\01\01\02\01\01\02\01\02\eb\01\02\04\06\02\01\02\1b\02U\08\02\01\01\02j\01\01\01\02\06\01\01e\03\02\04\01\05\00\09\01\02\f5\01\0a\02\01\01\04\01\90\04\02\02\04\01 \0a(\06\02\04\08\01\09\06\02\03.\0d\01\02\00\07\01\06\01\01R\16\02\07\01\02\01\02z\06\03\01\01\02\01\07\01\01H\02\03\01\01\01\00\02\00\05;\07\00\01?\04Q\01\00\02\00.\02\17\00\01\01\03\04\05\08\08\02\07\1e\04\94\03\007\042\08\01\0e\01\16\05\01\0f\00\07\01\11\02\07\01\02\01\05\00\07\00\01=\04\00\07m\07\00`\80\f0\00")
  (data $.data (i32.const 1059368) "\01\00\00\00\00\00\00\00\01\00\00\00<\13\10\00"))
