# Created by: Giuseppe Pilichi aka Jacula Modyun <jacula@gmail.com>
# $FreeBSD: audio/hs-ALUT/Makefile 319894 2013-06-04 18:53:40Z pgj $

PORTNAME=	ALUT
PORTVERSION=	2.2.0.0
PORTREVISION=	10
CATEGORIES=	audio haskell

MAINTAINER=	haskell@FreeBSD.org
COMMENT=	Binding for the OpenAL Utility Toolkit

LICENSE=	BSD

USE_CABAL=	OpenAL StateVar
USE_OPENAL=	al alut

INSTALL_PORTEXAMPLES=	@(cd ${WRKSRC}/examples/ && ${COPYTREE_SHARE} \* ${EXAMPLESDIR})

.include "${.CURDIR}/../../lang/ghc/bsd.cabal.mk"
.include <bsd.port.mk>
