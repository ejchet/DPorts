# New ports collection makefile for:	http_post
# Date created:				9 Sep 2012
# Whom:					Masaki TAGAWA <masaki@club.kyutech.ac.jp>
#
# $FreeBSD: ports/www/http_post/Makefile,v 1.2 2012/11/17 06:02:36 svnexp Exp $
#

PORTNAME=	http_post
PORTVERSION=	1.0.20110118
CATEGORIES=	www ipv6
MASTER_SITES=	http://www.acme.com/software/http_post/
DISTNAME=	${PORTNAME}_18jan2011

MAINTAINER=	masaki@club.kyutech.ac.jp
COMMENT=	Do a POST operaion and Dump http-contents to stdout

WRKSRC=		${WRKDIR}/http_post
MAKEFILE=	${FILESDIR}/Makefile.bsd

MAN1=		http_post.1
MANCOMPRESSED=	yes
PLIST_FILES=	bin/http_post

.ifndef NO_OPENSSL
USE_OPENSSL=	yes
.endif

.include <bsd.port.mk>
