# New ports collection makefile for:	p5-LWP-Protocol-http10
# Date created:		2011-07-11
# Whom:			Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
#
# $FreeBSD: ports/www/p5-LWP-Protocol-http10/Makefile,v 1.3 2012/11/17 06:02:51 svnexp Exp $
#

PORTNAME=	LWP-Protocol-http10
PORTVERSION=	6.03
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Legacy HTTP/1.0 support for LWP

BUILD_DEPENDS=	p5-HTTP-Message>=6:${PORTSDIR}/www/p5-HTTP-Message \
		p5-libwww>=6:${PORTSDIR}/www/p5-libwww
RUN_DEPENDS=	p5-HTTP-Message>=6:${PORTSDIR}/www/p5-HTTP-Message \
		p5-libwww>=6:${PORTSDIR}/www/p5-libwww

PERL_CONFIGURE=	yes

MAN3=		LWP::Protocol::http10.3

.include <bsd.port.mk>
