# Created by: Martin Matuska <mm@FreeBSD.org>
# $FreeBSD: devel/smake/Makefile 323129 2013-07-16 21:59:48Z eadler $

PORTNAME=	smake
PORTVERSION=	1.2.3
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.berlios.de/pub/smake/
DISTNAME=	${PORTNAME}-${PORTVERSION:S/.a./a/}

MAINTAINER=	eadler@FreeBSD.org
COMMENT=	Highly portable make program with automake features

LICENSE=	CDDL GPLv2
LICENSE_COMB=	multi
LICENSE_FILE_CDDL=	${WRKSRC}/CDDL.Schily.txt

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION:C/.a.*//g}

USE_BZIP2=	yes
USES=	gmake
MAKE_ARGS=	INS_BASE=${PREFIX} DEFMANBASE=.

MAN1=		smake.1
MAN5=		makefiles.5 makerules.5

RULEUSED=	"`${WRKSRC}/conf/oarch.sh`"
PLIST_SUB=	RULESUSED="${RULEUSED}"

.include <bsd.port.mk>
