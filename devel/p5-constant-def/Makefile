# New ports collection makefile for:	p5-constant-def
# Date created:		2009-07-21
# Whom:			Mons Anderson <mons@cpan.org>
#
# $FreeBSD: ports/devel/p5-constant-def/Makefile,v 1.4 2012/11/17 05:56:36 svnexp Exp $
#

PORTNAME=	constant-def
PORTVERSION=	0.01
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	mons@cpan.org
COMMENT=	Declare only undeclared constants

BUILD_DEPENDS=	p5-ex-lib>=0.06:${PORTSDIR}/devel/p5-ex-lib
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		constant::def.3 constant::abs.3

.include <bsd.port.mk>
