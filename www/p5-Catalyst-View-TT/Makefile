# Created by: Lars Thegler <lth@FreeBSD.org>
# $FreeBSD: www/p5-Catalyst-View-TT/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Catalyst-View-TT
PORTVERSION=	0.41
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Template Toolkit view class for Catalyst

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Catalyst-Runtime>=5.7000:${PORTSDIR}/www/p5-Catalyst-Runtime \
		p5-Class-Accessor>=0:${PORTSDIR}/devel/p5-Class-Accessor \
		p5-MRO-Compat>=0:${PORTSDIR}/devel/p5-MRO-Compat \
		p5-Path-Class>=0:${PORTSDIR}/devel/p5-Path-Class \
		p5-Template-Timer>=0:${PORTSDIR}/www/p5-Template-Timer \
		p5-Template-Toolkit>=0:${PORTSDIR}/www/p5-Template-Toolkit
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Catalyst::Helper::View::TT.3 \
		Catalyst::Helper::View::TTSite.3 \
		Catalyst::View::TT.3

.include <bsd.port.mk>
