# New ports collection makefile for:	zfs-replicate
# Date created:		2008-05-26
# Whom:			Jui-Nan Lin <jnlin@csie.nctu.edu.tw>
#
# $FreeBSD: ports/sysutils/zfs-replicate/Makefile,v 1.5 2012/11/17 06:01:51 svnexp Exp $
#

PORTNAME=	zfs-replicate
PORTVERSION=	0.7
PORTREVISION=	1
CATEGORIES=	sysutils
MASTER_SITES=	http://blogs.sun.com/constantin/resource/
DISTNAME=	${PORTNAME}_v${PORTVERSION}

MAINTAINER=	jnlin@csie.nctu.edu.tw
COMMENT=	A ZFS Snapshot Replication Script

RUN_DEPENDS=	ksh:${PORTSDIR}/shells/pdksh

NO_WRKSUBDIR=	yes
NO_BUILD=	yes
USE_BZIP2=	yes

PLIST_FILES=	sbin/zfs-replicate

do-patch:
	@${REINPLACE_CMD} -e 's|^#!/bin/ksh|#!${PREFIX}/bin/ksh|g' ${WRKSRC}/zfs-replicate_v${PORTVERSION}
	@${REINPLACE_CMD} -e 's|/usr/sbin/zfs|/sbin/zfs|g' ${WRKSRC}/zfs-replicate_v${PORTVERSION}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/zfs-replicate_v${PORTVERSION} ${PREFIX}/sbin/zfs-replicate

.include <bsd.port.mk>
