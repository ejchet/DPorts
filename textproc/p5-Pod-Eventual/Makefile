# Created by: Andrey Kostenko <andrey@kostenko.name>
# $FreeBSD: textproc/p5-Pod-Eventual/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Pod-Eventual
PORTVERSION=	0.093330
PORTREVISION=	1
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Read a POD document as a series of trivial events

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Mixin-Linewise>=0.001:${PORTSDIR}/devel/p5-Mixin-Linewise
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-Deep>=0:${PORTSDIR}/devel/p5-Test-Deep

USES=		perl5
USE_PERL5=	configure

MAN3=		Pod::Eventual.3 \
		Pod::Eventual::Simple.3

.include <bsd.port.mk>
