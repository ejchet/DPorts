# Created by: Andrey Zakhvatov
# $FreeBSD: editors/hexedit/Makefile 320142 2013-06-06 22:49:51Z wg $

PORTNAME=	hexedit
PORTVERSION=	1.2.13
CATEGORIES=	editors
MASTER_SITES=	http://rigaux.org/
DISTFILES=	${DISTNAME}.src.tgz

MAINTAINER=	obrien@FreeBSD.org
COMMENT=	View and edit files in hexadecimal or ASCII

LICENSE=	GPLv2

WRKSRC=		${WRKDIR}/${DISTNAME:S/-${PORTVERSION}//}

GNU_CONFIGURE=	yes
MAN1=		hexedit.1

PLIST_FILES=	bin/hexedit

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hexedit ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/hexedit.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
