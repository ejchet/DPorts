# New ports collection makefile for:	p5-Plack-Middleware-ForceEnv
# Date created:		2012-04-03
# Whom:			Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
#
# $FreeBSD: ports/www/p5-Plack-Middleware-ForceEnv/Makefile,v 1.2 2012/11/17 06:02:53 svnexp Exp $
#

PORTNAME=	Plack-Middleware-ForceEnv
PORTVERSION=	0.02
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Force set environment variables for testing

BUILD_DEPENDS=	p5-Plack>=0.9925:${PORTSDIR}/www/p5-Plack
RUN_DEPENDS=	p5-Plack>=0.9925:${PORTSDIR}/www/p5-Plack

PERL_CONFIGURE=	yes

MAN3=		Plack::Middleware::ForceEnv.3

.include <bsd.port.pre.mk>
.include <bsd.port.post.mk>
