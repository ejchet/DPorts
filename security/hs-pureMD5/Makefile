# $FreeBSD: security/hs-pureMD5/Makefile 319894 2013-06-04 18:53:40Z pgj $

PORTNAME=	pureMD5
PORTVERSION=	2.1.2.1
PORTREVISION=	3
CATEGORIES=	security haskell

MAINTAINER=	haskell@FreeBSD.org
COMMENT=	Haskell-only implementation of MD5 digest (hash) yalgorithm

LICENSE=	BSD

USE_CABAL=	cereal>=0.2 crypto-api tagged

.include "${.CURDIR}/../../lang/ghc/bsd.cabal.mk"
.include <bsd.port.mk>
