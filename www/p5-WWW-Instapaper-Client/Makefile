# Created by: TERAMOTO Masahiro <markun@onohara.to>
# $FreeBSD: www/p5-WWW-Instapaper-Client/Makefile 320269 2013-06-08 16:26:10Z miwi $

PORTNAME=	WWW-Instapaper-Client
PORTVERSION=	0.901
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	markun@onohara.to
COMMENT=	An implementation of the Instapaper client API

BUILD_DEPENDS=	p5-Class-Base>=0:${PORTSDIR}/devel/p5-Class-Base \
		p5-Crypt-SSLeay>=0:${PORTSDIR}/security/p5-Crypt-SSLeay \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_MODBUILD=	yes

MAN3=		WWW::Instapaper::Client.3

.include <bsd.port.mk>
