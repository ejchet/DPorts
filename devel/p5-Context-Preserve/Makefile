# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD: devel/p5-Context-Preserve/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Context-Preserve
PORTVERSION=	0.01
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:JROCKWAY
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Run code after a subroutine call, preserving the context the subroutine

TEST_DEPENDS=	p5-Test-use-ok>=0:${PORTSDIR}/devel/p5-Test-use-ok \
		p5-Test-Exception>0:${PORTSDIR}/devel/p5-Test-Exception

USES=		perl5
USE_PERL5=	configure

MAN3=		Context::Preserve.3

.include <bsd.port.mk>
