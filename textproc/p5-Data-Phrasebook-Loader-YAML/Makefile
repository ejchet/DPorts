# Created by: Anton Berezin <tobez@FreeBSD.org>
# $FreeBSD: textproc/p5-Data-Phrasebook-Loader-YAML/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Data-Phrasebook-Loader-YAML
PORTVERSION=	0.12
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Loader class for phrasebook implementations using YAML

LICENSE=	ART20

BUILD_DEPENDS=	p5-Data-Phrasebook>=0.24:${PORTSDIR}/textproc/p5-Data-Phrasebook \
		p5-YAML>=0.35:${PORTSDIR}/textproc/p5-YAML
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-Distribution>=0:${PORTSDIR}/devel/p5-Test-Distribution

USES=		perl5
USE_PERL5=	configure

MAN3=		Data::Phrasebook::Loader::YAML.3

.include <bsd.port.mk>
