# Created by: Alex Dupre <ale@FreeBSD.org:
# $FreeBSD: graphics/jpgraph2/Makefile 320368 2013-06-09 18:11:48Z miwi $

PORTNAME=	jpgraph
PORTVERSION=	3.0.7
CATEGORIES=	graphics
MASTER_SITES=	http://hem.bredband.net/jpgraph2/

MAINTAINER=	ale@FreeBSD.org
COMMENT=	Draw both "quick and dirty" graphs with a minimum of code

USE_BZIP2=	yes
NO_BUILD=	yes
NO_WRKSUBDIR=	yes
USE_PHP=	gd

NO_CDROM=	The free version cannot be used in a commercial context

PORTDATA=	*
PORTDOCS=	*
PORTEXAMPLES=	*

LATEST_LINK=	jpgraph2

.if defined(NOPORTDATA)
IGNORE=		requires port data, unset NOPORTDATA
.endif

do-install:
	@${MKDIR} ${DATADIR}
	${CP} ${WRKSRC}/src/*.php ${DATADIR}
	${CP} ${WRKSRC}/src/*.dat ${DATADIR}
	${CP} -R ${WRKSRC}/src/lang ${DATADIR}
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	${CP} -R ${WRKSRC}/docportal/* ${DOCSDIR}
.endif
.if !defined(NOPORTEXAMPLES)
	@${MKDIR} ${EXAMPLESDIR}
	${CP} ${WRKSRC}/src/Examples/* ${EXAMPLESDIR}
.endif

.include <bsd.port.mk>
