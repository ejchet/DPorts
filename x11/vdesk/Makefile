# Created by: trevor
# $FreeBSD: x11/vdesk/Makefile 314504 2013-03-17 23:48:01Z eadler $

PORTNAME=	vdesk
PORTVERSION=	1.2
PORTREVISION=	3
CATEGORIES=	x11
MASTER_SITES=	http://offog.org/files/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Command-line utility for setting up and using virtual desktops

DOCS=		AUTHORS COPYING ChangeLog INSTALL NEWS README
PLIST_DIRS=	share/doc/vdesk
PLIST_FILES=	bin/vdesk

.include <bsd.port.options.mk>
.if ${PORT_OPTIONS:MDOCS}	
.for ii in ${DOCS}
PLIST_FILES+=	share/doc/vdesk/${ii}
.endfor
.endif
USE_AUTOTOOLS=	autoconf
USE_XORG=	x11

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vdesk ${PREFIX}/bin
.if ${PORT_OPTIONS:MDOCS}	
	${MKDIR} ${DOCSDIR}
.for ii in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${ii} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
