# New ports collection makefile for:    gnomephotoprinter
# Date created:         27 Oct 2003
# Whom:                 Alexander Nedotsukov <bland@FreeBSD.org>
#
# $FreeBSD: print/gnomephotoprinter/Makefile 316464 2013-04-24 18:10:30Z ak $
#

PORTNAME=	gnomephotoprinter
PORTVERSION=	0.7.0
PORTREVISION=	9
CATEGORIES=	print gnome
MASTER_SITES=	http://www.fogman.de/gpp/
DISTNAME=	gpp-${PORTVERSION}
DIST_SUBDIR=	gnome2

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Gnome Photo Printer is intended for printing photos in an easy way

USE_GMAKE=	yes
USE_GNOME=	gnomehack gnomeprefix libgnomeui libglade2 libgnomeprintui \
		gnomevfs2
USES=		gettext
GNU_CONFIGURE=	yes
INSTALLS_ICONS=	yes

.include <bsd.port.mk>
