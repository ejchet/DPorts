# $FreeBSD: security/hs-tls-extra/Makefile 319894 2013-06-04 18:53:40Z pgj $

PORTNAME=	tls-extra
PORTVERSION=	0.6.1
PORTREVISION=	2
CATEGORIES=	security haskell

MAINTAINER=	haskell@FreeBSD.org
COMMENT=	TLS extra default values and helpers

LICENSE=	BSD

USE_CABAL=	certificate>=1.3.5 cipher-aes>=0.1 cipher-rc4 crypto-pubkey \
		crypto-random-api cryptohash>=0.6 mtl network>=2.3 \
		pem>=0.1.0 text>=0.5 tls>=1.1.0 vector

.include "${.CURDIR}/../../lang/ghc/bsd.cabal.mk"
.include <bsd.port.mk>
