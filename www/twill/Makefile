# New ports collection makefile for:	twill
# Date created:				15 June 2008
# Whom:					Junji NAKANISHI <jun-g@daemonfreaks.com>
#
# $FreeBSD: ports/www/twill/Makefile,v 1.2 2012/11/17 06:03:09 svnexp Exp $

PORTNAME=	twill
PORTVERSION=	0.9
CATEGORIES=	www python
MASTER_SITES=	http://darcs.idyll.org/~t/projects/

MAINTAINER=	jun-g@daemonfreaks.com
COMMENT=	A simple scripting language for Web browsing

USE_PYTHON=	yes
USE_PYDISTUTILS=	easy_install

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${CP} -R ${WRKSRC}/doc/ ${DOCSDIR}
.endif

.if !defined(NOPORTEXAMPLES)
	${MKDIR} ${EXAMPLESDIR}
	${CP} -R ${WRKSRC}/examples/ ${EXAMPLESDIR}
.endif

.include <bsd.port.mk>
