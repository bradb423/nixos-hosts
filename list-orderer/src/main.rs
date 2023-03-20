use std::error::Error;
use std::fs;

use clap::Parser;

/// Simple program to order lists alphabetically. This is useful for the lists
/// of packages that I have in various files.
#[derive(Parser, Debug)]
#[command(author, version, about, long_about = None)]
struct Args {
    /// The name of the file to look into.
    filename: String,
    /// The starting line to start ordering from.
    start_line: usize,
    /// The ending line to stop ordering at.
    end_line: usize,
}

fn main() -> Result<(), Box<dyn Error>> {
    let args = Args::parse();

    let contents = fs::read_to_string(args.filename)?;

    let mut list: Vec<&str> = Vec::new();

    for (index, line) in contents.lines().enumerate() {
        if index + 1 >= args.start_line && index + 1 <= args.end_line {
            list.push(line);
        }
    }

    list.sort();

    for line in list {
        println!("{}", line);
    }

    Ok(())
}
