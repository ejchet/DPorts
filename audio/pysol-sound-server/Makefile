# New ports collection makefile for:	pysol-sound-server
# Date created:				7 January 2000
# Whom:					Maxim Sobolev <sobomax@FreeBSD.org>
#
# $FreeBSD: ports/audio/pysol-sound-server/Makefile,v 1.39 2012/11/17 05:54:42 svnexp Exp $
#

PORTNAME=	pysol-sound-server
PORTVERSION=	3.01
PORTREVISION=	5
CATEGORIES=	audio games
MASTER_SITES=	http://www.pysol.org/download/pysol/ \
		ftp://ftp.is.co.za/linux/distributions/gentoo/distfiles/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Python extension module to play sounds and background music

LIB_DEPENDS=	smpeg.1:${PORTSDIR}/multimedia/smpeg

PLIST_FILES=	%%PYTHON_SITELIBDIR%%/pysolsoundserver.so
WRKSRC=		${WRKDIR}/${DISTNAME}/src

USE_SDL=	mixer sdl
USE_BZIP2=	yes
USE_PYTHON=	yes
HAS_CONFIGURE=	yes
INSTALLS_EGGINFO=	yes
PYDISTUTILS_PKGNAME=	pysolsoundserver

.include <bsd.port.mk>
