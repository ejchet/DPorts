# Created by: ijliao
# $FreeBSD: audio/sfront/Makefile 323578 2013-07-24 08:19:07Z ehaupt $

PORTNAME=	sfront
PORTVERSION=	0.99
CATEGORIES=	audio
MASTER_SITES=	CRITICAL

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	Translator that converts MP4-SA files into efficient C programs

LICENSE=	BSD

USES=		bison

MAKE_ARGS=	CC="${CC}" CFLAGS="${CFLAGS}"
ALL_TARGET=	${PORTNAME}

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}/src

PLIST_FILES=	bin/sfront

post-patch:
	@${REINPLACE_CMD} -E '/^(OPT|CC|DBUG)/d' ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin

.include <bsd.port.mk>
