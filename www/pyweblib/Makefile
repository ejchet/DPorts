# Created by: Oddbjorn Steffensen <oddbjorn@tricknology.org>
# $FreeBSD: www/pyweblib/Makefile 319011 2013-05-24 19:34:24Z bsam $

PORTNAME=	pyweblib
PORTVERSION=	1.3.10
PORTREVISION=	1
CATEGORIES=	www
MASTER_SITES=	http://www.stroeder.com/pylib/PyWebLib/download/

MAINTAINER=	bsam@FreeBSD.org
COMMENT=	Yet another web programming framework for Python

LICENSE=	GPLv2

USE_PYTHON=	yes
USE_PYDISTUTILS=	yes

PORTDOCS=	pyweblib.forms.html pyweblib.helper.html \
		pyweblib.html pyweblib.httphelper.html \
		pyweblib.session.html pyweblib.sslenv.html

EXAMPLES=	*.py

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

post-install:
	@${MKDIR} ${EXAMPLESDIR} ${EXAMPLESDIR}/cgi-bin
	${INSTALL_DATA} ${WRKSRC}/cgi-bin/${EXAMPLES} ${EXAMPLESDIR}/cgi-bin
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/htdocs/pydoc/,} ${DOCSDIR}
.endif

.include <bsd.port.mk>
