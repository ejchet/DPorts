# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: ports/textproc/p5-Lingua-EN-FindNumber/Makefile,v 1.2 2012/11/17 06:02:05 svnexp Exp $

PORTNAME=	Lingua-EN-FindNumber
PORTVERSION=	1.2
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Locate (written) numbers in English text

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Lingua-EN-Words2Nums>=0:${PORTSDIR}/textproc/p5-Lingua-EN-Words2Nums
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-Pod>=1:${PORTSDIR}/devel/p5-Test-Pod \
		p5-Test-Pod-Coverage>=1:${PORTSDIR}/devel/p5-Test-Pod-Coverage

PERL_CONFIGURE=	yes

MAN3=		Lingua::EN::FindNumber.3

.include <bsd.port.mk>
