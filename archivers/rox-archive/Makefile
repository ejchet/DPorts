# $FreeBSD: ports/archivers/rox-archive/Makefile,v 1.25 2013/02/15 16:06:58 svnexp Exp $

PORTNAME=	rox-archive
PORTVERSION=	2.3
CATEGORIES=	archivers
MASTER_SITES=	SF/rox/Archive/${PORTVERSION}
DISTNAME=	archive-${PORTVERSION}

MAINTAINER=	olgeni@FreeBSD.org
COMMENT=	Archive management tool for the ROX desktop

RUN_DEPENDS=	${LOCALBASE}/bin/rox:${PORTSDIR}/x11-fm/rox-filer \
		${LOCALBASE}/lib/ROX-Lib2/python/rox/__init__.py:${PORTSDIR}/devel/py-roxlib

USE_BZIP2=	yes
USE_PYTHON=	yes

do-build:
	@${PYTHON_CMD} -m compileall ${WRKSRC}
	@${PYTHON_CMD} -O -m compileall ${WRKSRC}

pre-install:
	@${REINPLACE_CMD} -e 's,/usr/local,${LOCALBASE},g' \
				${WRKSRC}/Archive/findrox.py
	@${FIND} ${WRKSRC} -name *.bak -delete

do-install:
	@${MKDIR} ${PREFIX}/apps
	@${CP} -r ${WRKSRC}/Archive ${PREFIX}/apps/
	@${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/apps/Archive

.include <bsd.port.mk>
