# Created by: Roman Shterenzon <roman@xpert.com>
# $FreeBSD: editors/chexedit/Makefile 323483 2013-07-22 17:29:52Z amdmi3 $

PORTNAME=	chexedit
PORTVERSION=	0.9.7
PORTREVISION=	2
CATEGORIES=	editors
MASTER_SITES=	http://www.rogoyski.com/adam/programs/hexedit/ \
		http://mirror.amdmi3.ru/distfiles/
DISTNAME=	hexedit-${PORTVERSION}

MAINTAINER=	amdmi3@FreeBSD.org
COMMENT=	Full screen text mode Hex editor using the [n]curses library

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

GNU_CONFIGURE=	yes
PLIST_FILES=	bin/chexedit

MAN1=		chexedit.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/hexedit ${PREFIX}/bin/chexedit
	${INSTALL_MAN} ${WRKSRC}/docs/hexedit.1 ${PREFIX}/man/man1/chexedit.1

.include <bsd.port.mk>
