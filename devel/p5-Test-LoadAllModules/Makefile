# $FreeBSD: devel/p5-Test-LoadAllModules/Makefile 318694 2013-05-21 13:31:40Z kuriyama $

PORTNAME=	Test-LoadAllModules
PORTVERSION=	0.022
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension to do use_ok for modules in search path

RUN_DEPENDS=	\
	p5-List-MoreUtils>0:${PORTSDIR}/lang/p5-List-MoreUtils
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	Test::LoadAllModules.3

.include <bsd.port.mk>
