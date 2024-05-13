// rregexpr.rs
// Regex replacer
//
// Uncopyright (u)2019-2024, Shaun Green


use std::env;
use regex::Regex;
//use lazy_regex::regex;

fn main() {
	let args: Vec<String> = env::args().collect();
	//dbg!(args);

	let argc = args.len();
	if argc<3 || argc>5 {
		// Print text to the console
		println!("RRegexp Replacer 1.0");
		println!("Replaces text using a regular expression pattern and replace text (optional)");
		println!("");
		println!("Usage: ./rregexpr \"regexp\" \"text\" [replace text] [-m]");
		return
	}

	// Strip any escaped forward slashes
	let r = &args[1].replace(r"\/", "/");
	// Define regex::
	let re = Regex::new(r).unwrap();
	//let re = regex!(r"&args[1]");
	let text = &args[2];
	let mut replace = "";
	if argc>=4 {
		replace = &args[3];
	}
	//print!("{0}, {1}, {2}", re, text, replace);

	if argc==5 && &args[4]=="-m" {
		replace = "-m";
		println!(", {}", replace);
	} /*else {
		println!("");
	}*/

	if replace=="-m" {
		if re.is_match(text) {
			//println!("Match");
			replace = re.find(text).unwrap().as_str();
			println!("{}", replace);
		}
    } else {
    	//println!("Replace");
		println!("{}", re.replace_all(text, replace));
	}

	return
}
