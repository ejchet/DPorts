# New ports collection makefile for:	p5-Net-LDAP-AutoServer
# Date created:		2010-02-18
# Whom:			Zane C, Bowers <vvelox@vvelox.net>
#
# $FreeBSD: ports/net/p5-Net-LDAP-AutoServer/Makefile,v 1.6 2012/11/17 06:00:11 svnexp Exp $
#

PORTNAME=	Net-LDAP-AutoServer
PORTVERSION=	0.2.1
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:VVELOX
PKGNAMEPREFIX=	p5-

MAINTAINER=	vvelox@vvelox.net
COMMENT=	Automatically make some default decisions some LDAP server information

RUN_DEPENDS=	p5-perl-ldap>=0:${PORTSDIR}/net/p5-perl-ldap \
		p5-Net-DNS>=0:${PORTSDIR}/dns/p5-Net-DNS \
		p5-Net-DNS-RR-SRV-Helper>=0:${PORTSDIR}/dns/p5-Net-DNS-RR-SRV-Helper

PERL_CONFIGURE=	yes

MAN3=		Net::LDAP::AutoServer.3

.include <bsd.port.mk>
