# Created by: Tomoyuki Sakurai <cherry@trombik.org>
# $FreeBSD: devel/p5-Config-JSON/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Config-JSON
PORTVERSION=	1.5100
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	JSON based config file system

RUN_DEPENDS=	\
		p5-Scalar-List-Utils>=1.19:${PORTSDIR}/lang/p5-Scalar-List-Utils \
		p5-File-Temp>=0.18:${PORTSDIR}/devel/p5-File-Temp \
		p5-JSON>=2.16:${PORTSDIR}/converters/p5-JSON \
		p5-Any-Moose>=0.13:${PORTSDIR}/devel/p5-Any-Moose
BUILD_DEPENDS=  ${RUN_DEPENDS}
TEST_DEPENDS=	p5-Test-Deep>=0:${PORTSDIR}/devel/p5-Test-Deep

USES=		perl5
USE_PERL5=	configure
MAN3=		Config::JSON.3

.include <bsd.port.mk>
