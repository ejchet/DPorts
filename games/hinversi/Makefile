# New ports collection makefile for:	hinversi
# Date created:		2 April 2007
# Whom:			Andrew Pantyukhin <infofarmer@FreeBSD.org>
#
# $FreeBSD: games/hinversi/Makefile 316596 2013-04-26 10:44:28Z ak $
#

PORTNAME=	hinversi
PORTVERSION=	0.8.2
CATEGORIES=	games
MASTER_SITES=	SF/${PORTNAME}/latest

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Reversi/Othello clone

OPTIONS_DEFINE=	NLS

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

USES=	pathfix
USE_AUTOTOOLS=	libtool
USE_LDCONFIG=	yes

MAN1=		hinversi-cli.1

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USES+=		gettext
CONFIGURE_ARGS+=--with-libintl-prefix=${LOCALBASE}
PLIST_SUB+=	NLS=""
.else
CONFIGURE_ARGS+=--disable-nls
PLIST_SUB+=	NLS="@comment "
.endif

post-patch:
.for file in cgi/Makefile.in human-cli/Makefile.in lib/Makefile.in
	@${REINPLACE_CMD} -e \
		'/AM_CFLAGS/s|-O3|| ; \
		 /_la_LIBADD/s|=$$|= $$(LTLIBINTL)|' ${WRKSRC}/${file}
.endfor

.include <bsd.port.mk>
