# New ports collection makefile for:	DockApp Library
# Date created:		17 July 1999
# Whom:			Jim Mock <jim@FreeBSD.org>
#
# $FreeBSD: x11-wm/libdockapp/Makefile 322787 2013-07-11 17:13:36Z xride $
#

PORTNAME=	libdockapp
PORTVERSION=	0.6.2
CATEGORIES=	x11-wm
MASTER_SITES=	${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	xride

MAINTAINER=	xride@FreeBSD.org
COMMENT=	Standard library for Window Maker dock apps

USE_BZIP2=	yes
USE_XORG=	xext xpm
USE_AUTOTOOLS=	libtool
CONFIGURE_ARGS=	--without-font --without-examples
USE_LDCONFIG=	yes

post-install:
	@${MKDIR} ${PREFIX}/lib/X11/fonts/dockapp
.for file in fonts.alias fonts.dir *.pcf.gz
	${INSTALL_DATA} ${WRKSRC}/fonts/${file} ${PREFIX}/lib/X11/fonts/dockapp
.endfor
.if !defined(NOPORTEXAMPLES)
	@${MKDIR} ${EXAMPLESDIR}
.for file in README
	${INSTALL_DATA} ${WRKSRC}/examples/${file} ${EXAMPLESDIR}
.endfor
	@${MKDIR} ${EXAMPLESDIR}/basic
.for file in Imakefile README *.c *.xpm
	${INSTALL_DATA} ${WRKSRC}/examples/basic/${file} ${EXAMPLESDIR}/basic
.endfor
	@${MKDIR} ${EXAMPLESDIR}/rectangles
.for file in Imakefile *.c
	${INSTALL_DATA} ${WRKSRC}/examples/rectangles/${file} ${EXAMPLESDIR}/rectangles
.endfor
.endif

.include <bsd.port.mk>
