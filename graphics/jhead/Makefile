# Created by: Jamie Hermans <jamie@hermans.ca>
# $FreeBSD: graphics/jhead/Makefile 313722 2013-03-09 15:47:21Z sunpoet $

PORTNAME=	jhead
PORTVERSION=	2.97
CATEGORIES=	graphics
MASTER_SITES=	http://www.sentex.net/~mwandel/jhead/

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	EXIF JPEG header manipulation tool

RUN_DEPENDS=	jpegtran:${PORTSDIR}/graphics/jpeg

OPTIONS_DEFINE=	DOCS

MAKE_JOBS_SAFE=	yes
MAKEFILE=	makefile

MAN1=		jhead.1
PLIST_FILES=	bin/jhead
PORTDOCS=	usage.html

.include <bsd.port.options.mk>

post-patch:
	@${REINPLACE_CMD} -e '/^CFLAGS=/d' ${WRKSRC}/makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/jhead ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/jhead.1 ${PREFIX}/man/man1/
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}/
	${INSTALL_DATA} ${WRKSRC}/usage.html ${DOCSDIR}/
.endif

.include <bsd.port.mk>
