# New ports collection makefile for:	SVN::Look
# Date created:		2009-01-27
# Whom:			Greg Larkin <glarkin@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-SVN-Look/Makefile,v 1.17 2012/11/17 05:56:28 svnexp Exp $
#

PORTNAME=	SVN-Look
PORTVERSION=	0.38
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	glarkin@FreeBSD.org
COMMENT=	Caching wrapper around the svnlook command

BUILD_DEPENDS=	subversion>=1.7.0:${PORTSDIR}/devel/subversion \
		p5-URI>=0:${PORTSDIR}/net/p5-URI \
		p5-PathTools>=0:${PORTSDIR}/devel/p5-PathTools
RUN_DEPENDS=	subversion>=1.7.0:${PORTSDIR}/devel/subversion \
		p5-URI>=0:${PORTSDIR}/net/p5-URI \
		p5-PathTools>=0:${PORTSDIR}/devel/p5-PathTools

PERL_CONFIGURE=	yes

MAN3=		SVN::Look.3

.include <bsd.port.mk>
