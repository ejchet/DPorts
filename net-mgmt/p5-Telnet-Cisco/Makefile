# New ports collection makefile for:	p5-Net-Telnet-Cisco
# Date created:			August 16 2001
# Whom:	      			Michael Lyngb�l <lyngbol@wheel.dk>
#
# $FreeBSD: ports/net-mgmt/p5-Telnet-Cisco/Makefile,v 1.8 2012/11/17 06:00:36 svnexp Exp $
#

PORTNAME=	Net-Telnet-Cisco
PORTVERSION=	1.10
PORTREVISION=	1
CATEGORIES=	net-mgmt perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lyngbol@wheel.dk
COMMENT=	Perl5 module to telnet to Cisco routers

RUN_DEPENDS=	p5-Net-Telnet>=3.02:${PORTSDIR}/net/p5-Net-Telnet \
		p5-Term-ReadKey>=2:${PORTSDIR}/devel/p5-Term-ReadKey

PERL_CONFIGURE=	yes

MAN3=		Net::Telnet::Cisco.3

.include <bsd.port.mk>
