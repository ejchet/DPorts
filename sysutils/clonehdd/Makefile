# New ports collection makefile for:   clonehdd
# Date created:        21 August 2007
# Whom:            Anton Lysenok <bart@tapolsky.net.ua>
#
# $FreeBSD: sysutils/clonehdd/Makefile 324191 2013-08-03 13:44:00Z mat $
#

PORTNAME=	clonehdd
PORTVERSION=	2.0.3
CATEGORIES=	sysutils
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTNAME}-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Tool for clone HDD on FreeBSD

USES=		perl5
USE_PERL5=	run
PLIST_FILES=	sbin/clonehdd
NO_BUILD=	YES
MAN8=		clonehdd.8
SUB_FILES=	pkg-message

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/clonehdd ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/clonehdd.8 ${MAN8PREFIX}/man/man8
	${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
