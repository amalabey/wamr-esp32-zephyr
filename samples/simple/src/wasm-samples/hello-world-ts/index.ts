// The entry file of your WebAssembly module.
@external("env","print_test")
declare function print_test(num: i32): void;

@external("env","thread_sleep")
declare function thread_sleep(num: i32): void;

export function main(): void {
  while(true) {
    print_test(56);
    thread_sleep(2000);
  }
}
