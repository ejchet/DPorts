# Created by: Marcin Jessa <yazzy@yazzy.org>
# $FreeBSD: net/py-impacket/Makefile 317734 2013-05-09 11:07:26Z antoine $

PORTNAME=	impacket
PORTVERSION=	0.9.10
CATEGORIES=	net python
MASTER_SITES=	GOOGLE_CODE
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Collection of Python classes providing access to network packets

LICENSE=	AL11
LICENSE_NAME=	Apache License version 1.1
LICENSE_FILE=	${WRKSRC}/LICENSE
LICENSE_PERMS=	dist-mirror dist-sell pkg-mirror pkg-sell auto-accept

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pcapy>=0:${PORTSDIR}/net/py-pcapy \
		${PYTHON_PKGNAMEPREFIX}pycrypto>=0:${PORTSDIR}/security/py-pycrypto

USE_DOS2UNIX=	yes
USE_PYTHON=	yes
USE_PYDISTUTILS=yes
PORTDOCS=	README

.include <bsd.port.options.mk>

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/,} ${DOCSDIR}
.endif

.include <bsd.port.mk>
