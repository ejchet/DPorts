# New ports collection makefile for:	gai-leds
# Date created:				2007-06-12
# Whom:					Douglas Thrift <douglas@douglasthrift.net>
#
# $FreeBSD: ports/sysutils/gai-leds/Makefile,v 1.13 2012/11/17 06:01:32 svnexp Exp $
#

PORTNAME=	gai-leds
PORTVERSION=	0.6
PORTREVISION=	7
CATEGORIES=	sysutils
MASTER_SITES=	SF/gai/GAI%20-%20Applets/${PORTNAME}

MAINTAINER=	douglas@douglasthrift.net
COMMENT=	A GAI applet that displays the keyboard status leds

LIB_DEPENDS=	gai:${PORTSDIR}/x11-toolkits/gai

LICENSE=	GPLv2

GNU_CONFIGURE=	yes
USE_BZIP2=	yes
USE_GNOME=	gnomehack gnomeprefix

post-patch:
	@${REINPLACE_CMD} -e \
		's|\(GNOMEDIR=\).*|\1"${PREFIX}"|; \
		 s|:GNOME_|:GAI-|g; \
		 s|\(@APPLET_NAME@\)\(Applet\)|\1-\2|g; \
		 s|\(Applet\)_\(Factory\)|\1-\2|' \
		${WRKSRC}/configure
	@${REINPLACE_CMD} -e \
		's|lib\(/bonobo\)|libdata\1|; \
		 s|-O3||' \
		${WRKSRC}/Makefile.in

.include <bsd.port.mk>
