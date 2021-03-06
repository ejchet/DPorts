# Created by: Thierry Thomas (<thierry@pompo.net>)
# $FreeBSD: www/pecl-APC/Makefile 320364 2013-06-09 17:48:16Z miwi $

PORTNAME=	APC
PORTVERSION=	3.1.14
PORTREVISION=	1
CATEGORIES=	www
#MASTER_SITES=	http://pecl.php.net/get/
MASTER_SITES=	LOCAL/sunpoet
PKGNAMEPREFIX=	pecl-
DISTNAME=	${PORTNAME}-3.1.13
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	PECL

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Alternative PHP Cache

OPTIONS_DEFINE=	DOCS FILEHITS IPC SEMAPHORES SPINLOCKS
FILEHITS_DESC=	Per request cache info
IPC_DESC=	IPC shm memory support (default: mmap)
SEMAPHORES_DESC=System V IPC semaphores (default: fcntl)
SPINLOCKS_DESC=	Spinlocks (experimental)

CFLAGS+=	-I${LOCALBASE}/include
CONFIGURE_ARGS=	--enable-apc
PHP_MODNAME=	${PORTNAME:tl}
PKGMESSAGE=	${WRKDIR}/pkg-message
SUB_FILES=	pkg-message
USE_PHP=	yes
USE_PHPEXT=	yes
WRKSRC=		${WRKDIR}/${PORTNAME}-3.1.13

PORTDOCS=	CHANGELOG INSTALL NOTICE apc.php

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MFILEHITS}
CONFIGURE_ARGS+=--enable-apc-filehits
.endif

.if ${PORT_OPTIONS:MIPC}
CONFIGURE_ARGS+=--disable-apc-mmap
.endif

.if ${PORT_OPTIONS:MSEMAPHORES}
CONFIGURE_ARGS+=--enable-apc-sem
.endif

.if ${PORT_OPTIONS:MSPINLOCKS}
CONFIGURE_ARGS+=--enable-apc-spinlocks
.endif

post-install:
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}/
	cd ${WRKSRC}/ && ${INSTALL_DATA} ${PORTDOCS} ${DOCSDIR}/
.endif
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
