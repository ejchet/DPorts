# Created by: Jose Alonso Cardenas Marquez <acm@FreeBSD.org>
# $FreeBSD: emulators/mupen64plus-core/Makefile 316786 2013-04-29 08:57:12Z bapt $

PORTNAME=	mupen64plus
PORTVERSION?=	1.99.4
PORTREVISION?=	5
CATEGORIES=	emulators
MASTER_SITES=	${MASTER_SITE_GOOGLE_CODE} \
		${MASTER_SITE_LOCAL:S,$,acm/${PORTNAME}/,} \
		${MASTER_SITE_GOOGLE_CODE}:plugin \
		http://cdn.bitbucket.org/wahrhaft/${PORTNAME}${PKGNAMESUFFIX}/downloads/:plugin
PKGNAMESUFFIX?=	-core
DIST_SUBDIR=	${PORTNAME}

MAINTAINER?=	acm@FreeBSD.org
COMMENT?=	A fork of Mupen64 Nintendo 64 emulator

PROJECTHOST=	bsdistfiles
USE_GL?=	yes
USE_SDL?=	yes
USE_GMAKE=	yes
USE_LDCONFIG?=	yes
ONLY_FOR_ARCHS=	i386 amd64

MAKE_ENV+=	PTHREAD_LIBS="${PTHREAD_LIBS}"
OPTIONSFILE=	${PORT_DBDIR}/${PORTNAME}${PKGNAMESUFFIX}/options

.include <bsd.port.pre.mk>

.include "${MASTERDIR}/Makefile.common"

.include <bsd.port.post.mk>
