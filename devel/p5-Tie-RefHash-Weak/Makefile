# Created by: chinsan
# $FreeBSD: devel/p5-Tie-RefHash-Weak/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Tie-RefHash-Weak
PORTVERSION=	0.09
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Tie::RefHash subclass with weakened references in the keys

RUN_DEPENDS=	p5-Task-Weaken>=0:${PORTSDIR}/devel/p5-Task-Weaken \
		p5-Tie-RefHash>=1.34:${PORTSDIR}/devel/p5-Tie-RefHash \
		p5-Variable-Magic>=0:${PORTSDIR}/devel/p5-Variable-Magic
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Tie::RefHash::Weak.3

.include <bsd.port.mk>
