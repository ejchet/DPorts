# New ports collection makefile for:	devel/p5-IO-Digest
# Date created:				Sep 20 2004
# Whom:					Rong-En Fan <rafan@infor.org>
#
# $FreeBSD: ports/devel/p5-IO-Digest/Makefile,v 1.8 2012/11/17 05:56:18 svnexp Exp $
#

PORTNAME=	IO-Digest
PORTVERSION=	0.10
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	rafan@FreeBSD.org
COMMENT=	Calculate digests while reading or writing

BUILD_DEPENDS=	p5-PerlIO-via-dynamic>=0:${PORTSDIR}/devel/p5-PerlIO-via-dynamic \
		p5-Digest>=0:${PORTSDIR}/security/p5-Digest
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		IO::Digest.3

.include <bsd.port.mk>
