# $FreeBSD: net/hs-network-conduit/Makefile 319894 2013-06-04 18:53:40Z pgj $

PORTNAME=	network-conduit
PORTVERSION=	1.0.0
PORTREVISION=	1
CATEGORIES=	net haskell

MAINTAINER=	haskell@FreeBSD.org
COMMENT=	Stream socket data using conduits

LICENSE=	BSD

USE_CABAL=	conduit>=1.0 lifted-base>=0.1 monad-control>=0.3 \
		network>=2.3 transformers>=0.2.2

.include "${.CURDIR}/../../lang/ghc/bsd.cabal.mk"
.include <bsd.port.mk>
