# New ports collection makefile for:	zfs-snapshot-mgmt
# Date created:				6 July 2008
# Whom:				Marcin Simonides <marcin@studio4plus.com>
#
# $FreeBSD: ports/sysutils/zfs-snapshot-mgmt/Makefile,v 1.7 2012/11/17 06:01:51 svnexp Exp $
#

PORTNAME=	zfs-snapshot-mgmt
PORTVERSION=	20090201
PORTREVISION=	2
CATEGORIES=	sysutils
MASTER_SITES=	http://marcin.studio4plus.com/files/

MAINTAINER=	marius@nuenneri.ch
COMMENT=	Automatic ZFS snapshot management tool

USE_RUBY=	yes
RUBY_NO_BUILD_DEPENDS=	yes
RUBY_SHEBANG_FILES=	zfs-snapshot-mgmt

NO_BUILD=	yes
MAN8=		zfs-snapshot-mgmt.8

SUB_FILES=	pkg-message

post-patch:	.SILENT
	${FIND} ${WRKSRC} -type f -exec ${REINPLACE_CMD} \
		-e 's|/usr/local|${PREFIX}|g' {} +

do-install:
	@${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
	@${INSTALL_MAN} ${WRKSRC}/${PORTNAME}.8 ${MANPREFIX}/man/man8
	@${INSTALL_DATA} ${WRKSRC}/${PORTNAME}.conf.sample ${PREFIX}/etc

post-install:
	@if [ ! -f ${PREFIX}/etc/${PORTNAME}.conf ]; then \
		${CP} -p ${PREFIX}/etc/${PORTNAME}.conf.sample ${PREFIX}/etc/${PORTNAME}.conf ; \
	fi
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
