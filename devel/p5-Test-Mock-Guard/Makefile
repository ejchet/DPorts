# $FreeBSD: ports/devel/p5-Test-Mock-Guard/Makefile,v 1.3 2013/01/12 16:34:30 svnexp Exp $

PORTNAME=	Test-Mock-Guard
PORTVERSION=	0.09
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension for simple mock test library using RAII

BUILD_DEPENDS=	p5-Class-Load>=0.06:${PORTSDIR}/devel/p5-Class-Load
RUN_DEPENDS=	p5-Class-Load>=0.06:${PORTSDIR}/devel/p5-Class-Load

PERL_CONFIGURE=	yes

MAN3=	Test::Mock::Guard.3

.include <bsd.port.mk>
