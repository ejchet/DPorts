# New ports collection makefile for:	Object-Enum
# Date created:				21 May 2006
# Whom:					Aaron Dalton <aaron@FreeBSD.org>
#
# $FreeBSD: devel/p5-Object-Enum/Makefile 324171 2013-08-02 18:21:05Z az $
#

PORTNAME=	Object-Enum
PORTVERSION=	0.07.2
DISTVERSION=	${PORTVERSION:C/\.(.)$/\1/}
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Replacement for if ($$foo eq 'bar')

RUN_DEPENDS=	p5-Sub-Install>=0:${PORTSDIR}/devel/p5-Sub-Install \
		p5-Sub-Exporter>=0:${PORTSDIR}/devel/p5-Sub-Exporter \
		p5-Class-Data-Inheritable>=0:${PORTSDIR}/devel/p5-Class-Data-Inheritable \
		p5-Class-Accessor>=0:${PORTSDIR}/devel/p5-Class-Accessor
BUILD_DEPENDS:=	${RUN_DEPENDS}

MAN3=	Object::Enum.3

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
