#include <iostream>
//#include <regex>
#include <regex.h>


using namespace std;

int main(int argc, char *argv[])
{
    regex_t regex;
    int reti;
    char msgbuf[256];

    // Compile regular expression
    reti = regcomp(&regex, "^a[[:alnum:]]", 0);
    if( reti ) {
        fprintf(stderr, "Could not compile regex\n"); exit(1);
    }

    // Execute regular expression
    reti = regexec(&regex, "abc", 0, NULL, 0);
    if( !reti ) {
        puts("Match");
    }
    else if( reti == REG_NOMATCH ){
        puts("No match");
    }
    else {
        regerror(reti, &regex, msgbuf, sizeof(msgbuf));
        fprintf(stderr, "Regex match failed: %s\n", msgbuf);
        exit(1);
    }

    // Free compiled regular expression if you want to use the regex_t again
    regfree(&regex);



    //string text = "a b c d e";
    //string text = "Hello World";
    //string input("x 1 y2 22 zaq 34567");
    //string subject = "pp=fd:c,crop,hue";
    //string text = string(argv[0]);


    //regex pat("(\w+)\s(\d+)");
    //regex re ("(H)(.*)";
    //regex vowel_re ("a|e|i|o|u");
    //string pattern = "crop,";
    //regex re(pattern, regex::icase);

    // write the results to an output iterator
    //regex_replace(ostreambuf_iterator<char>(cout),
    //                    text.begin(), text.end(), vowel_re, string("*"));

    //string fmt("($1,$2)\n");
    //cout << regex_replace(input,pat,fmt);
    // construct a string holding the results
    //cout << '\n' << regex_replace(text, vowel_re, ("[$&]")) << '\n';

    //if (regex_match(text, vowel_re)) {
    //    cout << "It worked!";
    //}

    //bool result = regex_match(subject, re);
    //cout << result << endl;

    //cout << endl;

    return 0;
}
