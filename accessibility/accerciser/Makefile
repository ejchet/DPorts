# Created by: Michael Johnson <ahze@FreeBSD.org>
# $FreeBSD: accessibility/accerciser/Makefile 322550 2013-07-09 09:01:41Z bapt $
#   $MCom: ports/accessibility/accerciser/Makefile,v 1.36 2010/04/27 21:38:19 kwm Exp $

PORTNAME=	accerciser
PORTVERSION=	1.12.1
PORTREVISION=	2
CATEGORIES=	accessibility gnome
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome2

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Interactive Python accessibility explorer for GNOME

USE_BZIP2=	yes
USE_GNOME=	pygnomedesktop atspi intlhack
USE_PYTHON=	yes
USES=		gettext gmake display:configure
INSTALLS_OMF=	yes
INSTALLS_ICONS=	yes
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

GCONF_SCHEMAS=	accerciser.schemas
MAN1=		accerciser.1

.include <bsd.port.mk>
