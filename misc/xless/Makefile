# Created by: Conrad Sabatier <conrads@home.com>
# $FreeBSD: misc/xless/Makefile 322663 2013-07-10 11:42:07Z bapt $

PORTNAME=	xless
PORTVERSION=	1.7
PORTREVISION=	2
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_XCONTRIB} \
		ftp://ftp.cs.berkeley.edu/ucb/people/dglo/xless/
MASTER_SITE_SUBDIR=	applications

MAINTAINER=	ports@FreeBSD.org
COMMENT=	X11 viewer for text files.  Useful as an add-on tool for other apps

MAKE_JOBS_UNSAFE=	yes
USES=		imake
USE_XORG=	ice sm x11 xaw xext xmu xpm xt
MAN1=		xless.1
MANCOMPRESSED=	yes

.include <bsd.port.mk>
