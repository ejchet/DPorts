# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD: www/p5-Catalyst-View-ClearSilver/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Catalyst-View-ClearSilver
PORTVERSION=	0.02
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:JROCKWAY
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	ClearSilver view class for Catalyst

BUILD_DEPENDS=	p5-ClearSilver>=0:${PORTSDIR}/www/p5-ClearSilver \
		p5-Catalyst-Runtime>=5.7000:${PORTSDIR}/www/p5-Catalyst-Runtime \
		p5-Data-Structure-Util>=0:${PORTSDIR}/devel/p5-Data-Structure-Util \
		p5-Class-C3>=0:${PORTSDIR}/devel/p5-Class-C3 \
		p5-Catalyst-View-Templated>=0:${PORTSDIR}/www/p5-Catalyst-View-Templated
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Catalyst-View-Template-Declare>=0:${PORTSDIR}/www/p5-Catalyst-View-Template-Declare

USES=		perl5
USE_PERL5=	configure

MAN3=		Catalyst::Helper::View::ClearSilver.3 \
		Catalyst::View::ClearSilver.3

.include <bsd.port.mk>
