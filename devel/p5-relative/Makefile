# New ports collection makefile for:	devel/p5-relative
# Date created:							Tue Dec  9 11:32:16 EST 2008
# Whom:									skreuzer@exit2shell.com
#
# $FreeBSD: ports/devel/p5-relative/Makefile,v 1.4 2012/11/17 05:56:36 svnexp Exp $
#

PORTNAME=	relative
PORTVERSION=	0.04
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:SAPER
PKGNAMEPREFIX=	p5-

MAINTAINER=	skreuzer@FreeBSD.org
COMMENT=	Load modules with relative names

RUN_DEPENDS=	p5-UNIVERSAL-require>=0.11:${PORTSDIR}/devel/p5-UNIVERSAL-require

BUILD_DEPEND=	${RUN_DEPENDS} \
				p5-Test-Simple>=0.74:${PORTSDIR}/devel/p5-Test-Simple

PERL_CONFIGURE=	yes

MAN3=		relative.3

.include <bsd.port.mk>
