# Created by: Antoine Brodin <antoine@FreeBSD.org>
# $FreeBSD: security/py-python-registry/Makefile 324486 2013-08-10 11:51:31Z antoine $

PORTNAME=	python-registry
PORTVERSION=	0.2.6
CATEGORIES=	security devel python
MASTER_SITES=	GH \
		LOCAL/antoine
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	antoine@FreeBSD.org
COMMENT=	Read access to Windows Registry files

LICENSE=	AL2

USE_GITHUB=	yes
GH_ACCOUNT=	williballenthin
GH_TAGNAME=	v${PORTVERSION}
GH_COMMIT=	f4930a1

USE_PYTHON=	-2.7
USE_PYDISTUTILS=	yes

OPTIONS_DEFINE=	DOCS EXAMPLES

PORTDOCS=	*
PORTEXAMPLES=	*

.include <bsd.port.options.mk>

post-patch:
	${REINPLACE_CMD} 's|0.2.4.1|${PORTVERSION}|' ${WRKSRC}/Registry/__init__.py
	${REINPLACE_CMD} 's|/usr/bin/python|${PYTHON_CMD}|' ${WRKSRC}/samples/*.py

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README.txt ${WRKSRC}/documentation/* ${DOCSDIR}
.endif
.if ${PORT_OPTIONS:MEXAMPLES}
	@${MKDIR} ${EXAMPLESDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/samples/*.py ${EXAMPLESDIR}
.endif

.include <bsd.port.mk>
