namespace MyApp {
    public class Window : Gtk.ApplicationWindow {

	    public Window (Application app) {
	    	Object (
	    		application: app
	    	);
	    }

    	construct {
		    title = "Hello World";
		    window_position = Gtk.WindowPosition.CENTER;
		    set_default_size (350, 80);
		    show_all ();
	    }
	}
}
