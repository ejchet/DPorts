# Created by: rene
# $FreeBSD: lang/bf2c/Makefile 320728 2013-06-12 23:01:23Z rene $

PORTNAME=	bf2c
PORTVERSION=	1.3.1
CATEGORIES=	lang

MAINTAINER=	rene@FreeBSD.org
COMMENT=	Optimizing BrainF*ck to C compiler

LICENSE=	BSD

USE_GITHUB=	yes
GH_ACCOUNT=	rene0
GH_COMMIT=	4761081
USE_XZ=		yes

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

post-install:
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOCSDIR}
.endif

.include <bsd.port.mk>
