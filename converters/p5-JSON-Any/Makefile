# Created by: Cheng-Lung Sung <clsung@FreeBSD.org>
# $FreeBSD: converters/p5-JSON-Any/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	JSON-Any
PORTVERSION=	1.30
CATEGORIES=	converters perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl Wrapper Class for the various JSON classes

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-JSON>=2.02:${PORTSDIR}/converters/p5-JSON
RUN_DEPENDS=	p5-JSON>=2.02:${PORTSDIR}/converters/p5-JSON

USES=		perl5
USE_PERL5=	configure

MAN3=		JSON::Any.3

.include <bsd.port.mk>
