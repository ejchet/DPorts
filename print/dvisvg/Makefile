# ex:ts=8
# Ports collection makefile for:	dvisvg
# Date created:			Apr 15, 2005
# Whom:				ijliao
#
# $FreeBSD: print/dvisvg/Makefile 317899 2013-05-11 17:58:55Z hrs $
#

PORTNAME=	dvisvg
DISTVERSION=	0.7.1d
PORTREVISION=	5
CATEGORIES=	print
MASTER_SITES=	http://dvisvg.sourceforge.net/files/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Converter from DVI to SVG

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION:R}
USE_GHOSTSCRIPT_RUN=	yes
USE_TEX=	base texmf
ALL_TARGET=	# empty
# workaround for svgfonts.c not including kpathsea/c-auto.h
CFLAGS+=	-DHAVE_PROTOTYPES
MAKE_ARGS=	CC="${CC} ${CFLAGS}" TARGETDIR=${PREFIX} \
		LINC=${LOCALBASE}/include \
		LLIB=${LOCALBASE}/lib \
		BINDIR=${PREFIX}/bin \
		CNFDIR=${PREFIX}/${TEXMFLOCAL}/dvisvg \

TEXMFLOCAL=	share/texmf-local
TEXMFLOCAL_LSR=	${LOCALBASE}/${TEXMFLOCAL}/ls-R
MKTEXLSR=	${LOCALBASE}/bin/mktexlsr

PLIST_FILES=	bin/dvisvg
MAN1=	dvisvg.1

post-patch:
	@${REINPLACE_CMD} -e "s,/usr/share/texmf,${LOCALBASE}/${TEXMFLOCAL}," ${WRKSRC}/version.h

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/dvisvg ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/dvisvg.man ${MAN1PREFIX}/man/man1/dvisvg.1
	@${MKDIR} ${PREFIX}/${TEXMFLOCAL}/${PORTNAME}
.for file in dvisvg.map font2svg.enc font2svg.ps
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/${TEXMFLOCAL}/${PORTNAME}
	@${ECHO_CMD} "${TEXMFLOCAL}/${PORTNAME}/${file}" >> ${TMPPLIST}
.endfor
	@${ECHO_CMD} "@dirrm ${TEXMFLOCAL}/${PORTNAME}" >> ${TMPPLIST}
	@${ECHO_CMD} '@exec ${MKTEXLSR}' >> ${TMPPLIST}
	@${ECHO_CMD} '@unexec ${MKTEXLSR}' >> ${TMPPLIST}

post-install:
	@${MKTEXLSR}

.include <bsd.port.mk>
