# Created by: janos.mohacsi@bsd.hu
# $FreeBSD: ports/mail/lookout/Makefile,v 1.8 2013/01/09 20:04:53 svnexp Exp $

PORTNAME=	lookout
PORTVERSION=	1.4
CATEGORIES=	mail
MASTER_SITES=	http://catb.org/~esr/lookout/

MAINTAINER=	jmohacsi@bsd.hu
COMMENT=	Convert Outlook97 addressbook export files to KDE KAB/GNOME gnomecard

USE_PYTHON=	yes
NO_BUILD=	yes

MAN1=		lookout.1
PLIST_FILES=	bin/lookout

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/lookout ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/lookout.1 ${PREFIX}/man/man1/lookout.1

.include <bsd.port.mk>
