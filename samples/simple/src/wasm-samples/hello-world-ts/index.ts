// The entry file of your WebAssembly module.
@external("env","print_test")
declare function print_test(num: i32): void;

@external("env","thread_sleep")
declare function thread_sleep(num: i32): void;

@external("env","gpio_out")
declare function gpio_out(pin: i32, state: i32): void;


export function main(): void {
  let index: i32 = 0;
  while(true) {
    print_test(56);
    gpio_out(10, index % 2);
    thread_sleep(500);
    index += 1;
  }
}
