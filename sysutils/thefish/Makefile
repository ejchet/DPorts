# Created by: Miguel Mendez <flynn@energyhq.homeip.net>
# $FreeBSD: sysutils/thefish/Makefile 322210 2013-07-02 22:59:11Z rene $

PORTNAME=	thefish
PORTVERSION=	0.6.6
PORTREVISION=	6
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_BERLIOS}
MASTER_SITE_SUBDIR=	${PORTNAME}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Gtk+/ncurses rc.conf editor/management tool

WANT_GNOME=	yes

#OPTIONS_SINGLE=		X11
#OPTIONS_SINGLE_X11=	GTK2
#OPTIONS_DEFAULT=	GTK2

.include <bsd.port.options.mk>

#.if ${PORT_OPTIONS:MGTK2}
USE_GNOME=	gtk20
MAKE_ENV+=	WITH_GTK=yes
#.endif

MAN1=		thefish.1
PLIST_FILES=	bin/thefish

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/thefish ${PREFIX}/bin
	@${INSTALL_MAN} ${WRKSRC}/thefish.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
