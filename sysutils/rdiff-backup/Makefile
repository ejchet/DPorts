# Created by: Gerhard H�ring <gh@ghaering.de>
# $FreeBSD: sysutils/rdiff-backup/Makefile 319279 2013-05-27 19:01:46Z bsam $

PORTNAME=	rdiff-backup
PORTVERSION=	1.2.8
PORTREVISION=	1
PORTEPOCH=	1
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_SAVANNAH:S/$/:savannah/} \
		${MASTER_SITE_LOCAL:S/$/:local/}
MASTER_SITE_SUBDIR=	${PORTNAME}/:savannah \
		vd/${PORTNAME}${PKGNAMESUFFIX}/:local
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}:savannah,local

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Local/remote mirroring+incremental backup

LICENSE=	GPLv2

LIB_DEPENDS=	rsync:${PORTSDIR}/net/librsync

CONFLICTS=	rdiff-backup-devel-[0-9]* rdiff-backup-1.0*

USE_PYTHON=	yes
USE_PYDISTUTILS=yes

MAN1=		rdiff-backup.1 rdiff-backup-statistics.1

PORTDOCS=	CHANGELOG README COPYING FAQ.html

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

post-install:
	${INSTALL_MAN} ${MAN1:S,^,${WRKSRC}/,} ${PREFIX}/man/man1
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/,} ${DOCSDIR}
.endif

.include <bsd.port.mk>
