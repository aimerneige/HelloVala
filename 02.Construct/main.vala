public class Main : Gtk.Application {

	public Main () {
		print ("Hello");
	}

	construct {
		print ("There");
	}
}

var main = new Main();
// Hello
// There

main = new Main();
// There
