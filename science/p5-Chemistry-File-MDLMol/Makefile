# New ports collection makefile for:	p5-Chemistry-File-MDLMol
# Date created:		2010-03-10
# Whom:			Steve Wills <steve@mouf.net>
#
# $FreeBSD: ports/science/p5-Chemistry-File-MDLMol/Makefile,v 1.5 2012/11/17 06:00:59 svnexp Exp $
#

PORTNAME=	Chemistry-File-MDLMol
PORTVERSION=	0.21
CATEGORIES=	science perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:ITUB
PKGNAMEPREFIX=	p5-

MAINTAINER=	swills@FreeBSD.org
COMMENT=	MDL molfile reader/write

BUILD_DEPENDS=	p5-Chemistry-Mol>=0:${PORTSDIR}/science/p5-Chemistry-Mol \
		p5-Chemistry-Ring>=0:${PORTSDIR}/science/p5-Chemistry-Ring
RUN_DEPENDS=	p5-Chemistry-Mol>=0:${PORTSDIR}/science/p5-Chemistry-Mol \
		p5-Chemistry-Ring>=0:${PORTSDIR}/science/p5-Chemistry-Ring

MAN3=	Chemistry::File::MDLMol.3 Chemistry::File::SDF.3

PERL_CONFIGURE=	yes

.include <bsd.port.mk>
