# New ports collection makefile for:	p5-ShipIt-Step-Manifest
# Date created:		2010-11-28
# Whom:			Gea-Suan Lin <gslin@gslin.org>
#
# $FreeBSD: ports/devel/p5-ShipIt-Step-Manifest/Makefile,v 1.4 2012/12/16 06:16:54 svnexp Exp $
#

PORTNAME=	ShipIt-Step-Manifest
PORTVERSION=	0.01
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:MARCEL
PKGNAMEPREFIX=	p5-

MAINTAINER=	gslin@gslin.org
COMMENT=	ShipIt step for recreating the MANIFEST

RUN_DEPENDS=	p5-Dist-Joseki>=0:${PORTSDIR}/devel/p5-Dist-Joseki \
		p5-ShipIt>=0:${PORTSDIR}/devel/p5-ShipIt

PERL_CONFIGURE=	yes

MAN3=		ShipIt::Step::Manifest.3

.include <bsd.port.mk>
