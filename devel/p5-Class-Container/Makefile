# New ports collection makefile for:	Class::Container
# Date created:				5 July 2002
# Whom:					Denis Shaposhnikov <dsh@vlink.ru>
#
# $FreeBSD: ports/devel/p5-Class-Container/Makefile,v 1.15 2012/11/17 05:56:07 svnexp Exp $
#

PORTNAME=	Class-Container
PORTVERSION=	0.12
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	dsh@vlink.ru
COMMENT=	Glues object frameworks together transparently

BUILD_DEPENDS=	p5-Params-Validate>=0:${PORTSDIR}/devel/p5-Params-Validate
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Class::Container.3

.include <bsd.port.mk>
