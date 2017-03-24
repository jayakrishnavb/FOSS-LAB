#!/usr/bin/python
# Python code For a Gui Calculator Program

# The eval() is imported from math library.
# The gi library is imported. gi stands for GObject Introspetion.
# Meaning GLib Object system which is basically a set of libraries
# that was written in C language that follows Object Oriented
# Programming Structure. The main advatage of such a system is that
# these libraries can be accessed and used by other programming
# languages that uses C-language for backend, such as python, perl,
# java, ruby etc..
# In other words, GObject is designed for using it on both directly in 
# C programs to provide object-oriented C-based APIs and through 
# bindings to other languages to provide transparent cross-language 
# interoperability.
# The Gtk is the graphics library and we need to specify for version 3.
# Linux distros have Gtk 2.0 and 3.0 installed by default.
from math import *
import gi
gi.require_version('Gtk','3.0')
from gi.repository import Gtk

# A table is used to define the button gui entries of the calculator.
# The table contains 9-rows and 4-columns.
# When the 'equal to' button is pressed, the values in the text
# entry box is stored in the 'to eval' variable, provided that
# the text entry box is not empty.
toeval=' '
rows=9 
cols=4

# -->Create the main window, box, table, text area & close button.
# The Gtk.Window() creates the main GUI interface. The Gtk.Vbox()
# tells the program to arrange the gui elements in a box format 
# one element above the other. The Gtk.Table() creates the table
# for button placement. The Gtk.Entry() is the text entry box that
# displays the Calulator output. The set_alignment(1) is used to 
# let the program know that the display is to be from right to left 
# as a normal calulator format. The close button below the digit
# entries in the calculator gui is a button declared explicitly.
# It is not part of the table.
win = Gtk.Window()
box = Gtk.VBox()
table = Gtk.Table(rows, cols, False)
text = Gtk.Entry()
text.set_alignment(1)
close  = Gtk.Button("close")


# -->Now Create the buttons
# The 'button_strings' variable holds a list of strings that are
# names of the calculator gui buttons.
button_strings=['hypot(','e',',','clear','log(','log10(','pow(','pi',
        'sinh(','cosh(','tanh(','sqrt(','asin(','acos(','atan(','(',
        'sin(','cos(','tan(',')','7','8','9','/','4','5','6','*',
        '1','2','3','-', '0','.','=','+']
# The following function will attach the button_strings
# to the individual button GUI elements.
button = map(lambda i:Gtk.Button(button_strings[i]), range(rows*cols))


# The function below is called when '=' button is pressed.
# It first attempts to evaluate whatever is present in the entry box.
# If that is syntactically erroneous statement, then the exception
# error will be raised and the entry box will display 'error'.
# The set_text() will display on the entry box.
def myeval(*args):
	global toeval
	try   :
		b=str(eval(toeval))
        except:
		b= "error"
		toeval=''
	else  : toeval=b
        text.set_text(b)

# The Function below 'clear' the text entry box.
def mydel(*args):
	global toeval 
	toeval=''
        text.set_text(toeval)


# The command below closes the entire GUI program
def calcclose(*args):
        Gtk.main_quit()

# Whenever a button other than 'equal' or 'clear' is pressed,
# the toeval string will concatenates to itself. The set_text()
# will display this concatenated string on the entry box. When ever 
# a set_text() is called all the previous entries are cleared.
# Hence the need for concatenation.
def print_string(args,i):
	global toeval
        toeval=toeval+button_strings[i]
        text.set_text(toeval)

# The main is the main function of the GUI calculator.
# The set_default_size() will create a GUI window with the specified
# x and y values. The connect() here lets the program know that when
# user clicks the 'x' button of the window bar, the program has
# to quit itself. The set_title() will display the title of the
# program.
def main():
        win.set_default_size(300, 350)
        win.connect('delete-event', Gtk.main_quit)
        win.set_title("Scientific Calculator: Shared under GPL.")
	
	# Pack the box into window.
        # The show() function will display that box on the GUI.
	win.add(box)
	box.show()
	
	# Prepare and insert the text area into the box.
        # The show() here will display the text window on the GUI.
        # The pack_start() will start arranging the different 
        # elements from top to bottom within the box.
        # First it is the text entry box.
	text.set_editable(False)
	text.show()
	box.pack_start(text, True, True, 0)
	
	# Include the rest of the table also.
        # The following will determine the table row spacing
        # column spacing and border width.
        # The next pack_start() will include the entire button GUI
        # table into the box layout.
	table.set_row_spacings(2)
	table.set_col_spacings(5)
	table.set_border_width(5)
	box.pack_start(table, True, True, 0)
	table.show()

	# Insert buttons into table.
        # The following for loop will determine what each button does.
        # If '=' button is clicked, myeval() will be called.
        # If 'clear' button is cliked, the mydel() is called.
        # Everyother button press results in calling print_string()
        # which concatenates the toeval variable.
	for i in range(rows*cols) :
	      if i==(rows*cols-2) : button[i].connect("clicked",myeval)
              elif  (i==(cols-1)) : button[i].connect("clicked",mydel)	
              else 	          : button[i].connect("clicked",print_string,i)
              # The following funtions will attach the buttons to
              # the table.
       	      y,x = divmod(i, 4)
              table.attach(button[i], x,x+1, y,y+1)
              button[i].show()

        # The show() will display the 'close' button that calls the
        # calcclose(). It is packed at the bottom of the
        # box layout.
        # The win.show() will display the entire GUI layout on the
        # desktop.
	close.show()
	close.connect("clicked",calcclose)
	box.pack_start(close, True, True, 0)

	win.show()

# Start Everything.
# The Gtk.main() ensures that the GUI program is continuously 
# existing untill the user closes the program.
main()
Gtk.main()
