# New ports collection makefile for:	p5-Net-WhitePages
# Date created:				16 Oct 2010
# Whom:	      				Zane C. Bowers <vvelox@vvelox.net>
#
# $FreeBSD: ports/net/p5-Net-WhitePages/Makefile,v 1.3 2012/11/17 06:00:12 svnexp Exp $
#

PORTNAME=	Net-WhitePages
PORTVERSION=	1.04
PORTREVISION=	1
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	vvelox@vvelox.net
COMMENT=	Provides access to the XML API for WhitePages.com

BUILD_DEPENDS=	p5-Params-Validate>=0:${PORTSDIR}/devel/p5-Params-Validate \
		p5-URI>=0:${PORTSDIR}/net/p5-URI \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Net::WhitePages.3

.include <bsd.port.mk>
