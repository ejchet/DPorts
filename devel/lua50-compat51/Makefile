# New ports collection makefile for:   lua50-compat51
# Date created:        14 April 2006
# Whom:                Andrew Turner <andrew+ports@fubar.geek.nz>
#
# $FreeBSD: ports/devel/lua50-compat51/Makefile,v 1.11 2012/11/17 05:55:59 svnexp Exp $
#

PORTNAME=	compat
DISTVERSION=	${CVER}${CREV}
PORTREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	http://files.luaforge.net/releases/compat/Compat-5.1/Compat-5.1release5/
PKGNAMEPREFIX=	${LUA_PKGNAMEPREFIX}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Lua 5.1 package compatibility layer for Lua 5.0.x

USE_LUA=	5.0
WRKSRC=		${WRKDIR}/compat-${CVER}${CREV}

MAKE_ENV+=	CVER="${CVER}"
PLIST_FILES=	%%LUA_MODSHAREDIR%%/compat-${CVER}.lua \
		%%LUA_MODLIBDIR%%/lcompat-${CVER}.so \
		%%LUA_INCDIR%%/compat-${CVER}.h

# Update these values when there is a new release.
CVER=		5.1
CREV=		r5

post-extract:
	@${CP} ${FILESDIR}/Makefile ${WRKSRC}

do-install:
	${INSTALL_DATA} ${WRKSRC}/compat-${CVER}.lua ${LUA_MODSHAREDIR}
	${INSTALL_PROGRAM} ${WRKSRC}/lcompat-${CVER}.so ${LUA_MODLIBDIR}
	${INSTALL_DATA} ${WRKSRC}/compat-${CVER}.h ${LUA_INCDIR}

.include <bsd.port.mk>
