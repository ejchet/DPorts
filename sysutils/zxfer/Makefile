# Created by: Ivan Dreckman <ivannashdreckman@fastmail.fm>
# $FreeBSD: sysutils/zxfer/Makefile 321372 2013-06-20 11:46:31Z swills $

PORTNAME=	zxfer
PORTVERSION=	0.9.8
PORTREVISION=	1
CATEGORIES=	sysutils
MASTER_SITES=	GOOGLE_CODE

MAINTAINER=	ivannashdreckman@fastmail.fm
COMMENT=	Easily and reliably transfer ZFS filesystems

LICENSE=	BSD

RUN_DEPENDS=	rsync:${PORTSDIR}/net/rsync

USE_BZIP2=	yes
NO_BUILD=	yes

PLIST_FILES=	sbin/zxfer

MAN8=		zxfer.8
MANCOMPRESSED=	yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/zxfer ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/zxfer.8.gz ${MAN8PREFIX}/man/man8

.include <bsd.port.mk>
