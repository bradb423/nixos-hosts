/// Struct that represents the arguments of the program.
pub struct Invocation {
    pub filename: String,
    pub start: usize,
    pub end: usize,
}

/// Implementation of the `Invocation` struct, creating a new `Invocation`
/// instance.
impl Invocation {
    pub fn new(args: &[String]) -> Result<Invocation, &'static str> {
        if args.len() < 3 {
            help();
            return Err("Not enough arguments");
        }

        let filename = args[1].clone();
        let start = match args[2].parse::<usize>() {
            Ok(x) => x,
            Err(_) => {
                help();
                return Err("You must specify a number for the start point");
            }
        };
        let end = match args[3].parse::<usize>() {
            Ok(x) => x,
            Err(_) => {
                help();
                return Err("You must specify a number for the endpoint");
            }
        };

        Ok(Invocation {
            filename,
            start,
            end,
        })
    }
}

pub fn help() {
    println!(
        "\n\nThis is a program to order the lists within the configuration files of this repository.
    To use this script, you must provide three arguments:
    1: The name of the file you wish to order - String
    2: The starting line of the list - Integer
    3: The ending line of the list - Integer\n\n"
    );
}
