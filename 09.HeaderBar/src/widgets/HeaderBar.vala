namespace MyApp {
	public class HeaderBar : Gtk.HeaderBar {
		construct {
			//  set_title ("MyApp");
			//  set_subtitle ("Hello Vala!");
			//  set_show_close_button (true);
			title = "MyApp";
			subtitle = "Hello Vala!";
			show_close_button = true;
		}
	}
}
