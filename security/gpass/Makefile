# Created by: ports@c0decafe.net <ports@c0decafe.net>
# $FreeBSD: security/gpass/Makefile 315566 2013-03-29 19:33:41Z cs $

PORTNAME=	gpass
PORTVERSION=	0.5.1
PORTREVISION=	10
CATEGORIES=	security gnome
MASTER_SITES=	http://projects.netlab.jp/gpass/release/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Password manager for GNOME2

LIB_DEPENDS=	mcrypt:${PORTSDIR}/security/mcrypt \
		mhash:${PORTSDIR}/security/mhash

GNU_CONFIGURE=	yes
LDFLAGS+=	-L${LOCALBASE}/lib -export-dynamic
USE_GMAKE=	yes

MAN1=		gpass.1 gpass.ja.1 gpass-convert.1 gpass-convert.ja.1

USES=        pathfix
USE_GNOME=	gnomeprefix gtk20 libgnomeui intltool libglade2
GCONF_SCHEMAS=	gpass.schemas

post-patch:
	@${REINPLACE_CMD} -e 's|{packageprefix}/share|{datadir}|g' \
		${WRKSRC}/configure
	@${REINPLACE_CMD} -e 's|glib/.*\.h>|glib.h>|g' \
		${WRKSRC}/include/gpass/error.h \
		${WRKSRC}/src/helper.h

post-install:
	@-update-desktop-database

.include <bsd.port.mk>
