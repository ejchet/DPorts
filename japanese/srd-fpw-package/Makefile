# Created by: Satoshi Taoka <taoka@FreeBSD.org>
# $FreeBSD: japanese/srd-fpw-package/Makefile 324181 2013-08-03 08:45:51Z az $

PORTNAME=	srd-fpw-package
PORTVERSION=	1.0.8
PORTREVISION=	5
CATEGORIES=	japanese elisp
MASTER_SITES=	http://openlab.ring.gr.jp/edict/fpw/dist/srd/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A supplement file for lookup to use "Random House"

RUN_DEPENDS=	display:${PORTSDIR}/graphics/ImageMagick
# Your PC does not have an audio card always.
#		realplay:${PORTSDIR}/multimedia/linux-realplayer

NO_BUILD=	yes
PLIST_SUB=	PKGNAME=${PKGNAME}
USES=		perl5

PKG_DIR=	${PREFIX}/share/dict/lookup-package

do-install:
	${MKDIR} ${PKG_DIR}
	${INSTALL_DATA} ${WRKSRC}/srd-fpw.el ${PKG_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/extract-srd.pl ${PKG_DIR}
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
.for file in ChangeLog README.TXT
	${INSTALL_DATA} ${WRKSRC}/${file} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
