# Created by: Zach Thompson <hideo@lastamericanempire.com>
# $FreeBSD: finance/p5-Finance-Currency-Convert-WebserviceX/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Finance-Currency-Convert-WebserviceX
PORTVERSION=	0.07001
CATEGORIES=	finance perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Lightweight currency conversion using WebserviceX.NET

BUILD_DEPENDS=	p5-libwww>=0:${PORTSDIR}/www/p5-libwww \
		p5-Module-Install>=0.65:${PORTSDIR}/devel/p5-Module-Install
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Finance::Currency::Convert::WebserviceX.3

.include <bsd.port.mk>
