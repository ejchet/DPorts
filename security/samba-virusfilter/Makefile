# New ports collection makefile for:	samba-virusfilter
# Date created:		06 Dec 2011
# Whom:			Jun Kuriyama <kuriyama@FreeBSD.org>
#
# $FreeBSD: ports/security/samba-virusfilter/Makefile,v 1.2 2012/11/17 06:01:19 svnexp Exp $
#

PORTNAME=	samba-virusfilter
PORTVERSION=	0.1.3
CATEGORIES=	security
MASTER_SITES=	http://cloud.github.com/downloads/fumiyas/samba-virusfilter/

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	On-access anti-virus filter for Samba

PATCH_DEPENDS=	smbclient:${PORTSDIR}/net/${SAMBA_PORT}
BUILD_DEPENDS=	${NONEXISTENT}:${PORTSDIR}/net/${SAMBA_PORT}:configure

USE_BZIP2=	yes
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
ALL_TARGET=			# should empty
CONFIGURE_ARGS=	--with-samba-source=`cd ${PORTSDIR}/net/${SAMBA_PORT}; ${MAKE} -VWRKSRC` \
	--with-clamd=${PREFIX}/sbin/clamd --with-savdid=${PREFIX}/bin/savdid
SAMBA_PORT?=	samba36
USE_AUTOTOOLS=	autoconf autoheader # for net/${SAMBA_PORT} configure
MAKE_ARGS=	SAMBA_DATADIR=${PREFIX}

.include <bsd.port.mk>
