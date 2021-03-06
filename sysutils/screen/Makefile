# Created by: ache
# $FreeBSD: sysutils/screen/Makefile 316744 2013-04-28 20:01:07Z bapt $

PORTNAME=	screen
PORTVERSION=	4.0.3
PORTREVISION=	14
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.uni-erlangen.de/pub/utilities/screen/ \
		http://komquats.com/distfiles/ \
		http://people.freebsd.org/~cy/distfiles/ \
		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	screen

MAINTAINER=	cy@FreeBSD.org
COMMENT=	A multi-screen window manager

OPTIONS_DEFINE=	CJK INFO MAN NETHACK XTERM_256 HOSTINLOCKED SHOWENC
OPTIONS_DEFAULT=	INFO MAN NETHACK XTERM_256
CJK_DESC=		Treat CJK ambiguous characters as full width
INFO_DESC=		Build and install info documentation
MAN_DESC=		Build and install man pages
NETHACK_DESC=		Enable nethack-style messages
XTERM_256_DESC=		Enable support for 256 colour xterm
HOSTINLOCKED_DESC=	Print user@host in locked message
SHOWENC_DESC=		Show encoding on the status line

.include <bsd.port.options.mk>

GNU_CONFIGURE=	yes
.if ${PORT_OPTIONS:MMAN}
MAN1=		screen.1
MAKE_ARGS+=	-DWITH_MAN
.endif
.if ${PORT_OPTIONS:MINFO}
.if !exists(/usr/bin/install-info)
RUN_DEPENDS+=	install-info:${PORTSDIR}/print/texinfo
.endif
INFO=		screen
MAKE_ARGS+=	-DWITH_INFO
.endif

.if ${ARCH} == "alpha"
CFLAGS+=	-O0
.endif

# Enables support for 256 colour xterm.  Note that you may need to
# set up a custom termcap entry or .screenrc which modifies termcap
# to contain the following: Co#256:AB=\E[48;5;%dm:AF=\E[38;5;%dm
#
.if ${PORT_OPTIONS:MXTERM_256}
CFLAGS+=	-DCOLORS256
.endif

.if ! ${PORT_OPTIONS:MNETHACK}
CFLAGS+=	-DNONETHACK
.endif

# treat CJK ambiguous characters as full width via option "cjkwidth"
.if ${PORT_OPTIONS:MCJK}
EXTRA_PATCHES+=	${FILESDIR}/opt-cjkwidth
.endif

.if ${PORT_OPTIONS:MHOSTINLOCKED}
EXTRA_PATCHES+= ${FILESDIR}/opt-hostinlocked
.endif

# show encoding on the status line via option "showenc"
.if ${PORT_OPTIONS:MSHOWENC}
EXTRA_PATCHES+=	${FILESDIR}/opt-showencoding
.endif

post-patch:
	@${RM} ${WRKSRC}/doc/screen.info*
	@${REINPLACE_CMD} -e 's|/dev/ptmx|/nonexistent|' ${WRKSRC}/configure

post-install:
	@${MKDIR} ${EXAMPLESDIR}
	@${CP} ${WRKSRC}/etc/etcscreenrc ${EXAMPLESDIR}/screenrc
	@if [ ! -f ${PREFIX}/etc/screenrc ]; then \
		${CP} ${EXAMPLESDIR}/screenrc ${PREFIX}/etc/screenrc ; \
	fi

.include <bsd.port.mk>
