# $FreeBSD: devel/hs-gconf/Makefile 319894 2013-06-04 18:53:40Z pgj $

PORTNAME=	gconf
PORTVERSION=	0.12.1.1
PORTREVISION=	2
CATEGORIES=	devel haskell

MAINTAINER=	haskell@FreeBSD.org
COMMENT=	Binding to the GNOME configuration database system

LICENSE=	LGPL21

USE_CABAL=	glib>=0.12 gtk2hs-buildtools
USE_GNOME=	gconf2

.include "${.CURDIR}/../../lang/ghc/bsd.cabal.mk"
.include <bsd.port.mk>
