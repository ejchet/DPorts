# New ports collection makefile for:	osslsigncode
# Date created:		9 November 2006
# Whom:			snb@threerings.net
#
# $FreeBSD: security/osslsigncode/Makefile 322783 2013-07-11 16:26:26Z sunpoet $
#

PORTNAME=	osslsigncode
PORTVERSION=	1.3
PORTREVISION=	3
CATEGORIES=	security devel
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTNAME}%20${PORTVERSION}

MAINTAINER=	snb@FreeBSD.org
COMMENT=	OpenSSL-based signcode utility

PLIST_FILES=	bin/osslsigncode

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_OPENSSL=	yes

.if !defined(WITHOUT_CURL)
LIB_DEPENDS+=	curl:${PORTSDIR}/ftp/curl
.endif

.include <bsd.port.mk>
