namespace MyApp {
	public class HeaderBar : Gtk.HeaderBar {

		public Gtk.Stack window_stack { get; construct; }

		public HeaderBar (Gtk.Stack stack) {
			Object(
				window_stack: stack
			);
		}

		construct {

			show_close_button = true;

			var add_button = new Gtk.Button.with_label ("Add");
			add_button.get_style_context ().add_class ("suggested-action");
			add_button.valign = Gtk.Align.CENTER;

			pack_start (add_button);

			var stack_switcher = new Gtk.StackSwitcher ();
			stack_switcher.stack = window_stack;

			set_custom_title (stack_switcher);

			var menu_button = new Gtk.Button.from_icon_name ("open-mennu", Gtk.IconSize.LARGE_TOOLBAR);

			pack_end (menu_button);
		}
	}
}
