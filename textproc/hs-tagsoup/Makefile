# Created by: Giuseppe Pilichi aka Jacula Modyun <jacula@gmail.com>
# $FreeBSD: textproc/hs-tagsoup/Makefile 319894 2013-06-04 18:53:40Z pgj $

PORTNAME=	tagsoup
PORTVERSION=	0.12.8
PORTREVISION=	2
CATEGORIES=	textproc haskell

MAINTAINER=	haskell@FreeBSD.org
COMMENT=	Parsing and extracting information from HTML/XML documents

LICENSE=	BSD

USE_CABAL=	text

INSTALL_PORTDATA=	cd ${WRKSRC} && \
			  ${INSTALL_DATA} ${WRKSRC}/tagsoup.htm ${DATADIR}

.include "${.CURDIR}/../../lang/ghc/bsd.cabal.mk"
.include <bsd.port.mk>
