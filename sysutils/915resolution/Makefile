# Created by: Remington Lang <MrL0Lz@gmail.com>
# $FreeBSD: sysutils/915resolution/Makefile 319126 2013-05-26 18:11:11Z bsam $

PORTNAME=	915resolution
PORTVERSION=	0.5.3
PORTREVISION=	1
PORTEPOCH=	1
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	ehaupt

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Resolution tool for Intel i915 video cards

USE_RC_SUBR=	915resolution

PLIST_FILES=	sbin/915resolution
OPTIONS_DEFINE=	DOCS
PORTDOCS=	README.txt LICENSE.txt chipset_info.txt changes.log

ONLY_FOR_ARCHS=	i386 amd64

do-build:
	cd ${WRKSRC} && \
		${CC} ${CFLAGS} 915resolution.c -o 915resolution

.include <bsd.port.options.mk>

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/915resolution ${PREFIX}/sbin
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/,} ${DOCSDIR}/
.endif

.include <bsd.port.mk>
