# New ports collection makefile for:	Thrift
# Date created:	   27 September 2007
# Whom:		   Sergey Skvortsov <skv@protey.ru>
#
# $FreeBSD: ports/devel/p5-Thrift/Makefile,v 1.13 2012/11/17 05:56:34 svnexp Exp $
#

PORTNAME=	Thrift
PORTVERSION=	${THRIFT_PORTVERSION}	# need to keep this in sync with ../thrift see ../thrift/bsd.thrift.mk
PORTEPOCH=	1
CATEGORIES=	devel perl5
PKGNAMEPREFIX=	p5-
DISTFILES=

MAINTAINER=	komarov@valerka.net
COMMENT=	Perl interface to Thrift

BUILD_DEPENDS=	p5-Bit-Vector>=0:${PORTSDIR}/math/p5-Bit-Vector
RUN_DEPENDS=	p5-Bit-Vector>=0:${PORTSDIR}/math/p5-Bit-Vector
FETCH_DEPENDS+=	${NONEXISTENT}:${PORTSDIR}/devel/thrift:extract

PERL_CONFIGURE=	YES

post-extract:
	@${LN} -sfh \
	`cd ${PORTSDIR}/devel/thrift && ${MAKE} -V WRKSRC`/lib/perl ${WRKSRC}

.include "../thrift/bsd.thrift.mk"
.include <bsd.port.mk>
