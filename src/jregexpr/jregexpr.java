import java.io.PrintStream;

public class jregexpr {
    public static void main (String[] args) {

    PrintStream out=System.out;
	if ( args.length < 2 || args.length > 3 ) {
	    out.println("Usage: jregexpr regexp text [replace text]");
	    return;
	}

	String re      = args[0];
	String text    = args[1];
	String replace = "";

	if ( args.length == 3 )
	    replace = args[2];

	out.println(text.replaceAll(re, replace));
    }
}
