# New ports collection makefile for:	http_get
# Date created:				15. May 2003
# Whom:					Aaron Zauner <az_mail@gmx.at>
#
# $FreeBSD: ports/www/http_get/Makefile,v 1.7 2012/11/17 06:02:36 svnexp Exp $
#

PORTNAME=	http_get
PORTVERSION=	1.0.20100619
CATEGORIES=	www ipv6
MASTER_SITES=	http://www.acme.com/software/http_get/
DISTNAME=	${PORTNAME}_19jun2010

MAINTAINER=	masaki@club.kyutech.ac.jp
COMMENT=	Dump http-contents to stdout

WRKSRC=		${WRKDIR}/http_get
MAKEFILE=	${FILESDIR}/Makefile.bsd

MAN1=		http_get.1
MANCOMPRESSED=	yes
PLIST_FILES=	bin/http_get

.ifndef NO_OPENSSL
USE_OPENSSL=	yes
.endif

.include <bsd.port.mk>
