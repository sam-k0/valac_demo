using Gtk;
using GLib;
// Save this code as "hello_world.vala"
int main (string[] argv) {
    // Create a new application
    var app = new Gtk.Application ("com.example.GtkApplication",
                                   0);

    // Referencing the Person class from the myclass.vala file
    Person john = new Person("John", 20);

    app.activate.connect (() => {
        // Create a new window
        var window = new Gtk.ApplicationWindow (app);

        // Create a new button with the name of the Person instance
        var button = new Gtk.Button.with_label(@"$(john.name)");

        // When the button is clicked, close the window
        button.clicked.connect (() => {
            window.close ();
        });

        window.set_child (button);
        window.present ();
    });

    return app.run (argv);
}
