# New ports collection makefile for:   p5-Net-MSN
# Date created:        22 June 2004
# Whom:                snowchyld
# $FreeBSD: net-im/p5-Net-MSN/Makefile 324171 2013-08-02 18:21:05Z az $

PORTNAME=	Net-MSN
PORTVERSION=	1.022
PORTREVISION=	1
CATEGORIES=	net-im perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Net::MSN interface

DEPRECATED=	Primary MSN Messenger service terminated 30 APR 2013
EXPIRATION_DATE=2013-10-31

BUILD_DEPENDS=	p5-Hash-Merge>=0:${PORTSDIR}/textproc/p5-Hash-Merge \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
