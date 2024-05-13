#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <regex.h>


int main(int argc, char *argv[])
{
    regex_t regex;
    int reti;
    char msgbuf[256];
    regmatch_t m[1];
    //char *match;

    // Compile regular expression
    reti = regcomp(&regex, "^a[[:alnum:]]", 0);
    if( reti ) {
        fprintf(stderr, "Could not compile regex\n"); exit(1);
    }

    // Execute regular expression
    reti = regexec(&regex, "abc", 0, m, 0);
    if( !reti ) {
        //puts("Match:");
        //match = (char *)malloc(sizeof(m[0]));
        //strncpy(match, (char)m[0], sizeof(m[0]));
        printf("%d\n", m[0].rm_so);
        //printf("%u\n", line[m[0]]);
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

    return 0;
}
