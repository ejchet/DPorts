# Created by: Ed Schouten <ed@fxq.nl>
# $FreeBSD: ports/net/uriparser/Makefile,v 1.16 2012/11/17 06:00:24 svnexp Exp $

PORTNAME=	uriparser
PORTVERSION=	0.7.7
CATEGORIES=	net
MASTER_SITES=	SF/${PORTNAME}/Sources/${PORTVERSION}

MAINTAINER=	ed@FreeBSD.org
COMMENT=	URI parsing library

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=--disable-doc --disable-test

USE_BZIP2=	yes
USE_AUTOTOOLS=	libtool
USE_LDCONFIG=	yes

post-patch:
	@${REINPLACE_CMD} 's|$$(libdir)/pkgconfig|$$(libdir)data/pkgconfig|' \
	    ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
