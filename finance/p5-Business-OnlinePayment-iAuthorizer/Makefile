# New ports collection makefile for:	Business::OnlinePayment::iAuthorizer
# Date created:				17 December 2003
# Whom:					Maxim Sobolev <sobomax@FreeBSD.org>
#
# $FreeBSD: finance/p5-Business-OnlinePayment-iAuthorizer/Makefile 324171 2013-08-02 18:21:05Z az $
#

PORTNAME=	Business-OnlinePayment-iAuthorizer
PORTVERSION=	0.2.1
PORTREVISION=	1
CATEGORIES=	finance perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A Business::OnlinePayment backend module for iAuthorizer

BUILD_DEPENDS=	p5-Business-OnlinePayment>=0:${PORTSDIR}/finance/p5-Business-OnlinePayment
RUN_DEPENDS:=	${BUILD_DEPENDS}

WRKSRC=		${WRKDIR}/${PORTNAME}

USES=		perl5
USE_PERL5=	configure

MAN3=		Business::OnlinePayment::iAuthorizer.3

.include <bsd.port.mk>
