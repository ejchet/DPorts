# Created by: Dominik Brettnacher <domi@saargate.de>
# $FreeBSD: dns/p5-Net-LibIDN/Makefile 324171 2013-08-02 18:21:05Z az $

PORTNAME=	Net-LibIDN
PORTVERSION=	0.12
PORTREVISION=	1
CATEGORIES=	dns perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	This module provides access to the libidn library

LIB_DEPENDS=	idn.17:${PORTSDIR}/dns/libidn

USES=		perl5
USE_PERL5=	configure
CONFIGURE_ARGS+=	--with-libidn=${PREFIX}/lib --with-libidn-inc=${PREFIX}/include

MAN3=		Net::LibIDN.3

.include <bsd.port.mk>
