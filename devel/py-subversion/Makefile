# New ports collection makefile for:   subversion-python
# Date Created:                April 17 2004
# Whom:                        thinker@branda.to
#
# $FreeBSD: devel/py-subversion/Makefile 321328 2013-06-19 21:13:34Z ohauer $
#

PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	lev@FreeBSD.org
COMMENT=	Python bindings for version control system

.if defined(WITH_SUBVERSION_VER) && ${WITH_SUBVERSION_VER} == 16
MASTERDIR=	${.CURDIR}/../../devel/subversion16
.elif defined(WITH_SUBVERSION_VER) && ${WITH_SUBVERSION_VER} == 17
MASTERDIR=	${.CURDIR}/../../devel/subversion17
.else
MASTERDIR=	${.CURDIR}/../../devel/subversion
.endif
PKGDIR=		${.CURDIR}

USE_PYTHON=	yes

SVN_BUILD_BINDINGS=	yes

.include "${MASTERDIR}/Makefile.common"

CATEGORIES+=	python

do-build:
	cd ${WRKSRC} ; ${MAKE} swig-py-lib ; ${MAKE} swig-py

do-install:
	cd ${WRKSRC} ; ${MAKE} install-swig-py

.include <bsd.port.post.mk>
