# Created by: Emanuel Haupt <ehaupt@critical.ch>
# $FreeBSD: audio/festalon/Makefile 323578 2013-07-24 08:19:07Z ehaupt $

PORTNAME=	festalon
PORTVERSION=	0.5.5
PORTREVISION=	7
CATEGORIES=	audio
MASTER_SITES=	http://projects.raphnet.net/festalon/ \
		CRITICAL
PKGNAMEPREFIX?=

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT?=	Command line player for .nsf and .hes audio files

LICENSE=	GPLv2

LIB_DEPENDS+=	samplerate:${PORTSDIR}/audio/libsamplerate

USES=		pkgconfig
USE_AUTOTOOLS=	libtool
USE_BZIP2=	yes

WRKSRC=		${WRKDIR}/${PORTNAME}

ONLY_FOR_ARCHS=	i386 amd64

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

.if ${PKGNAMEPREFIX} == ""

USE_SDL=	yes

PLIST_FILES=	bin/festalon
PORTDOCS=	README

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/${PORTNAME} ${PREFIX}/bin/${PORTNAME}

.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.endif

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
