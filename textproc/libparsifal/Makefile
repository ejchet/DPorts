# ex:ts=8
# Ports collection makefile for:	libparsifal
# Date created:			Jan 6, 2004
# Whom:				ijliao
#
# $FreeBSD: textproc/libparsifal/Makefile 316683 2013-04-27 18:25:24Z mva $
#

PORTNAME=	libparsifal
PORTVERSION=	1.1.0
CATEGORIES=	textproc
MASTER_SITES=	http://www.saunalahti.fi/~samiuus/toni/xmlproc/

MAINTAINER=	yzlin@FreeBSD.org
COMMENT=	Lightweight XML Parser

USE_AUTOTOOLS=	libtool
USES=		iconv
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
USE_LDCONFIG=	yes

PLIST_SUB=	VERSION=${PORTVERSION}

post-patch:
	@${REINPLACE_CMD} -e 's|-O3|${CFLAGS}|g' ${WRKSRC}/configure

post-install:
.ifndef(NOPORTDOCS)
	@${ECHO_MSG} "===>   Installing documentation for ${PKGNAME}"
	@(cd ${WRKSRC}/doc/ && ${COPYTREE_SHARE} . ${DOCSDIR})
.endif

.include <bsd.port.mk>
