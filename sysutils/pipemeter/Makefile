# Created by: Len Sassama
# $FreeBSD: sysutils/pipemeter/Makefile 319271 2013-05-27 16:41:53Z bsam $

PORTNAME=	pipemeter
PORTVERSION=	1.1.3
CATEGORIES=	sysutils
MASTER_SITES=	http://launchpadlibrarian.net/57215122/ \
		http://spamaps.org/files/pipemeter/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Tool for displaying pipe status information

LICENSE=	GPLv2 # (or later)

GNU_CONFIGURE=	yes

MAN1=		pipemeter.1
PLIST_FILES=	bin/pipemeter

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pipemeter ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/pipemeter.1 ${MANPREFIX}/man/man1

.include <bsd.port.mk>
