NoteWriter readme.
General information.
NoteWriter is a basic, free, and open source text editor for the Windows operating system. It runs on Windows 95 all the way up to Modern versions of Windows. It supports Rich Text Format documents and can view multiple documents at a time. It is also possible to embed OLE objects into documents, and you can also use NoteWriter as an OLE server. NoteWriter has a lot of hotkeys, so you can do a lot of tasks without using the menus.
Background information.
Windows comes with 2 text editors, namely Notepad and WordPad. I have never seen a program that was sort of both in 1 program, so this is what NoteWriter is. It has the basic text editing functions of Notepad, and the Rich Edit Control of WordPad. Also, Notepad and WordPad are different in different versions of Windows, so it is a good idea to have a text editor that stays the same, no matter what version of windows you are using. NoteWriter relies on back-end components of the operating system, such as the print settings and insert object dialogs, so the options in these dialogs depends on your operating system and what applications you have installed. But generally, these dialogs didn't change much over the years.
Technical information.
NoteWriter is written in c++ and is based on the Microsoft Foundation Classes (mfc).
To build NoteWriter, you will need visual studio 6, which you can find on web sites that host abandonware software. Optionally, to build the installer, you will need IExpress which is included with Windows XP and later.
Revision history.
2.5: A new library, icons.dll, is included in the distribution. This dll simply contains icons that can be used with OLE objects. The icons in this dll were originally taken from the Willow Pond audio software package.
2.4: Added Cancel and Help buttons to About dialog box.
2.3: Changed company name in registry to Datajake.
2.2: Enabled Change Icon and Convert Menu items. However, they will not be grayed if they are unavailable.
2.1: Added multiple OLE Verbs in edit menu. Added menu items that are disabled do to the functionality not being in the program itself. These items are only in the source code and skipped by the resource compiler. The lines start with //, so they are not included in the executable when it is built. It is better to not have the items appear at all than the items appearing as gray, because there is no point in releasing a program that clearly shows some functions that are not working.
2.0: A lot of hotkeys in this version. Added hotkey to Insert Object Dialog, Ctrl+I. Added hotkey to Links Dialog, Ctrl+K. Added hotkey to Paste Special Dialog, Ctrl+L. Added hotkey to Send Dialog, Ctrl+E. Added hotkey to Print Setup Dialog, Ctrl+R. Added hotkey to Print Preview, Ctrl+W. Added hotkey to Status Bar, Ctrl+U. Added hotkey to Toolbar, Ctrl+T. Added Shortcut key in File Close Menu Item, Ctrl+f4. Added Shortcut key in File Exit Menu Item, Alt+f4. Changed Window Tile shortcut keys in menu to H and V. Updated File Version Info to reflect the version number of the program.
1.5: Moved Format menu to the right of the Edit Menu. Renamed Menu Item "Font" to "Font...". Added Font to Toolbar. Added hotkey to Font Dialog, Ctrl+D.
1.4: Added a Font Dialog. It can be accessed through a new menu, titled Format.
1.3: Both Tile options are in the window menu instead of only 1 Option, that being Tile Horizontally.
1.2: Renamed Help Index and How to Use Help to Index and Using Help. This prevents 3 menu items from having the same hotkey.
1.1: added Delete in Edit menu. Added Help Index and How to Use Help in Help menu.
1.0: initial version of NoteWriter.
Contact information.
If you have any questions or comments, feel free to contact me. My email address is datajake@gmail.com.
I hope you enjoy this program!
