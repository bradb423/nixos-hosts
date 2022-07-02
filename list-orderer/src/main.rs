use std::env;
use std::error::Error;
use std::fs;

mod lib;

fn main() -> Result<(), Box<dyn Error>> {
    let args: Vec<String> = env::args().collect();

    // Create an `Invocation` struct to represent the information in the arguments
    let invocation = lib::Invocation::new(&args)?;

    let contents = fs::read_to_string(invocation.filename)?;

    let mut list: Vec<&str> = Vec::new();

    for (index, line) in contents.lines().enumerate() {
        if index + 1 >= invocation.start && index + 1 <= invocation.end {
            list.push(line);
        }
    }

    list.sort();

    for line in list {
        println!("{}", line);
    }

    Ok(())
}
