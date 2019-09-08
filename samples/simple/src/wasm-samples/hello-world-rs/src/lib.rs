//extern crate wasm_bindgen;

//use wasm_bindgen::prelude::*;
extern {
    pub fn print_test(num: i32);
}

pub fn main() {
    let mut x: i32 = 444;
    unsafe{ print_test(x);}    
    //println!("initialising: {0}", "rust");

    loop {
        x += 1;
        //println!("hello from rust loop: {0}", x);
        unsafe {print_test(x)}
    }
}

