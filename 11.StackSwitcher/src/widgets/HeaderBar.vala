namespace MyApp {
	public class HeaderBar : Gtk.HeaderBar {
		construct {

			//  title = "MyApp";
			//  subtitle = "Hello Vala!";
			show_close_button = true;

			var add_button = new Gtk.Button.with_label ("Add");
			add_button.get_style_context ().add_class ("suggested-action");
			add_button.valign = Gtk.Align.CENTER;

			pack_start (add_button);

			var stack_switcher = new Gtk.StackSwitcher ();
			var stack = new Gtk.Stack ();
			stack_switcher.stack = stack;

			var outstanding = new Gtk.Grid ();
			outstanding.add (new Gtk.Label ("Outstanding Page"));
			var completed = new Gtk.Grid ();
			completed.add (new Gtk.Label ("Completed Page"));

			stack.add_titled (outstanding, "outstanding", "Outstanding");
			stack.add_titled (completed, "completed", "Completed");

			set_custom_title (stack_switcher);

			var menu_button = new Gtk.Button.from_icon_name ("open-mennu", Gtk.IconSize.LARGE_TOOLBAR);

			pack_end (menu_button);
		}
	}
}
