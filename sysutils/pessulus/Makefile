# New ports collection makefile for:	pessulus
# Date created:				14 March 2006
# Whom:					FreeBSD GNOME Team
#
# $FreeBSD: sysutils/pessulus/Makefile 316464 2013-04-24 18:10:30Z ak $
#   $MCom: ports/sysutils/pessulus/Makefile,v 1.30 2010/11/17 11:53:24 kwm Exp $
#

PORTNAME=	pessulus
PORTVERSION=	2.30.4
PORTREVISION=	2
CATEGORIES=	sysutils gnome
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome2

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	A lockdown editor for GNOME

USE_GMAKE=	yes
USE_BZIP2=	yes
USE_GNOME=	gnomehack gnomeprefix intlhack pygnome2 pygnomedesktop
WANT_GNOME=	yes
USE_PYTHON=	yes
USES=		gettext
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

DOCS=		AUTHORS COPYING ChangeLog HACKING \
		MAINTAINERS NEWS README TODO

.ifndef (NOPORTDOCS)
post-install:
	@${MKDIR} ${DOCSDIR}
.for i in ${DOCS}
	@${INSTALL_DATA} ${WRKSRC}/${i} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
