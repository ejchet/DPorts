# New ports collection makefile for:	etrace
# Date created:				2006-05-07
# Whom:					dave.ryan@gmail.com
#
# $FreeBSD: ports/net/etrace/Makefile,v 1.3 2012/11/17 06:00:00 svnexp Exp $
#

PORTNAME=	etrace
PORTVERSION=	1.1
PORTREVISION=	0
CATEGORIES=	net
MASTER_SITES=	http://www.bindshell.net/tools/etrace/
DISTNAME=	${PORTNAME}.${PORTVERSION}
EXTRACT_SUFX=	.tgz

MAINTAINER=	dave.ryan@gmail.com
COMMENT=	A configurable static port network tracing tool

BUILD_DEPENDS=	${LOCALBASE}/lib/libdnet.a:${PORTSDIR}/net/libdnet \
		${LOCALBASE}/lib/libpcap.a:${PORTSDIR}/net/libpcap

WRKSRC=		${WRKDIR}/etrace
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=		--with-libdnet=${PREFIX}

MAN8=	etrace.8

.include <bsd.port.mk>
