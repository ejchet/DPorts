# Created by: Will Andrews <andrews@technologist.com>
# $FreeBSD: math/physcalc/Makefile 320791 2013-06-13 12:22:48Z bsam $

PORTNAME=	physcalc
PORTVERSION=	2.4
PORTREVISION=	1
CATEGORIES=	math
MASTER_SITES=	ftp://ftp.lightlink.com/pub/vulcan/
DISTNAME=	${PORTNAME}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Extremely flexible calculator that behaves much like units(1)

EXTRACT_BEFORE_ARGS=	-aq
EXTRACT_AFTER_ARGS=	-x physcalc -d ${WRKDIR}

NO_WRKSUBDIR=	yes
USE_ZIP=	yes

DEFS=		-DSHAREDIR="\"${PREFIX}/share/physcalc/\""
SRCS=		physconv.c physmain.c physmlib.c physnode.c physoper.c \
		physsolv.c
CFLAGS+=	-Wno-return-type

pre-build:
	${REINPLACE_CMD} -e "s@void main@int main@g" ${WRKSRC}/physmain.c

do-build:
	(cd ${WRKSRC} && ${CC} ${CFLAGS} ${DEFS} ${SRCS} -lm -o physcalc)

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/physcalc ${PREFIX}/bin
	${MKDIR} ${PREFIX}/share/physcalc
	${INSTALL_DATA} ${WRKSRC}/*.phy ${PREFIX}/share/physcalc

.include <bsd.port.mk>
