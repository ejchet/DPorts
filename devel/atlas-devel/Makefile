# New ports collection makefile for:	Atlas
# Date created:				3 February 2005
# Whom:					Janni <jannisan@t-online.de>
#
# $FreeBSD: devel/atlas-devel/Makefile 314640 2013-03-19 13:04:30Z eadler $
#

PORTNAME=	Atlas
PORTVERSION=	0.6.2
CATEGORIES=	devel
MASTER_SITES=	SF/worldforge/${PORTNAME}-C%2B%2B%20%28protocol%20lib%29/${PORTVERSION}
DISTNAME=	${PORTNAME}-C++-${PORTVERSION:S/.r/rc/}

MAINTAINER=	oliver@FreeBSD.org
COMMENT=	A C++ reference implementation of the Atlas protocol

USE_AUTOTOOLS=	libtool
USE_LDCONFIG=	YES
USE_BZIP2=	YES
USES=	pathfix
NO_LATEST_LINK=	YES

CONFIGURE_ARGS+=--program-transform-name=

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for docfile in README COPYING AUTHORS THANKS NEWS ChangeLog TODO HACKING ROADMAP
	@${INSTALL_DATA} ${WRKSRC}/${docfile} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
