# Created by: Maxim Sobolev <sobomax@FreeBSD.org>
# $FreeBSD: misc/gnome-mime-data/Makefile 316464 2013-04-24 18:10:30Z ak $
#    $MCom: ports/misc/gnome-mime-data/Makefile,v 1.14 2007/05/22 04:59:18 marcus Exp $

PORTNAME=	gnome-mime-data
PORTVERSION=	2.18.0
PORTREVISION=	4
CATEGORIES=	misc gnome
MASTER_SITES=	GNOME
DISTNAME=	gnome-mime-data-${PORTVERSION}
DIST_SUBDIR=	gnome

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	A MIME and Application database for GNOME

USE_BZIP2=	yes
USES=		gettext
USE_GMAKE=	yes
USE_GNOME=	gnomeprefix gnomehack intlhack
GNU_CONFIGURE=	yes
CONFIGURE_ENV=	LIBS="-L${LOCALBASE}/lib -lintl"
CPPFLAGS+=	-I${LOCALBASE}/include

post-patch:
	@${REINPLACE_CMD} -e 's|[(]datadir[)]/pkgconfig|(prefix)/libdata/pkgconfig|g' \
	    	${WRKSRC}/Makefile.in

.include <bsd.port.mk>
