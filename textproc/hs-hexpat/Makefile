# $FreeBSD: textproc/hs-hexpat/Makefile 319894 2013-06-04 18:53:40Z pgj $

PORTNAME=	hexpat
PORTVERSION=	0.20.3
PORTREVISION=	2
CATEGORIES=	textproc haskell

MAINTAINER=	haskell@FreeBSD.org
COMMENT=	XML parser/formatter based on expat

LICENSE=	BSD

USE_CABAL=	extensible-exceptions>=0.1 List>=0.4.2 text>=0.5 transformers \
		utf8-string

.include "${.CURDIR}/../../lang/ghc/bsd.cabal.mk"
.include <bsd.port.mk>
