# Created by: Marco Molteni <molter@gufi.org>
# $FreeBSD: www/bookmarkbridge/Makefile 324191 2013-08-03 13:44:00Z mat $

PORTNAME=	bookmarkbridge
PORTVERSION=	0.76
PORTREVISION=	4
CATEGORIES=	www
MASTER_SITES=	SF

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Synchronize bookmarks between multiple browsers

LIB_DEPENDS=	xml2:${PORTSDIR}/textproc/libxml2

USE_PERL5=	build
USE_XORG=	x11 ice xext
USE_QT4=	corelib gui moc_build rcc_build uic_build qt3support
USE_GNOME=	libxml2
USE_GMAKE=	yes
USES=		pkgconfig perl5
USE_AUTOTOOLS=	aclocal automake autoconf
ACLOCAL_ARGS=	-I ${LOCALBASE}/share/aclocal
AUTOMAKE_ARGS=	--add-missing

.include <bsd.port.mk>
