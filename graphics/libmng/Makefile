# Created by: Mikhail Teterin <mi@aldan.algebra.com>
# $FreeBSD: graphics/libmng/Makefile 317488 2013-05-06 08:59:02Z bapt $

PORTNAME=	libmng
PORTVERSION=	1.0.10
PORTREVISION=	2
CATEGORIES=	graphics
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}-devel/${PORTVERSION} \
		http://www.libmng.com/download/


MAINTAINER=	mi@aldan.algebra.com
COMMENT=	Multiple-image Network Graphics (MNG) reference library

LIB_DEPENDS=	jpeg:${PORTSDIR}/graphics/jpeg \
		lcms:${PORTSDIR}/graphics/lcms

OPTIONS_DEFINE=	MNG_OPTIMIZE
MNG_OPTIMIZE_DESC=	Use vendor's new optimization flags

MAKEFILE=	${FILESDIR}/Makefile.bsd
MAKE_JOBS_SAFE=	yes
#USE_BZIP2=	yes	# Please, uncomment on next upgrade

USE_LDCONFIG=	yes

MAN3=		libmng.3
MAN5=		mng.5 jng.5

.include <bsd.port.options.mk>
.if ${PORT_OPTIONS:MMNG_OPTIMIZE}
MAKE_ARGS+=	WITH_MNG_OPTIMIZE=true
.else
MAKE_ARGS+=	WITH_MNG_OPTIMIZE=off
.endif

post-install:
	cd ${WRKSRC}/doc/man && ${INSTALL_MAN} ${MAN3} ${PREFIX}/man/man3 \
		&& ${INSTALL_MAN} ${MAN5} ${PREFIX}/man/man5

.include <bsd.port.mk>
