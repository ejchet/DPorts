# New ports collection makefile for:	uudx
# Date created:		2 June 1996
# Whom:			ABURAYER Rewsirow <pcs51674@asciinet.or.jp>
#
# $FreeBSD: converters/uudx/Makefile 313600 2013-03-07 17:08:13Z miwi $
#

PORTNAME=	uudx
PORTVERSION=	2.99
CATEGORIES=	converters
MASTER_SITES=	http://ftp.vector.co.jp/pack/dos/util/bin/conv/
DISTNAME=	${PORTNAME}_${PORTVERSION:S/.//}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Extractor from uuencoded files

BUILD_DEPENDS=	nkf:${PORTSDIR}/japanese/nkf

USE_LHA=	yes
NO_WRKSUBDIR=	yes
MANLANG=	ja
MAN1=		uudx.1
PLIST_FILES=	bin/uudx

pre-patch:
	@${ECHO_MSG} "===>  Installing custom Makefile for ${DISTNAME}"
	@(${CP} ${FILESDIR}/Makefile ${WRKSRC})

post-patch:
	@${REINPLACE_CMD} -e '/sprintf()/d' ${WRKSRC}/uudx.c

.include <bsd.port.mk>
