# New ports collection makefile for:	p5-POE-Filter-IRCD
# Date created:		6 May 2006
# Whom:			Andrew Pantyukhin <infofarmer@FreeBSD.org>
#
# $FreeBSD: ports/irc/p5-POE-Filter-IRCD/Makefile,v 1.21 2012/11/17 05:58:29 svnexp Exp $
#

PORTNAME=	POE-Filter-IRCD
PORTVERSION=	2.42
CATEGORIES=	irc devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	A POE-based parser for the IRC protocol

BUILD_DEPENDS=	p5-POE>=0:${PORTSDIR}/devel/p5-POE
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes
MAN3=		POE::Filter::IRCD.3

.include <bsd.port.mk>
