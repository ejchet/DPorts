# New ports collection makefile for:	libmemcache
# Date created:		November 29, 2004
# Whom:			Sean Chittenden <seanc@FreeBSD.org>
#
# $FreeBSD: ports/databases/libmemcache/Makefile,v 1.20 2012/11/17 05:55:10 svnexp Exp $
#

PORTNAME=	libmemcache
DISTVERSION=	1.4.0.rc2
PORTREVISION=	1
CATEGORIES=	databases
MASTER_SITES=	http://people.FreeBSD.org/~seanc/libmemcache/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	The C library for accessing a memcache cluster

USE_BZIP2=	yes

USE_AUTOTOOLS=	libtool
USE_LDCONFIG=	yes
GNU_CONFIGURE=	yes

OPTIONS_DEFINE=	DEBUG

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDEBUG}
CONFIGURE_ARGS+=--enable-debug
.endif

.include <bsd.port.mk>
