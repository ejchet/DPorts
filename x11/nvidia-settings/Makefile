# New ports collection makefile for:	nvidia-settings
# Date created:				15 Aug 2004
# Whom:					Alexander Nedotsukov <bland@FreeBSD.org>
#
# $FreeBSD: ports/x11/nvidia-settings/Makefile,v 1.62 2012/11/17 06:03:18 svnexp Exp $
#

PORTNAME=	nvidia-settings
PORTVERSION=	310.14
CATEGORIES=	x11
MASTER_SITES=	ftp://download.nvidia.com/XFree86/nvidia-settings/ \
		ftp://download1.nvidia.com/XFree86/nvidia-settings/

MAINTAINER=	bland@FreeBSD.org
COMMENT=	Display Control Panel for X NVidia driver

LICENSE=	GPLv2

USE_BZIP2=	yes
USE_GNOME=	gtk20
USE_GMAKE=	yes
USE_GL=		gl
USE_XORG=	xv xext

PLIST_FILES=	bin/nvidia-settings
MANCOMPRESSED=	yes
MAN1=		nvidia-settings.1

MAKE_ENV=	NV_VERBOSE= \
		STRIP_CMD=${TRUE} \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_MAN="${INSTALL_MAN}" \
		prefix=${PREFIX} \
		X_CFLAGS=-I${LOCALBASE}/include \
		X_LDFLAGS=-L${LOCALBASE}/lib

post-extract:	.SILENT
	${RM} -f ${WRKSRC}/src/libXNVCtrl/libXNVCtrl.a

post-patch:	.SILENT
	${REINPLACE_CMD} -e '/^prefix/s/=/?&/' \
		 -e '/^MANDIR/s|share/||' ${WRKSRC}/utils.mk

.include <bsd.port.mk>
