# Created by: Frederic Culot <culot@FreeBSD.org>
# $FreeBSD: devel/p5-Term-RawInput/Makefile 321552 2013-06-22 08:22:38Z culot $

PORTNAME=	Term-RawInput
PORTVERSION=	1.15
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:REEDFISH
PKGNAMEPREFIX=	p5-

MAINTAINER=	culot@FreeBSD.org
COMMENT=	Drop-in replacement for <STDIN> with handling of non-standard keys

BUILD_DEPENDS=	p5-Term-ReadKey>=0:${PORTSDIR}/devel/p5-Term-ReadKey
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Term::RawInput.3

.include <bsd.port.mk>
