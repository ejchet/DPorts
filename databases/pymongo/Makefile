# Created by: wen@FreeBSD.org
# $FreeBSD: databases/pymongo/Makefile 319112 2013-05-26 14:31:30Z wen $

PORTNAME=	pymongo
PORTVERSION=	2.5
PORTREVISION=	1
CATEGORIES=	databases python
MASTER_SITES=	CHEESESHOP

MAINTAINER=	wen@FreeBSD.org
COMMENT=	Python driver for MongoDB

USE_PYTHON=		yes
USE_PYDISTUTILS=	easy_install
PYEASYINSTALL_ARCHDEP=	yes
PYDISTUTILS_NOEGGINFO=	yes

.include <bsd.port.pre.mk>

.if ${ARCH} == "ia64" || ${ARCH} == "powerpc" || ${ARCH} == "sparc64"
BROKEN=		Does not install on ia64, powerpc, or sparc64
.endif

.if ${PYTHON_REL} >= 320
.include "${PORTSDIR}/devel/py-virtualenv/files/py3k-fix-pkg-plist.inc"
.endif

.include <bsd.port.post.mk>
