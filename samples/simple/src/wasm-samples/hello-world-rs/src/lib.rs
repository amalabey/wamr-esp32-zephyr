extern crate wee_alloc;

// Use `wee_alloc` as the global allocator.
#[global_allocator]
static ALLOC: wee_alloc::WeeAlloc = wee_alloc::WeeAlloc::INIT;

//use wasm_bindgen::prelude::*;
extern {
    pub fn print_test(num: i32);
}

#[no_mangle]
pub extern fn main() {
    let mut x: i32 = 444;
    unsafe{ print_test(x);}    
    //println!("initialising: {0}", "rust");

    loop {
        x += 1;
        //println!("hello from rust loop: {0}", x);
        unsafe {print_test(x)}
    }
}

