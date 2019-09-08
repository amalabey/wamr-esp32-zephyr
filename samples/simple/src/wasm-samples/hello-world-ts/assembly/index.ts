// The entry file of your WebAssembly module.
declare function print_test(num: i32): void;

export function main(argc: i32, argv: i32[]): number {
  let counter: i32 = 1111;
  while(true) {
    print_test(counter++);
  }  

  return 0
}
