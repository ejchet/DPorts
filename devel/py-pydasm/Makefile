# Created by: Antoine Brodin <antoine@FreeBSD.org>
# $FreeBSD: devel/py-pydasm/Makefile 313747 2013-03-09 19:10:07Z rm $

PORTNAME=	pydasm
PORTVERSION=	1.5
CATEGORIES=	devel python
MASTER_SITES=	GOOGLE_CODE
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	libdasm-${PORTVERSION}

MAINTAINER=	antoine@FreeBSD.org
COMMENT=	Python interface to libdasm

WRKSRC=		${WRKDIR}/${DISTNAME}/${PORTNAME}
USE_PYTHON=	yes
USE_PYDISTUTILS=yes
PROJECTHOST=	libdasm

.include <bsd.port.options.mk>

post-install:
.if ${PORT_OPTIONS:MEXAMPLES}
	@${MKDIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/das.py ${EXAMPLESDIR}
.endif
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README.txt ${DOCSDIR}
.endif

.include <bsd.port.mk>
