# $FreeBSD: ports/net/p5-Net-OpenStack-Attack/Makefile,v 1.1 2013/02/07 07:45:15 svnexp Exp $

PORTNAME=	Net-OpenStack-Attack
PORTVERSION=	1.0500
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	gslin@gslin.org
COMMENT=	Tools for stress testing an OpenStack deployment

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

RUN_DEPENDS=	p5-Any-Moose>=0:${PORTSDIR}/devel/p5-Any-Moose \
		p5-App-Rad>=0:${PORTSDIR}/devel/p5-App-Rad \
		p5-HTTP-Async>=0:${PORTSDIR}/www/p5-HTTP-Async \
		p5-JSON>=0:${PORTSDIR}/converters/p5-JSON \
		p5-Net-HTTPS-NB>=0:${PORTSDIR}/net/p5-Net-HTTPS-NB \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww

PERL_CONFIGURE=	yes

MAN1=		stackattack.1
MAN3=		Net::OpenStack::Attack.3

.include <bsd.port.mk>
