/*
 * qregexpr.cpp
 * Regex replacer 1.0
 *
 * Uncopyright (u)2019-2024, Shaun Green
 */


#include <QtCore>
#include <iostream>

using namespace std;

int main(int argc, char *argv[])
{
	QCoreApplication app(argc, argv);
	QCoreApplication::setApplicationName("Qt Regexp Replacer");
	QCoreApplication::setApplicationVersion("1.3");

	QCommandLineParser parser;
	parser.setApplicationDescription("Qt Regexp Replacer - Using a regular expression pattern, replaces text with replace text (optional)");
	parser.addHelpOption();
	parser.addVersionOption();
	parser.addPositionalArgument("regexp", QCoreApplication::translate("main", "Regexp pattern"));
	parser.addPositionalArgument("text", QCoreApplication::translate("main", "Source text"));
	parser.addPositionalArgument("replace", QCoreApplication::translate("main", "Replace text"));

	// Boolean options with single names
	QCommandLineOption showMatchOption("m", QCoreApplication::translate("main", "Only show all the regexp matches delimited with spaces."));
	QCommandLineOption noShowNewlineOption("n", QCoreApplication::translate("main", "Do not output the trailing newline (use with BASH echo -e)."));
	parser.addOption(showMatchOption);
	parser.addOption(noShowNewlineOption);
	parser.process(app);
	const QStringList args=parser.positionalArguments();
	if (args.size()!=2 && args.size()!=3)
	{
		parser.showHelp();
		//return 1;
	}
	else
	{
		QString regexp=args.at(0);
		QString text=args.at(1);
		QString replace="";
		if (args.size()==3)
			replace=args.at(2);

		QRegularExpression re(regexp); //, QRegularExpression::DontCaptureOption);
		if (!re.isValid())
		{
			qWarning() << "Error- invalid regexp pattern: " << re.errorString();
			return 1;
		}

		bool showMatch=parser.isSet(showMatchOption);
		bool noShowNewline=parser.isSet(noShowNewlineOption);
		if (showMatch)
		{
			QStringList matches;
			QString result;
			QRegularExpressionMatchIterator i=re.globalMatch(text);
			while (i.hasNext())
			{
				QRegularExpressionMatch match=i.next();
				matches << match.captured(0);
			}
			if (matches.isEmpty())
			{
				cout << "No match" << endl;
				return 0;
			}
			else
			{
				//cout << "matchessize=" << matches.size() << endl;
				// Only output first match
				//for (int i=0; i<matches.size(); ++i)
					cout << matches.at(0).toLocal8Bit().constData();
				if (!noShowNewline)
					cout << endl;
			}
			return 0;
		}

		text.replace(re, replace);
		cout << text.toStdString() << endl;
	}

	return 0;
}
