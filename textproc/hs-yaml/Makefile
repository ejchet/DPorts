# $FreeBSD: textproc/hs-yaml/Makefile 319894 2013-06-04 18:53:40Z pgj $

PORTNAME=	yaml
PORTVERSION=	0.8.2.4
CATEGORIES=	textproc haskell

MAINTAINER=	haskell@FreeBSD.org
COMMENT=	Support for parsing and rendering YAML documents

LICENSE=	BSD

USE_CABAL=	aeson>=0.5 attoparsec conduit>=0.5 resourcet>=0.3 text \
		transformers>=0.1 unordered-containers vector

.include "${.CURDIR}/../../lang/ghc/bsd.cabal.mk"
.include <bsd.port.mk>
