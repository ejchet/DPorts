# Created by: Andrey Zakhvatov
# $FreeBSD: misc/bb/Makefile 315192 2013-03-25 04:30:31Z eadler $

PORTNAME=	bb
PORTVERSION=	1.3.r1
PORTREVISION=	1
CATEGORIES=	misc
MASTER_SITES=	SF/aa-project/${PORTNAME}/1.3rc1
DISTNAME=	${PORTNAME}-${PORTVERSION:S/.r/rc/}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	High quality audio-visual demonstration for text terminal

LIB_DEPENDS=	aa.1:${PORTSDIR}/graphics/aalib \
		mikmod.2:${PORTSDIR}/audio/libmikmod

GNU_CONFIGURE=	yes
WRKSRC=		${WRKDIR}/bb-1.3.0
MAN1=		bb.1
PORTDOCS=	README
PLIST_FILES=	bin/bb share/bb/bb.s3m share/bb/bb2.s3m share/bb/bb3.s3m
PLIST_DIRS=	share/bb

.include <bsd.port.options.mk>

pre-patch:
	@${FIND} ${WRKSRC} -type f | ${XARGS} ${REINPLACE_CMD} -E -e "s@#include +<malloc.h>@#include <stdlib.h>@g" \
		-e 's, REGISTERS \(3\),,g'

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${WRKSRC}/${PORTDOCS} ${DOCSDIR}
.endif

.include <bsd.port.mk>
