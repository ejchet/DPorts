# Created by: Hidekazu Kuroki <hidekazu@cs.titech.ac.jp>
# $FreeBSD: japanese/sj3-lib/Makefile 321957 2013-06-28 11:51:05Z bapt $

PORTNAME=	sj3
PORTVERSION=	2.0.1.20
PORTREVISION=	7
CATEGORIES=	japanese
MASTER_SITES=	LOCAL/nork
PKGNAMESUFFIX=	-lib

PATCH_SITES=	http://quasiquote.org/files/
PATCHFILES=	${PORTNAME}-qq-2.0.1.21.diff.gz
PATCH_DIST_STRIP=	-p1

MAINTAINER=	hrs@FreeBSD.org
COMMENT=	Japanese input method, library part

USES=		imake
USE_GCC=	any
USE_LDCONFIG=	yes
NO_INSTALL_MANPAGES=	yes
SUB_FILES=	sj3_freebsd.tmpl
SUB_LIST=	DESTDIR=${DESTDIR}

POSTPATCHES=	${FILESDIR}/post-patch-Imakefile \
		${FILESDIR}/post-patch-include-Const.h

post-patch:
	cd ${WRKSRC} && ${CAT} ${POSTPATCHES} | ${PATCH}

pre-configure: apply-slist
	${INSTALL_DATA} ${WRKDIR}/sj3_freebsd.tmpl ${WRKSRC}/sj3_freebsd.tmpl

.include <bsd.port.mk>
