# $FreeBSD: devel/p5-Eval-WithLexicals/Makefile 319094 2013-05-26 07:15:17Z kuriyama $

PORTNAME=	Eval-WithLexicals
PORTVERSION=	1.002000
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:DGL
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension for pure perl eval with persistent lexical variables

RUN_DEPENDS=	\
	p5-Moo>=0.009006:${PORTSDIR}/devel/p5-Moo
BUILD_DEPENDS=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	Eval::WithLexicals.3 \
	Eval::WithLexicals::WithHintPersistence.3

.include <bsd.port.mk>
