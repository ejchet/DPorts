# New ports collection makefile for:	Number-WithError-LaTeX
# Date created:				15 May 2006
# Whom:					Aaron Dalton <aaron@FreeBSD.org>
#
# $FreeBSD: math/p5-Number-WithError-LaTeX/Makefile 324171 2013-08-02 18:21:05Z az $
#

PORTNAME=	Number-WithError-LaTeX
PORTVERSION=	0.06
PORTREVISION=	1
CATEGORIES=	math perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	LaTeX output for Number::WithError

BUILD_DEPENDS=	p5-Params-Util>=0:${PORTSDIR}/devel/p5-Params-Util \
		p5-prefork>=0:${PORTSDIR}/devel/p5-prefork \
		p5-Number-WithError>=0:${PORTSDIR}/math/p5-Number-WithError \
		p5-TeX-Encode>=0:${PORTSDIR}/textproc/p5-TeX-Encode
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-LectroTest>=0:${PORTSDIR}/devel/p5-Test-LectroTest

MAN3=	Number::WithError::LaTeX.3

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
