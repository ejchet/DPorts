# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD: devel/p5-POE-API-Hooks/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	POE-API-Hooks
PORTVERSION=	1.0800
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-
DISTNAME=	${PORTNAME}-${PORTVERSION:C/0+$//}

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Implement lightweight hooks into POE

BUILD_DEPENDS=	p5-POE>=0:${PORTSDIR}/devel/p5-POE \
		p5-Params-Validate>=0:${PORTSDIR}/devel/p5-Params-Validate
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		POE::API::Hooks.3

.include <bsd.port.mk>
