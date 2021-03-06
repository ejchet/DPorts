# Created by: Hye-Shik Chang <perky@FreeBSD.org>
# $FreeBSD: databases/py-bsddb/Makefile 318353 2013-05-17 04:17:22Z rm $

PORTNAME=	bsddb
PORTVERSION=	${PYTHON_PORTVERSION}
PORTREVISION=	3
CATEGORIES=	databases python
MASTER_SITES=	PYTHON
MASTER_SITE_SUBDIR=	${PYTHON_MASTER_SITE_SUBDIR}
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTFILES=	${PYTHON_DISTFILE}

MAINTAINER=	python@FreeBSD.org
COMMENT=	Standard Python bindings to the Berkeley DB library

USE_BDB=	43+
USE_PYTHON=	yes
USE_PYDISTUTILS=yes
USE_XZ=		yes

DIST_SUBDIR=	python
DISTINFO_FILE=	${PORTSDIR}/lang/python${PYTHON_SUFFIX}/distinfo
WRKSRC=		${PYTHON_WRKSRC}/Modules

PYDISTUTILS_INSTALLARGS+=	--install-lib ${PYTHON_LIBDIR}/lib-dynload
PYDISTUTILS_NOEGGINFO=	yes
PYDISTUTILS_PKGNAME=	_bsddb

MAKE_ENV=	BSDDB_VERSION=${BDB_LIB_NAME}
EXTRA_PATCHES+=	${FILESDIR}/extra-patch-py${PYTHON_SUFFIX}-_bsddb.c

PLIST_FILES=	%%PYTHON_LIBDIR%%/lib-dynload/_bsddb.so

.include <bsd.port.pre.mk>

.if ${PYTHON_REL} >= 300
IGNORE=	bsddb package was removed from core standard library since 3.0, use databases/py-bsddb3 instead
.endif

post-extract:
	@${CP} ${FILESDIR}/setup.py ${WRKSRC}

post-patch:
	${REINPLACE_CMD} -e \
		's,^\(#include.*\)\(db\.h.*\)$$,\1${BDB_INCLUDE_DIR}/\2,' \
		${WRKSRC}/bsddb.h

.include <bsd.port.post.mk>
