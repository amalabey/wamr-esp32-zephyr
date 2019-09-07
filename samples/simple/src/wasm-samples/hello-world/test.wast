(module
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (import "env" "memory" (memory $memory 1))
 (data (global.get $__memory_base) "buf ptr: %p\n\001234\n\00buf: %s\00Hello AA!\00malloc buf failed")
 (import "env" "__memory_base" (global $__memory_base i32))
 (import "env" "abortStackOverflow" (func $abortStackOverflow (param i32)))
 (import "env" "_free" (func $_free (param i32)))
 (import "env" "_malloc" (func $_malloc (param i32) (result i32)))
 (import "env" "_printf" (func $_printf (param i32 i32) (result i32)))
 (import "env" "_puts" (func $_puts (param i32) (result i32)))
 (global $STACKTOP (mut i32) (i32.const 0))
 (global $STACK_MAX (mut i32) (i32.const 0))
 (global $_str i32 (i32.const 27))
 (export "__post_instantiate" (func $__post_instantiate))
 (export "_main" (func $_main))
 (export "_str" (global $_str))
 (func $_main (; 5 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
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
  ;;@ main.c:20:0
  (local.set $2
   (i32.add
    (local.get $0)
    (i32.const 8)
   )
  )
  ;;@ main.c:24:0
  (drop
   (call $_puts
    (i32.add
     (global.get $__memory_base)
     (i32.const 27)
    )
   )
  )
  ;;@ main.c:26:0
  (local.set $1
   (call $_malloc
    (i32.const 200)
   )
  )
  (if (result i32)
   ;;@ main.c:27:0
   (local.get $1)
   (block (result i32)
    ;;@ main.c:32:0
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
    (i32.store8
     (local.get $1)
     (i32.load8_s offset=13
      (global.get $__memory_base)
     )
    )
    (i32.store8 offset=1
     (local.get $1)
     (i32.load8_s offset=14
      (global.get $__memory_base)
     )
    )
    (i32.store8 offset=2
     (local.get $1)
     (i32.load8_s offset=15
      (global.get $__memory_base)
     )
    )
    (i32.store8 offset=3
     (local.get $1)
     (i32.load8_s offset=16
      (global.get $__memory_base)
     )
    )
    (i32.store8 offset=4
     (local.get $1)
     (i32.load8_s offset=17
      (global.get $__memory_base)
     )
    )
    ;;@ main.c:34:0
    (i32.store8 offset=5
     (local.get $1)
     (i32.load8_s offset=18
      (global.get $__memory_base)
     )
    )
    ;;@ main.c:35:0
    (i32.store
     (local.get $2)
     (local.get $1)
    )
    (drop
     (call $_printf
      (i32.add
       (global.get $__memory_base)
       (i32.const 19)
      )
      (local.get $2)
     )
    )
    ;;@ main.c:37:0
    (call $_free
     (local.get $1)
    )
    (global.set $STACKTOP
     (local.get $0)
    )
    ;;@ main.c:39:0
    (i32.const 0)
   )
   (block (result i32)
    ;;@ main.c:28:0
    (drop
     (call $_puts
      (i32.add
       (global.get $__memory_base)
       (i32.const 37)
      )
     )
    )
    (global.set $STACKTOP
     (local.get $0)
    )
    ;;@ main.c:39:0
    (i32.const -1)
   )
  )
 )
 (func $__post_instantiate (; 6 ;) (; has Stack IR ;)
  (global.set $STACKTOP
   (i32.sub
    (global.get $__memory_base)
    (i32.const -64)
   )
  )
  (global.set $STACK_MAX
   (i32.add
    (global.get $STACKTOP)
    (i32.const 4096)
   )
  )
 )
)
