// gregexpr2.go
// Regex replacer
//
// Uncopyright (u)2019-2024, Shaun Green

package main

import (
	"fmt"
	"os"

	"regexp2" // replaced std lib "regexp"
	//"regexp"
)

func main() {
	argc := len(os.Args)
	if argc < 3 || argc > 5 {
		fmt.Println("GRegexp Replacer 1.1")
		fmt.Println("Replaces text using a PCRE2 regular expression pattern and replace text (optional)")
		fmt.Println("")
		fmt.Println("Usage: ./gregexpr2 \"regexp\" \"text\" [replace text] [-m]")
		return
	}

	re := regexp2.MustCompile(os.Args[1], 0)
	//re := regexp.MustCompile(os.Args[1])
	text := os.Args[2]
	replace := ""
	if argc >= 4 {
		replace = os.Args[3]
	}
	//fmt.Printf("%s, %s, %s \n ", re.String(), text, replace)

	if argc >= 5 && os.Args[4] == "-m" {
		replace = "-m"
		//fmt.Printf(", %s\n", replace)
	} /*else {
		fmt.Println("\n")
	}*/

	if replace == "-m" {
		if isMatch, _ := re.MatchString(text); isMatch {
			match, _ := re.FindStringMatch(text)
			fmt.Printf("%s\n", match)
		}
		//match := re.FindString(text)
		//if len([]rune(match)) > 0 {
		//	fmt.Printf("%s\n", match)
		//}
	} else {
		replaced, _ := re.Replace(text, replace, -1, -1)
		//replaced := re.ReplaceAllString(text, replace)
		fmt.Printf("%s\n", replaced)
	}

	return
}
