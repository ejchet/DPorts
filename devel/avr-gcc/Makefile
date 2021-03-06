# Created by: Joerg Wunsch <joerg@freebsd.org>
# $FreeBSD: devel/avr-gcc/Makefile 316596 2013-04-26 10:44:28Z ak $

PORTNAME=	gcc
PORTVERSION=	4.5.1
PORTREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GCC}
MASTER_SITES+=	http://people.freebsd.org/~joerg/:local
MASTER_SITE_SUBDIR=	releases/${DISTNAME}
PKGNAMEPREFIX=	avr-
DISTFILES=	gcc-core-${PORTVERSION}${EXTRACT_SUFX} \
		gcc-g++-${PORTVERSION}${EXTRACT_SUFX}
EXTRACT_ONLY=	gcc-core-${PORTVERSION}${EXTRACT_SUFX} \
		gcc-g++-${PORTVERSION}${EXTRACT_SUFX}

MAINTAINER=	joerg@FreeBSD.org
COMMENT=	FSF GCC 4.x for Atmel AVR 8-bit RISC cross-development

BUILD_DEPENDS=	avr-as:${PORTSDIR}/devel/avr-binutils \
		avr-ld:${PORTSDIR}/devel/avr-binutils
LIB_DEPENDS=	mpfr.4:${PORTSDIR}/math/mpfr \
		gmp.10:${PORTSDIR}/math/gmp \
		mpc.2:${PORTSDIR}/math/mpc
RUN_DEPENDS=	avr-as:${PORTSDIR}/devel/avr-binutils \
		avr-ld:${PORTSDIR}/devel/avr-binutils

# GCC 4.x doesn't want to be built in its own source directory.
WRKSRC=			${WRKDIR}/gcc-${PORTVERSION}
BUILD_WRKSRC=		${WRKDIR}/build
CONFIGURE_WRKSRC=	${BUILD_WRKSRC}
INSTALL_WRKSRC=		${BUILD_WRKSRC}
CONFIGURE_SCRIPT=	../gcc-${PORTVERSION}/configure

USE_PERL5_BUILD=	yes
USE_BZIP2=	yes
USE_GMAKE=	yes
USES=		bison gettext
GNU_CONFIGURE=	yes

.include <bsd.port.pre.mk>

.if (${ARCH} == "x86_64")
ARCH=		x86_64
.endif

CONFLICTS=	avr-gcc-3* avr-gcc-42*

CONFIGURE_ARGS=	--target=avr --disable-libssp --with-gmp=${LOCALBASE}

MAKE_FLAGS=	LANGUAGES="c c++"

WITHOUT_CPU_CFLAGS=This is a cross-compiler.

MAN1=		avr-cpp.1 avr-gcc.1 avr-g++.1 avr-gcov.1
MAN7=		fsf-funding.7 gfdl.7 gpl.7
INFO=		cpp gcc gccint cppinternals gccinstall

post-extract:
	cd ${WRKDIR} && ${MKDIR} build

.include <bsd.port.post.mk>
