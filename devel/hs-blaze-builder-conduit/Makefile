# $FreeBSD: devel/hs-blaze-builder-conduit/Makefile 319894 2013-06-04 18:53:40Z pgj $

PORTNAME=	blaze-builder-conduit
PORTVERSION=	1.0.0
PORTREVISION=	1
CATEGORIES=	devel haskell

MAINTAINER=	haskell@FreeBSD.org
COMMENT=	Convert streams of builders to streams of bytestrings

LICENSE=	BSD

USE_CABAL=	blaze-builder>=0.2.1.4 conduit>=1.0 text>=0.11 \
		transformers>=0.2.2

.include "${.CURDIR}/../../lang/ghc/bsd.cabal.mk"
.include <bsd.port.mk>
