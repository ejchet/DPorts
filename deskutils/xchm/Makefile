# Created by: Pav Lucistnik <pav@oook.cz>
# $FreeBSD: deskutils/xchm/Makefile 316464 2013-04-24 18:10:30Z ak $

PORTNAME=	xchm
PORTVERSION=	1.22
CATEGORIES=	deskutils
MASTER_SITES=	SF/${PORTNAME}/xCHM/${PORTNAME}-${PORTVERSION}

MAINTAINER=	rm@FreeBSD.org
COMMENT=	Windows HTML Help (.chm) viewer for UNIX

LICENSE=	GPLv2

LIB_DEPENDS=	chm:${PORTSDIR}/misc/chmlib

GNU_CONFIGURE=	yes
USE_WX=		2.6+
WX_UNICODE=	yes
WX_CONF_ARGS=	absolute
LDFLAGS+=	-L${LOCALBASE}/lib ${PTHREAD_LIBS}
CPPFLAGS+=	-I${LOCALBASE}/include

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USES+=		gettext
PLIST_SUB+=	NLS=""
.else
CONFIGURE_ARGS+=	--disable-nls
PLIST_SUB+=	NLS="@comment "
.endif

.include <bsd.port.mk>
