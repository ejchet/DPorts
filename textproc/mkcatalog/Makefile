# New ports collection makefile for:	mkcatalog
# Date created:		26 Oct 2000
# Whom:			shige
#
# $FreeBSD: ports/textproc/mkcatalog/Makefile,v 1.8 2012/11/17 06:02:03 svnexp Exp $
#
# This port is self contained in the src directory.
#

PORTNAME=	mkcatalog
PORTVERSION=	1.1
CATEGORIES=	textproc
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A maintenance utility for sgml catalog files

NO_WRKSUBDIR=	yes
NO_BUILD=	yes
PLIST_FILES=	sbin/mkcatalog
SCRIPTS_ENV=	CONFIGURE_TARGETS=${CONFIGURE_TARGETS}

SRC=			${.CURDIR}/src
CONFIGURE_TARGETS=	mkcatalog

do-fetch:
	@${DO_NADA}

pre-configure:
	@for i in ${CONFIGURE_TARGETS} ; do \
	    ${CP} ${SRC}/$${i}.in ${WRKDIR} ; \
	done

do-install:
	@${INSTALL_SCRIPT} ${WRKDIR}/mkcatalog ${PREFIX}/sbin/mkcatalog

.include <bsd.port.mk>
