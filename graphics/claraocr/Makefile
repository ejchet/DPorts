# Created by: petef
# $FreeBSD: graphics/claraocr/Makefile 324181 2013-08-03 08:45:51Z az $

PORTNAME=	claraocr
PORTVERSION=	20031214
PORTREVISION=	4
CATEGORIES=	graphics accessibility
MASTER_SITES=	GENTOO
MASTER_SITE_SUBDIR=distfiles
DISTNAME=	clara-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Optical character recognition (OCR) utility

RUN_DEPENDS=	pnmenlarge:${PORTSDIR}/graphics/netpbm

USES=		shebangfix perl5
USE_XORG=	x11
MAKE_ENV=	MKDIR="${MKDIR}"
MAKE_JOBS_SAFE=	yes

SHEBANG_FILES=	clara.pl mkdoc.pl selthresh

MAN1=	clara-adv.1 clara-dev.1 clara.1 selthresh.1

post-install:
	${INSTALL_DATA} ${WRKSRC}/selthresh.1 ${MAN1PREFIX}/man/man1/

.include <bsd.port.mk>
