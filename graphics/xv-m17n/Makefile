# Created by: Shigeyuki FUKUSHIMA <shige@FreeBSD.org>
# $FreeBSD: ports/graphics/xv-m17n/Makefile,v 1.14 2013/01/26 15:44:00 svnexp Exp $

PKGNAMESUFFIX=	-m17n

MAINTAINER=	dinoex@FreeBSD.org
COMMENT=	An X11 program that displays images of various formats with multilingualization

MASTERDIR=	${.CURDIR}/../xv
PKGDIR=		${.CURDIR}

MAKE_ENV=	LOCALE_EXTENSION=-DTV_MULTILINGUAL

RUN_DEPENDS=	xv:${PORTSDIR}/${PKGCATEGORY}/xv

NOMAN=		yes

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/xv ${PREFIX}/bin/xv-m17n
	@if [ ! -f ${PREFIX}/bin/xv.orig ]; then \
	    ${MV} ${PREFIX}/bin/xv ${PREFIX}/bin/xv.orig ;\
	else \
	    ${RM} ${PREFIX}/bin/xv ;\
	fi
	@${LN} -sf ${PREFIX}/bin/xv-m17n ${PREFIX}/bin/xv

.include "${MASTERDIR}/Makefile"
