# New ports collection makefile for:	m4
# Date created:		25 October 1994
# Whom:			mr
#
# $FreeBSD: ports/devel/m4/Makefile,v 1.48 2012/11/17 05:55:59 svnexp Exp $
#

PORTNAME=	m4
PORTVERSION=	1.4.16
PORTREVISION=	1
PORTEPOCH=	1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	m4

MAINTAINER=	johans@FreeBSD.org
COMMENT=	GNU m4

USE_BZIP2=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--program-prefix=g
CONFIGURE_ENV=	MAKEINFO="makeinfo --no-split"

INFO=	m4
MAN1=	gm4.1

EXAMPLESDIR=	share/examples/gm4

OPTIONS_DEFINE=		LIBSIGSEGV
LIBSIGSEGV_DESC=	Use libsigsegv for better diagnostics

post-install:
	@${MKDIR} ${PREFIX}/${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/*.m4 ${PREFIX}/${EXAMPLESDIR}

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MLIBSIGSEGV}
LIB_DEPENDS+=		sigsegv:${PORTSDIR}/devel/libsigsegv
CONFIGURE_ARGS+=	--with-libsigsegv-prefix=${LOCALBASE}
.else
CONFIGURE_ARGS+=	--without-libsigsegv-prefix
.endif

.include <bsd.port.mk>
