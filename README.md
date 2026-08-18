bwm - bsd window manager
========================
bwm is more than just a window manager; it is a minimal base environment for X.
It is a fork of dwm, heavily optimized for BSD systems,
designed to provide a "ready-to-go" workflow immediately after installation.


Features
--------

* Integrated Environment: Not just a WM, but a cohesive setup including a pre-configured terminal and status bar.

* Batteries Included: Comes with st (simple terminal) and slstatus already integrated and fine-tuned.

* Pre-patched: All essential patches are already applied, tested, and ready for work. No manual patching required.

* Lightweight: Extremely fast, small, and stays out of your way.


Requirements
------------
In order to build bwm you need the Xlib header files.


Installation
------------
Edit Makefile to match your local setup (bwm is installed into
the /usr/local/bin namespace by default).

Note for GNU/Linux users: While a build script for Linux is provided,
seamless installation and full compatibility on GNU/Linux are not guaranteed.
This project is primarily focused on and tested for BSD systems.

BSD:

    sh build.sh

GNU/Linux (Use at your own risk):

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
Since slstatus is included and pre-configured, you can simply trigger it in your .xinitrc:

    slstatus &
    exec bwm


Configuration
-------------
The configuration of bwm is done by creating a custom config.h
and (re)compiling the source code.

