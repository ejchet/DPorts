# Created by: Rui Lopes <rui@ruilopes.com>
# $FreeBSD: devel/regexxer/Makefile 316407 2013-04-24 07:35:40Z ak $

PORTNAME=		regexxer
PORTVERSION=		0.9
PORTREVISION=	10
CATEGORIES=		devel textproc gnome
MASTER_SITES=		SF

MAINTAINER=		ports@FreeBSD.org
COMMENT=		An interactive tool for performing search and replace operations

LIB_DEPENDS=		gconfmm-2.6:${PORTSDIR}/devel/gconfmm26 \
			glademm-2.4:${PORTSDIR}/devel/libglademm24 \
			pcre.3:${PORTSDIR}/devel/pcre

GNU_CONFIGURE=		yes
USE_GMAKE=		yes
USES=        pathfix gettext
USE_GNOME=		gnomeprefix intltool intlhack
CPPFLAGS+=		-I${LOCALBASE}/include
LDFLAGS+=		-L${LOCALBASE}/lib

GCONF_SCHEMAS=		regexxer.schemas
INSTALLS_ICONS=		regexxer.png

# This target is only meant to be used by the port maintainer.
x-generate-plist:
	(${PORTSDIR}/Tools/scripts/plist -d -m ${MTREE_FILE} ${PREFIX}|${GREP} regexxer) > temp-pkg-plist

post-patch:
	@${REINPLACE_CMD} -e 's|glib/.*\.h>|glib.h>|g' \
		${WRKSRC}/src/globalstrings.h ${WRKSRC}/src/translation.h

.include <bsd.port.mk>
