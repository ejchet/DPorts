# New ports collection makefile for:	gruler
# Date created:				24 October 2004
# Whom:					Piotr Smyrak <smyru@heron.pl>
#
# $FreeBSD: deskutils/gruler/Makefile 318333 2013-05-16 20:07:39Z rakuco $
#

PORTNAME=	gruler
PORTVERSION=	0.6
PORTREVISION=	10
CATEGORIES=	deskutils
MASTER_SITES=	http://linuxadvocate.org/projects/gruler/downloads/

MAINTAINER=	ps.ports@smyrak.com
COMMENT=	A simple customizable GTK screen ruler

USE_GNOME=	gnomeprefix gnomehack libgnomeui libglade2
USE_AUTOTOOLS=	libtool
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib -export-dynamic

post-patch:
	@${REINPLACE_CMD} -e 's|^CFLAGS=""||' ${WRKSRC}/configure

.include <bsd.port.mk>
