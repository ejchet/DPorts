# Created by: Warner Losh <imp@FreeBSD.org>
# $FreeBSD: devel/p5-Acme-Damn/Makefile 314061 2013-03-13 11:01:26Z bapt $

PORTNAME=	Acme-Damn
PORTVERSION=	0.05
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	imp@FreeBSD.org
COMMENT=	Unblessing perl objects

RUN_DEPENDS=	p5-Test-Exception>=0.29:${PORTSDIR}/devel/p5-Test-Exception
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN3 += Acme::Damn.3

.include <bsd.port.mk>
