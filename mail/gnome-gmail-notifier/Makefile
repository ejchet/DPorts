# New ports collection makefile for:	gnome-gmail-notifier
# Date created:				Nov 16 2007
# Whom:					Florent Thoumie <flz@FreeBSD.org>
#
# $FreeBSD: mail/gnome-gmail-notifier/Makefile 316464 2013-04-24 18:10:30Z ak $
#

PORTNAME=	gnome-gmail-notifier
PORTVERSION=	0.10.1
PORTREVISION=	3
CATEGORIES=	mail deskutils
MASTER_SITES=	GOOGLE_CODE

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A Gmail Inbox Monitor for the GNOME2 desktop

LIB_DEPENDS=	notify.4:${PORTSDIR}/devel/libnotify \
		soup-2.4:${PORTSDIR}/devel/libsoup \
		gnome-keyring.0:${PORTSDIR}/security/gnome-keyring

GNU_CONFIGURE=	yes
USE_BZIP2=	yes
USE_GMAKE=	yes
USES=		gettext
USE_GNOME=	glib20 gtk20 gconf2 libxml2 librsvg2
USE_GSTREAMER=	good

post-patch:
	@${REINPLACE_CMD} -e 's|@DATADIRNAME@|share|' ${WRKSRC}/po/Makefile.in.in
	@${REINPLACE_CMD} -e 's|<glib/gthread.h>|<glib.h>|g' ${WRKSRC}/src/main.h


.include <bsd.port.mk>
