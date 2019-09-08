(module
 (type $FUNCSIG$vi (func (param i32)))
 (import "env" "memory" (memory $memory 1))
 (import "env" "__memory_base" (global $__memory_base i32))
 (import "env" "_print_test" (func $_print_test (param i32)))
 (global $STACKTOP (mut i32) (i32.const 0))
 (global $STACK_MAX (mut i32) (i32.const 0))
 (export "__post_instantiate" (func $__post_instantiate))
 (export "_main" (func $_main))
 (func $_main (; 1 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  ;;@ main.c:25:0
  (local.set $0
   (i32.load
    (i32.add
     (global.get $__memory_base)
     (i32.const 4096)
    )
   )
  )
  (call $_print_test
   (local.get $0)
  )
  (loop $while-in
   ;;@ main.c:29:0
   (local.set $0
    (i32.load
     (i32.add
      (global.get $__memory_base)
      (i32.const 4096)
     )
    )
   )
   (local.set $1
    (i32.add
     (local.get $0)
     (i32.const 1)
    )
   )
   (i32.store
    (i32.add
     (global.get $__memory_base)
     (i32.const 4096)
    )
    (local.get $1)
   )
   (call $_print_test
    (local.get $0)
   )
   (br $while-in)
  )
 )
 (func $__post_instantiate (; 2 ;) (; has Stack IR ;)
  (global.set $STACKTOP
   (global.get $__memory_base)
  )
  (global.set $STACK_MAX
   (i32.add
    (global.get $STACKTOP)
    (i32.const 4096)
   )
  )
 )
)
