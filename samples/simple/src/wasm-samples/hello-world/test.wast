(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (import "env" "memory" (memory $memory 1))
 (data (global.get $__memory_base) "Timer update %d\n")
 (import "env" "table" (table $table 2 funcref))
 (elem (global.get $__table_base) $b0 $_timer1_update)
 (import "env" "__memory_base" (global $__memory_base i32))
 (import "env" "__table_base" (global $__table_base i32))
 (import "env" "abortStackOverflow" (func $abortStackOverflow (param i32)))
 (import "env" "nullFunc_X" (func $nullFunc_X (param i32)))
 (import "env" "_api_timer_create" (func $_api_timer_create (param i32 i32 i32 i32) (result i32)))
 (import "env" "_api_timer_restart" (func $_api_timer_restart (param i32 i32)))
 (import "env" "_printf" (func $_printf (param i32 i32) (result i32)))
 (global $STACKTOP (mut i32) (i32.const 0))
 (global $STACK_MAX (mut i32) (i32.const 0))
 (export "__post_instantiate" (func $__post_instantiate))
 (export "_on_destroy" (func $_on_destroy))
 (export "_on_init" (func $_on_init))
 (export "dynCall_X" (func $dynCall_X))
 (export "dynCall_vi" (func $dynCall_vi))
 (func $_timer1_update (; 5 ;) (; has Stack IR ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $0
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (global.get $STACKTOP)
    (global.get $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  ;;@ timer.c:9:0
  (local.set $1
   (i32.load
    (i32.add
     (global.get $__memory_base)
     (i32.const 4128)
    )
   )
  )
  (local.set $2
   (i32.add
    (local.get $1)
    (i32.const 1)
   )
  )
  (i32.store
   (i32.add
    (global.get $__memory_base)
    (i32.const 4128)
   )
   (local.get $2)
  )
  (i32.store
   (local.get $0)
   (local.get $1)
  )
  (drop
   (call $_printf
    (global.get $__memory_base)
    (local.get $0)
   )
  )
  (global.set $STACKTOP
   (local.get $0)
  )
 )
 (func $_on_init (; 6 ;) (; has Stack IR ;)
  (local $0 i32)
  ;;@ timer.c:17:0
  (local.set $0
   (call $_api_timer_create
    (i32.const 1000)
    (i32.const 1)
    (i32.const 0)
    (i32.add
     (global.get $__table_base)
     (i32.const 1)
    )
   )
  )
  ;;@ timer.c:18:0
  (call $_api_timer_restart
   (local.get $0)
   (i32.const 1000)
  )
 )
 (func $_on_destroy (; 7 ;) (; has Stack IR ;)
  (nop)
 )
 (func $__post_instantiate (; 8 ;) (; has Stack IR ;)
  (global.set $STACKTOP
   (i32.add
    (global.get $__memory_base)
    (i32.const 32)
   )
  )
  (global.set $STACK_MAX
   (i32.add
    (global.get $STACKTOP)
    (i32.const 4096)
   )
  )
 )
 (func $dynCall_X (; 9 ;) (; has Stack IR ;) (param $0 i32)
  (call_indirect (type $FUNCSIG$v)
   (local.get $0)
  )
 )
 (func $dynCall_vi (; 10 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32)
  (call_indirect (type $FUNCSIG$vi)
   (local.get $1)
   (local.get $0)
  )
 )
 (func $b0 (; 11 ;) (; has Stack IR ;) (result f64)
  (call $nullFunc_X
   (i32.const 0)
  )
  (f64.const 0)
 )
)
