# Created by: Emanuel Haupt <ehaupt@FreeBSD.org>
# $FreeBSD: dns/vizone/Makefile 317608 2013-05-07 13:53:08Z ehaupt $

PORTNAME=	vizone
PORTVERSION=	0.1
CATEGORIES=	dns
MASTER_SITES=	CRITICAL

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	Updates the serial number in one or more zonefiles

USES=		shebangfix
USE_PERL5_RUN=	yes
NO_BUILD=	yes

SHEBANG_FILES=	updserial

PORTEXAMPLES=	example.tld
PLIST_FILES=	bin/vizone bin/updserial

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/updserial ${PREFIX}/bin

.if !defined(NOPORTEXAMPLES)
	${MKDIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/example.tld ${EXAMPLESDIR}
.endif

.include <bsd.port.mk>
