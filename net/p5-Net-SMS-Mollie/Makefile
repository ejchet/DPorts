# $FreeBSD: net/p5-Net-SMS-Mollie/Makefile 315613 2013-03-30 13:26:19Z miwi $

PORTNAME=	Net-SMS-Mollie
PORTVERSION=	0.04
PORTREVISION=	1
CATEGORIES=	net
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	b.smeelen@ose.nl
COMMENT=	Send SMS messages via the mollie.nl service

PERL_CONFIGURE=	yes

BUILD_DEPENDS+= p5-ExtUtils-MakeMaker>=0:${PORTSDIR}/devel/p5-ExtUtils-MakeMaker
RUN_DEPENDS+=	p5-Test-Simple>=0.44:${PORTSDIR}/devel/p5-Test-Simple \
		p5-XML-Simple>=0:${PORTSDIR}/textproc/p5-XML-Simple

MAN3=		Net::SMS::Mollie.3

.include <bsd.port.mk>
