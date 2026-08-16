bwm - bsd window manager
========================
bwm is an extremely fast, small, and dynamic window manager for X. 
It is a fork of dwm, optimized for BSD systems.


Requirements
------------
In order to build bwm you need the Xlib header files.


Installation
------------
Edit config.mk to match your local setup (bwm is installed into
the /usr/local namespace by default).

Afterwards, run the build script (using sudo if necessary):

BSD:

    sh build.sh

GNU/Linux:

    sh build-gnu.sh

Running bwm
-----------
Add the following line to your .xinitrc to start bwm using startx:

    exec bwm

In order to connect bwm to a specific display, make sure that
the DISPLAY environment variable is set correctly, e.g.:

    DISPLAY=foo.bar:1 exec bwm

Status info
-----------
To display status info in the bar, you can add something like this 
to your .xinitrc:

    while xsetroot -name "`date` `uptime | sed 's/.*,//'`"
    do
    	sleep 1
    done &
    exec bwm


Configuration
-------------
The configuration of bwm is done by creating a custom config.h
and (re)compiling the source code.

