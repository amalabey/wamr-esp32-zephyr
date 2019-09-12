extern {
    pub fn print_test(num: i32);
    pub fn thread_sleep(millis: i32);
    pub fn gpio_out(pin: i32, state: i32);
}

#[no_mangle]
pub extern fn main() {
    let mut x: i32 = 898;
    unsafe{ print_test(x);}

    loop {
        x += 1;
        unsafe{gpio_out(10, x % 2);}
        unsafe {print_test(x);}
        unsafe {thread_sleep(2000);}
    }
}

