# New ports collection makefile for:   timeless
# Date created:        5 August 2006
# Whom:                Jeff Molofee
#
# $FreeBSD: ports/graphics/timeless/Makefile,v 1.8 2012/11/17 05:58:24 svnexp Exp $
#

PORTNAME=	timeless
PORTVERSION=	1.0
PORTREVISION=	5
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	shaun

MAINTAINER=	nehe@cruzinternet.com
COMMENT=	FreeBSD/SDL port of Tran's Timeless Demo with Sound

USE_SDL=	sdl mixer

PLIST_FILES=	bin/${PORTNAME} %%DATADIR%%/time.s3m
PLIST_DIRS=	%%DATADIR%%

.include <bsd.port.mk>
