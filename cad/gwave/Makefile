# New ports collection makefile for:	gwave
# Date created:			16 June 2002
# Whom:				Duncan Barclay <dmlb@dmlb.org>
#
# $FreeBSD: ports/cad/gwave/Makefile,v 1.35 2012/11/17 05:54:54 svnexp Exp $
#

PORTNAME=	gwave
PORTVERSION=	20080127
PORTREVISION=	6
CATEGORIES=	cad
MASTER_SITES=	SF

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Waveform viewer for analogue electronic simulation tools

LICENSE=	GPLv2

LIB_DEPENDS=	guile.21:${PORTSDIR}/lang/guile \
		guilegtk-1.2.0:${PORTSDIR}/x11-toolkits/guile-gtk

OPTIONS_DEFINE=	PLOTUTILS GNUPLOT DOCS EXAMPLES
OPTIONS_DEFAULT=GNUPLOT
PLOTUTILS_DESC=	Enable plotting using plotutils

USE_GNOME=	gtk12
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
MAKE_JOBS_SAFE=	yes

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

MAN1=		sp2sp.1

DOCFILES=	Guile.notes \
		gwave-concepts.txt \
		gwave-hooks.txt \
		gwave-procedures.txt \
		gwave-variables.txt \
		hspice-output.txt \
		hspice.txt \
		spice3.txt

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MPLOTUTILS}
RUN_DEPENDS+=	graph:${PORTSDIR}/graphics/plotutils
.endif

.if ${PORT_OPTIONS:MGNUPLOT}
RUN_DEPENDS+=	gnuplot:${PORTSDIR}/math/gnuplot
.endif

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
.for FILE in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/doc/${FILE} ${DOCSDIR}
.endfor
.endif
.if ${PORT_OPTIONS:MEXAMPLES}
	@${MKDIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EXAMPLESDIR}
.endif

.include <bsd.port.mk>
