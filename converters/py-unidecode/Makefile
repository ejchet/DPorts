# Created by: Douglas Thrift <douglas@douglasthrift.net>
# $FreeBSD: converters/py-unidecode/Makefile 319761 2013-06-03 08:21:04Z culot $

PORTNAME=	unidecode
PORTVERSION=	0.04.13
CATEGORIES=	converters python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	Unidecode-${PORTVERSION}

MAINTAINER=	douglas@douglasthrift.net
COMMENT=	ASCII transliterations of Unicode text

LICENSE=	GPLv2

USE_PYTHON=	yes
USE_PYDISTUTILS=	yes
PYDISTUTILS_PKGNAME=	Unidecode

.include <bsd.port.pre.mk>

.if ${PYTHON_REL} >= 320
.include "${PORTSDIR}/devel/py-virtualenv/files/py3k-fix-pkg-plist.inc"
.endif

.include <bsd.port.post.mk>
