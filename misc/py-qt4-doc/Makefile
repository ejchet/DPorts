# Created by: Danny Pansters <danny@ricin.com>
# $FreeBSD: misc/py-qt4-doc/Makefile 311475 2013-02-03 18:16:07Z makc $

PORTNAME=	doc
PORTVERSION=	${PYQT4_VERSION}
PORTEPOCH=	1
CATEGORIES=	misc devel python
MASTER_SITES=	${MASTER_SITES_PYQT4}
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}qt4-
DISTNAME=	${PYQT4_DISTNAME}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Python bindings for the Qt4 toolkit, documentation

DISTINFO_FILE=	${PYQT4_DISTINFO_FILE}
NO_BUILD=	yes
USE_PYTHON=	2.5+

DOCSDIR=	${PREFIX}/share/doc/py-qt4
PORTDOCS=	*

do-install:
	cd ${WRKSRC} &&\
		${MKDIR} ${DOCSDIR} &&\
		${INSTALL_DATA} GPL_EXCEPTION.TXT\
				GPL_EXCEPTION_ADDENDUM.TXT NEWS\
				LICENSE.GPL2 LICENSE.GPL3\
				OPENSOURCE-NOTICE.TXT README THANKS\
			${DOCSDIR}
	cd ${WRKSRC}/doc && ${COPYTREE_SHARE} html ${DOCSDIR}

.include "../../devel/py-qt4/bsd.pyqt.mk"
.include <bsd.port.mk>
