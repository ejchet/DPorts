# New ports collection makefile for:	p5-SOAP-MySOAP
# Date created:		2007-04-30
# Whom:			Gea-Suan Lin <gslin@gslin.org>
#
# $FreeBSD: ports/net/p5-SOAP-MySOAP/Makefile,v 1.3 2012/11/17 06:00:13 svnexp Exp $
#

PORTNAME=	SOAP-MySOAP
PORTVERSION=	0.023
PORTREVISION=	1
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	SOAP
PKGNAMEPREFIX=	p5-

MAINTAINER=	gslin@gslin.org
COMMENT=	An extremely basic SOAP client module

BUILD_DEPENDS=	p5-libwww>=0:${PORTSDIR}/www/p5-libwww
RUN_DEPENDS=	p5-libwww>=0:${PORTSDIR}/www/p5-libwww

PERL_CONFIGURE=	yes

MAN3=		SOAP::MySOAP.3

.include <bsd.port.mk>
