# Created by: Alexander Kriventsov <avk@vl.ru>
# $FreeBSD: security/p5-Crypt-Simple/Makefile 319439 2013-05-30 17:53:04Z az $

PORTNAME=	Crypt-Simple
PORTVERSION=	0.06
PORTREVISION=	2
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	avk@vl.ru
COMMENT=	Perl encrypt stuff simply

RUN_DEPENDS=	p5-Crypt-Blowfish>=0:${PORTSDIR}/security/p5-Crypt-Blowfish \
		p5-MIME-Base64>=0:${PORTSDIR}/converters/p5-MIME-Base64 \
		p5-FreezeThaw>=0:${PORTSDIR}/devel/p5-FreezeThaw
BUILD_DEPENDS=	p5-Crypt-Blowfish>=0:${PORTSDIR}/security/p5-Crypt-Blowfish \
		p5-MIME-Base64>=0:${PORTSDIR}/converters/p5-MIME-Base64 \
		p5-FreezeThaw>=0:${PORTSDIR}/devel/p5-FreezeThaw

PERL_CONFIGURE=	yes

MAN3=	Crypt::Simple.3

.include <bsd.port.mk>
