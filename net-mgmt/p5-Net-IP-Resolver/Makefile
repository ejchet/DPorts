# Created by: Anton Berezin <tobez@FreeBSD.org>
# $FreeBSD: net-mgmt/p5-Net-IP-Resolver/Makefile 324276 2013-08-05 15:05:29Z az $

PORTNAME=	Net-IP-Resolver
PORTVERSION=	0.02
CATEGORIES=	net-mgmt perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	tobez@FreeBSD.org
COMMENT=	Net::IP::Resolver - Resolve IPs to a particular network

BUILD_DEPENDS=	p5-Net-IP-Match-XS>=0.03:${PORTSDIR}/net-mgmt/p5-Net-IP-Match-XS \
		p5-ExtUtils-AutoInstall>0:${PORTSDIR}/devel/p5-ExtUtils-AutoInstall
RUN_DEPENDS=	p5-Net-IP-Match-XS>=0.03:${PORTSDIR}/net-mgmt/p5-Net-IP-Match-XS

USES=		perl5
USE_PERL5=	configure

MAN3=	Net::IP::Resolver.3

.include <bsd.port.mk>
