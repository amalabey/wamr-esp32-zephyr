// The entry file of your WebAssembly module.
declare function print_test(num: i32): void;

export function test_func(): number {
  return 0;
}

export function main(): number {
  let counter: i32 = 1111;
  while(true) {
    print_test(counter++);
  }  

  return test_func();
}
