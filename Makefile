PROG= bwm
MAN=

SRCS= bwm.c brw.c util.c

X11INC= /usr/local/include
FREETYPEINC= /usr/local/include/freetype2
X11LIB= /usr/local/lib

INCLUDES= -I$(X11INC) -I$(FREETYPEINC) -Isrc

CPPFLAGS= \
	-D_DEFAULT_SOURCE \
	-D_BSD_SOURCE \
	-D_XOPEN_SOURCE=700L \
	-DVERSION=\"$(VERSION)\" \
	-DXINERAMA \
	$(INCLUDES)

CFLAGS= \
	-std=c17 \
	-pedantic \
	-Wall \
	-Wextra \
	-Wno-deprecated-declarations \
	-Os \
	$(CPPFLAGS)

LDADD= -L$(X11LIB) -lX11 -lXinerama -lfontconfig -lXft

release: all install

.PATH: ${.CURDIR}/src
.PATH: ${.CURDIR}/obj
.OBJDIR: ${.CURDIR}/obj

_DIR != mkdir -p ${.CURDIR}/obj ${.CURDIR}/build/bin

BINDIR= /usr/local/bin

.include <bsd.prog.mk>

afterinstall:
	mkdir -p ${.CURDIR}/build/bin
	${INSTALL} ${INSTALL_COPY} -m 555 ${PROG} ${.CURDIR}/build/bin/${PROG}
