# Created by: Emanuel Haupt <ehaupt@critical.ch>
# $FreeBSD: audio/gbsplay/Makefile 323578 2013-07-24 08:19:07Z ehaupt $

PORTNAME=	gbsplay
PORTVERSION=	0.0.8
PORTREVISION=	5
CATEGORIES=	audio
MASTER_SITES=	BERLIOS CRITICAL
PKGNAMEPREFIX?=

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT?=	Emulates the sound hardware of the Nintendo Game Boy(TM)

HAS_CONFIGURE=	yes
USES=		gettext gmake
USE_CSTD=	gnu89

CONFIGURE_ARGS+=	--prefix=${PREFIX}

.if ${PKGNAMEPREFIX} == ""

CONFIGURE_ARGS+=	--without-xmmsplugin

MAN1=		gbsplay.1 gbsinfo.1
MAN5=		gbsplayrc.5
PORTDOCS=	COPYRIGHT HISTORY README

OPTIONS_DEFINE=	NAS DOCS

.endif

.include <bsd.port.options.mk>

.if ${PKGNAMEPREFIX} == ""

.if ${PORT_OPTIONS:MNAS}
LIB_DEPENDS+=	audio:${PORTSDIR}/audio/nas
.else
CONFIGURE_ARGS+=	--disable-nas
.endif

.endif

post-patch: gbsplay-post-patch
	@${REINPLACE_CMD} -e 's|^\(default.*\)test|\1|' ${WRKSRC}/${MAKEFILE}
	@${REINPLACE_CMD} -e \
		'/^need_include\ /d; \
		 468s|char argc|int argc|; \
		 s|/usr/local/include|${LOCALBASE}/include|; \
		 s|/usr/local/lib|${LOCALBASE}/lib|; \
		 s|/usr/X11R6/include||; \
		 s|/usr/X11R6/lib||; \
		 s|/usr/X11/lib|${LOCALBASE}/lib|; \
		 s|/usr/lib/X11|${LOCALBASE}/lib/X11|; \
		 s|-Os||; s|-pipe||; s|-fomit-frame-pointer||; \
		 s|-march=$$ARCH||' \
		${WRKSRC}/configure

.if ${PKGNAMEPREFIX} == ""

gbsplay-post-patch:
	@${REINPLACE_CMD} -e 's|/\(etc/gbsplayrc\)|${PREFIX}/\1|' \
		${WRKSRC}/gbsplay.c \
		${WRKSRC}/gbsplay.in.1 \
		${WRKSRC}/gbsplayrc.in.5

do-install:
.for f in ${PORTNAME} gbsinfo
	${INSTALL_PROGRAM} ${WRKSRC}/${f} ${PREFIX}/bin
.endfor
.for f in ${MAN1} ${MAN5}
	${INSTALL_MAN} ${WRKSRC}/${f} ${MAN${f:E}PREFIX}/man/man${f:E}
.endfor
	${MKDIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/nightmode.gbs ${EXAMPLESDIR}

	${INSTALL_DATA} ${WRKSRC}/examples/gbsplayrc_sample ${PREFIX}/etc/gbsplayrc.default
.if !exists(${PREFIX}/etc/gbsplayrc)
	${INSTALL_DATA} ${WRKSRC}/examples/gbsplayrc_sample ${PREFIX}/etc/gbsplayrc
.endif

.for l in de en
	${INSTALL_DATA} ${WRKSRC}/po/${l}.mo ${PREFIX}/share/locale/${l}/LC_MESSAGES/gbsplay.mo
.endfor

.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
.for f in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} ${DOCSDIR}
.endfor
.endif

.endif

.include <bsd.port.mk>
