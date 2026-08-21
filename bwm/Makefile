# bwm - bsd window manager
# See LICENSE file for copyright and license details.
.OBJDIR: ./

CC = cc

X11INC = /usr/local/include
FREETYPEINC = /usr/local/include/freetype2
X11LIB = /usr/local/lib

INCS = -I$(X11INC) -I$(FREETYPEINC) -Isrc

CPPFLAGS = \
	-D_DEFAULT_SOURCE \
	-D_BSD_SOURCE \
	-D_XOPEN_SOURCE=700L \
	-DXINERAMA

CFLAGS = \
	-std=c17 \
	-pedantic \
	-Wall \
	-Wextra \
	-Wno-deprecated-declarations \
	-Os \
	$(CPPFLAGS) \
	$(INCS)

LIBS = \
	-L$(X11LIB) \
	-lX11 \
	-lXinerama \
	-lfontconfig \
	-lXft


TARGET = bwm

OBJDIR = obj

OBJS = \
	$(OBJDIR)/brw.o \
	$(OBJDIR)/bwm.o \
	$(OBJDIR)/util.o


all: $(TARGET)


$(OBJDIR):
	mkdir -p $(OBJDIR)


$(OBJDIR)/brw.o: src/brw.c src/config.h
	@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/brw.c -o $@

$(OBJDIR)/bwm.o: src/bwm.c src/config.h
	@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/bwm.c -o $@

$(OBJDIR)/util.o: src/util.c src/config.h
	@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/util.c -o $@


$(TARGET): $(OBJS)
	$(CC) $(OBJS) $(LIBS) -o $@


clean:
	rm -f $(TARGET)
	rm -rf $(OBJDIR)


install: $(TARGET)
	install -d -m 755 /usr/local/bin
	install -m 755 $(TARGET) /usr/local/bin


uninstall:
	rm -f /usr/local/bin/$(TARGET)


.PHONY: all clean install uninstall
