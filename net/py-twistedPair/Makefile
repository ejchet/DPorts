# New ports collection makefile for:	py-twistedPair
# Date created:		14 April 2005
# Whom:	      		Neal Nelson <neal@nelson.name>
#
# $FreeBSD: ports/net/py-twistedPair/Makefile,v 1.10 2012/11/17 06:00:16 svnexp Exp $
#

PORTNAME=	twistedPair
PORTVERSION=	12.1.0
CATEGORIES=	net devel python
MASTER_SITES=	http://twistedmatrix.com/Releases/Pair/${PORTVERSION:R}/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	TwistedPair-${PORTVERSION}

MAINTAINER=	python@FreeBSD.org
COMMENT=	Twisted Pair can do low level TCP work

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}twistedCore>=${PORTVERSION}:${PORTSDIR}/devel/py-twistedCore
RUN_DEPENDS:=	${BUILD_DEPENDS}

WRKSRC=		${WRKDIR}/TwistedPair-${PORTVERSION}

USE_BZIP2=	yes
USE_PYTHON=	yes
USE_PYDISTUTILS=	yes
PYDISTUTILS_PKGNAME=	${PORTNAME:S/twisted/Twisted_/}

.include <bsd.port.mk>
