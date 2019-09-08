extern {
    pub fn print_test(num: i32);
    pub fn thread_sleep(millis: i32);
}

#[no_mangle]
pub extern fn main() {
    let mut x: i32 = 898;
    unsafe{ print_test(x);}    
    //println!("initialising: {0}", "rust");

    loop {
        x += 1;
        //println!("hello from rust loop: {0}", x);
        unsafe {print_test(x);}
        unsafe {thread_sleep(2000);}
    }
}

