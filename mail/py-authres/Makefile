# Created by: Yasuhiro KIMURA <yasu@utahime.org>
# $FreeBSD: mail/py-authres/Makefile 319340 2013-05-29 05:23:13Z miwi $

PORTNAME=	authres
PORTVERSION=	0.600
CATEGORIES=	mail python
MASTER_SITES=	http://launchpad.net/authentication-results-python/trunk/0.6/+download/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	yasu@utahime.org
COMMENT=	Python module for RFC 5451 Authentication-Results headers

LICENSE=	AL2

USE_PYTHON=	2.6+
USE_PYDISTUTILS=	yes

PLIST_SUB+=	PORTNAME=${PORTNAME}

FETCH_ARGS=	-pRr

PORTDOCS=	CHANGES README

.include <bsd.port.options.mk>

post-install:
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}/
	cd ${WRKSRC}/ && ${INSTALL_DATA} ${PORTDOCS} ${DOCSDIR}/
.endif

.include <bsd.port.mk>
