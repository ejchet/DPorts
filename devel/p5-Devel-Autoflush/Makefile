# New ports collection makefile for:	p5-Devel-Autoflush
# Date created:		2011-02-04
# Whom:			Steve Wills <swills@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-Devel-Autoflush/Makefile,v 1.4 2012/11/17 05:56:13 svnexp Exp $
#

PORTNAME=	Devel-Autoflush
PORTVERSION=	0.05
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:DAGOLDEN
PKGNAMEPREFIX=	p5-

MAINTAINER=	swills@FreeBSD.org
COMMENT=	Set autoflush from the command line

BUILD_DEPENDS=	p5-IO-CaptureOutput>0:${PORTSDIR}/devel/p5-IO-CaptureOutput
RUN_DEPENDS:=	${BUILD_DEPENDS}

MAN3=		Devel::Autoflush.3

PERL_CONFIGURE=	yes

.include <bsd.port.mk>
