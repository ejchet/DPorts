# ex:ts=8
# Ports collection makefile for:	py-msnp
# Date created:			Dec 26, 2003
# Whom:				ijliao
#
# $FreeBSD: net-im/py-msnp/Makefile 323776 2013-07-27 10:19:30Z marino $
#

PORTNAME=	msnp
PORTVERSION=	0.4.1
PORTREVISION=	1
CATEGORIES=	net-im python
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/v${PORTVERSION}
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	${PORTNAME}.py-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	MSN messaging in Python

DEPRECATED=	Primary MSN Messenger service terminated 30 APR 2013
EXPIRATION_DATE=2013-10-31

USE_PYTHON=	2.5+
USE_PYDISTUTILS=	yes
PYDISTUTILS_PKGNAME=	msnp.py

.if !defined(NOPORTDOCS)
post-install:
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/tutorial.html ${DOCSDIR}
.endif

.include <bsd.port.mk>
