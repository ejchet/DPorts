# $FreeBSD: security/hs-SHA/Makefile 319894 2013-06-04 18:53:40Z pgj $

PORTNAME=	SHA
PORTVERSION=	1.6.1
PORTREVISION=	2
CATEGORIES=	security haskell

MAINTAINER=	haskell@FreeBSD.org
COMMENT=	Implementations of the SHA suite of message digest functions

LICENSE=	BSD

OPTIONS_DEFINE=		EXE

EXE_DESC=		Build a SHA2-384 executable similar to 'md5sum'

.include "${.CURDIR}/../../lang/ghc/bsd.cabal.options.mk"

CONFIGURE_ARGS+=	--flags="-Test"

.if ${PORT_OPTIONS:MEXE}
CONFIGURE_ARGS+=	--flags="exe"
EXECUTABLE+=		sha1 sha384
.else
CONFIGURE_ARGS+=	--flags="-exe"
.endif

.include "${.CURDIR}/../../lang/ghc/bsd.cabal.mk"
.include <bsd.port.mk>
