# Created by: Will Andrews <andrews@technologist.com>
# $FreeBSD: ports/archivers/makeself/Makefile,v 1.24 2012/12/18 08:04:12 svnexp Exp $

PORTNAME=	makeself
PORTVERSION=	2.1.5
PORTREVISION=	1
CATEGORIES=	archivers
MASTER_SITES=	http://www.megastep.org/makeself/
EXTRACT_SUFX=	.run

MAINTAINER=	jadawin@FreeBSD.org
COMMENT=	Neat script to make self-extracting archives

RUN_DEPENDS=	bash:${PORTSDIR}/shells/bash

EXTRACT_CMD=	${SH}
EXTRACT_BEFORE_ARGS=
EXTRACT_AFTER_ARGS=	--nox11 --target ${WRKSRC}

NO_BUILD=	yes

PLIST_FILES=	bin/makeself bin/makeself-header \
		bin/makeself-header.sh bin/makeself.sh

PORTDOCS=	README

post-patch:
	@${REINPLACE_CMD} -e \
		's|#!/bin/sh|#!${LOCALBASE}/bin/bash|g' ${WRKSRC}/makeself.sh

do-install:
.for i in makeself makeself-header
	${INSTALL_SCRIPT} ${WRKSRC}/${i}.sh ${PREFIX}/bin
	@${LN} -sf ${i}.sh ${PREFIX}/bin/${i}
.endfor
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
