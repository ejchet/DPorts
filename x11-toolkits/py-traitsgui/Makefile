# New ports collection makefile for:	py-traitsgui
# Date created:		2009-08-21
# Whom:			Jacob Frelinger <jacob.frelinger@duke.edu>
#
# $FreeBSD: ports/x11-toolkits/py-traitsgui/Makefile,v 1.6 2012/11/17 06:03:38 svnexp Exp $
#

PORTNAME=	traitsgui
PORTVERSION=	3.1.0
PORTREVISION=	3
CATEGORIES=	x11-toolkits python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	TraitsGUI-${PORTVERSION}

MAINTAINER=	jacob.frelinger@duke.edu
COMMENT=	Gui toolkit derived from the Enthought python traits library

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}traitsbackendwx>=3.1.0:${PORTSDIR}/x11-toolkits/py-traitsbackendwx
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_PYTHON=		yes
USE_PYDISTUTILS=	easy_install
PYDISTUTILS_PKGNAME=	TraitsGUI

post-install:
.if !defined(NOPORTEXAMPLES)
	${MKDIR} ${EXAMPLESDIR}
	cd ${WRKSRC}/examples \
		&& ${FIND} . -type d -exec ${MKDIR} ${EXAMPLESDIR}/\{} \; \
		&& ${FIND} . -type f -exec ${INSTALL_DATA} \{} ${EXAMPLESDIR}/\{} \;
.endif

.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	cd ${WRKSRC}/docs \
		&& ${FIND} . -type d -exec ${MKDIR} ${DOCSDIR}/\{} \; \
		&& ${FIND} . -type f -exec ${INSTALL_DATA} \{} ${DOCSDIR}/\{} \;
.endif

.include <bsd.port.pre.mk>
.include <bsd.port.post.mk>
