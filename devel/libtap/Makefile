# Created by: Nik Clayton <nik@FreeBSD.org>
# $FreeBSD: ports/devel/libtap/Makefile,v 1.13 2013/01/12 13:02:14 svnexp Exp $

PORTNAME=	libtap
PORTVERSION=	1.01
PORTREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	nik
DISTNAME=	tap-${PORTVERSION}

MAINTAINER=	rodrigo@bebik.net
COMMENT=	Library implementing the Test Anything Protocol

USE_AUTOTOOLS=	libtool
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes

MAN3=		tap.3

post-build:
	@${CAT} ${PKGMESSAGE}

check:
	(cd ${WRKSRC}; ${MAKE} check)

.include <bsd.port.mk>
