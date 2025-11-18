// cregexpr.cpp
// regex_replace example
//
// Uncopyright (u)2019-2025, Shaun Green

#include <iostream>
#include <regex>
#include <string>

using namespace std;

void test_regex_search(regex rx, const string &input, const string &r, bool b)
{
	if (b)
	{
		// Create a regex iterator to find all matches
		sregex_iterator it(input.begin(), input.end(), rx);
		sregex_iterator end;
		
		// Iterate thru all matches and print them
		while (it != end)
		{
			smatch match = *it;
			cout << match.str();
			++it;
		}
		cout << endl;
	}
	else
	{
		string result=regex_replace(input, rx, r);
		cout << result << endl;
	}
}


int main (int argc, char *argv[])
{
#if __cplusplus < 202002L
	cout << endl;
	cout << "C++20 is not supported or not configured." << endl;
#endif

    if (argc<3 || argc>5)
	{
		cout << "Regexp Replacer 1.4" << endl;
		cout << "Replaces text using a regular expression pattern and replace text (optional)" << endl;
		cout << endl;
		cout << "Usage: ./cregexpr regexp text [replace text] [-m]" << endl;
		return 1;
	}

	regex re(argv[1]);
	const string text(argv[2]);
	string replace="";
	bool bShowMatch=false;
	string m="";

	if (argv[3])
		replace=argv[3];
	if (replace=="-m")
	{
		replace="";
		bShowMatch=true;
	}
	if (argv[4])
		m=argv[4];
	if (m=="-m")
		bShowMatch=true;

	// using string/c-string (3) version:
	test_regex_search(re, text, replace, bShowMatch);

	return 0;
}
