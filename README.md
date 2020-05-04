# NT_Console
Provides Console Mode Windows applications with screen manipulation similar to
the DOS ANSI.sys driver.

The package in this repository is modified version of a similarly named package
created by Jerry van Dijk, see the original copyright notice.

My modification makes the package generic allowing it to be instantiated for an
arbitrary size. I have used it in an application with a screen 400 x 200
characters. Note the properties of the Command Prompt must be set to accommodate
the required size. By default the package instantiates as 80 x 25 characters.

Screen_Test is a simple example of cursor positioning also setting of foreground
and background colours.
