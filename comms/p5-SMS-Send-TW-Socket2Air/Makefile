# Created by: Jui-Nan Lin <jnlin@csie.nctu.edu.tw>
# $FreeBSD: comms/p5-SMS-Send-TW-Socket2Air/Makefile 319102 2013-05-26 08:54:37Z az $

PORTNAME=	SMS-Send-TW-Socket2Air
PORTVERSION=	0.01
CATEGORIES=	comms perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	jnlin@csie.nctu.edu.tw
COMMENT=	SMS::Send driver for Socket2Air

RUN_DEPENDS=	p5-SMS-Send>=0:${PORTSDIR}/comms/p5-SMS-Send \
  		p5-Switch>=0:${PORTSDIR}/lang/p5-Switch \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww \
		p5-Text-Iconv>=0:${PORTSDIR}/converters/p5-Text-Iconv
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		SMS::Send::TW::Socket2Air.3

.include <bsd.port.mk>
