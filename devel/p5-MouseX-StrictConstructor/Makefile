# New ports collection makefile for:	p5-MouseX-StrictConstructor
# Date created:		2011-05-23
# Whom:			Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-MouseX-StrictConstructor/Makefile,v 1.2 2012/11/17 05:56:24 svnexp Exp $
#

PORTNAME=	MouseX-StrictConstructor
PORTVERSION=	0.02
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:GFUJI
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Make your object constructors blow up on unknown attributes

BUILD_DEPENDS=	p5-Mouse>=0.62:${PORTSDIR}/devel/p5-Mouse
RUN_DEPENDS=	p5-Mouse>=0.62:${PORTSDIR}/devel/p5-Mouse

PERL_CONFIGURE=	yes

MAN3=		MouseX::StrictConstructor.3

.include <bsd.port.mk>
