# Created by: Andrew Pantyukhin <infofarmer@FreeBSD.org>
# $FreeBSD: net/p5-URI-FromHash/Makefile 321110 2013-06-17 13:53:08Z culot $

PORTNAME=	URI-FromHash
DISTVERSION=	0.04
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	culot@FreeBSD.org
COMMENT=	Create URI from hash of components

LICENSE=	ART20

BUILD_DEPENDS=	p5-Params-Validate>=0:${PORTSDIR}/devel/p5-Params-Validate \
		p5-URI>=1.22:${PORTSDIR}/net/p5-URI
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	YES

MAN3=		URI::FromHash.3

.include <bsd.port.mk>
