# Created by: James FitzGibbon <jfitz@FreeBSD.org>
# $FreeBSD: games/qcc/Makefile 314461 2013-03-17 16:44:33Z danfe $

PORTNAME=	qcc
PORTVERSION=	1.01
CATEGORIES=	games devel
MASTER_SITES=	${MASTER_SITE_IDSOFTWARE}
MASTER_SITE_SUBDIR=	source
DISTNAME=	${PORTNAME}

MAINTAINER=	danfe@FreeBSD.org
COMMENT=	QuakeC compiler, for building custom games of Quake

LICENSE=	GPLv2

WRKSRC=		${WRKDIR}/send
MAKEFILE=	makefile

PLIST_FILES=	bin/qcc
PORTDOCS=	readme.txt

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

post-extract:
	@${REINPLACE_CMD} -E '/^CFLAGS/d; s/cc( -c)? \$$\(C/$$(CC)\1 \$$\(C/' \
		${WRKSRC}/${MAKEFILE}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/readme.txt ${DOCSDIR}
.endif

.include "${.CURDIR}/../quake-source/Makefile.include"
.include <bsd.port.mk>
