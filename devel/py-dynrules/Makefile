# $FreeBSD: devel/py-dynrules/Makefile 319339 2013-05-29 04:46:28Z jgh $

PORTNAME=	dynrules
PORTVERSION=	0.1.0
CATEGORIES=	devel python
MASTER_SITES=	http://cdn.bitbucket.org/marcusva/py-dynrules/downloads/

MAINTAINER=	mva@FreeBSD.org
COMMENT=	Dynamic Scripting for adaptive AI systems

USE_PYTHON=	yes
USE_PYDISTUTILS=yes

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${INSTALL} -d ${DOCSDIR}/html
	@${TAR} -C ${WRKSRC}/doc/html -cf - . | \
		${TAR} -C ${DOCSDIR}/html -xf -
.endif

.include <bsd.port.mk>
