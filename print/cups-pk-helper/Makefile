# New ports collection makefile for:	cups-pk-helper
# Date created:		2009-12-29
# Whom:			Michael Johnson <ahze@FreeBSD.org>
#
# $FreeBSD: print/cups-pk-helper/Makefile 316464 2013-04-24 18:10:30Z ak $
#   $MCom: ports/print/cups-pk-helper/Makefile,v 1.1 2009/12/29 16:01:07 ahze Exp $

PORTNAME=	cups-pk-helper
PORTVERSION=	0.0.4
PORTREVISION=	3
CATEGORIES=	print
MASTER_SITES=	http://www.freedesktop.org/software/${PORTNAME}/releases/

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	A helper that makes system-config-printer use PolicyKit

LIB_DEPENDS=	dbus-glib-1.2:${PORTSDIR}/devel/dbus-glib \
		cups.2:${PORTSDIR}/print/cups-client \
		polkit.2:${PORTSDIR}/sysutils/policykit

USE_BZIP2=	yes
USE_GMAKE=	yes
USE_GNOME=	intlhack gtk20
USES=		gettext
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/libs

.include <bsd.port.mk>
