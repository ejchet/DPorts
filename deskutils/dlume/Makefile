# Created by: Adam Weinberger <adamw@FreeBSD.org>
# $FreeBSD: deskutils/dlume/Makefile 315433 2013-03-28 03:28:30Z eadler $

PORTNAME=	dlume
PORTVERSION=	0.2.4
PORTREVISION=	11
CATEGORIES=	deskutils gnome
MASTER_SITES=	${MASTER_SITE_TUCOWS}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	GTK2 address book

USES=        pathfix
USE_GNOME=	gnomeprefix gtk20 libxml2
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

MAN1=		${PORTNAME}.1
PLIST_FILES=	bin/dlume share/pixmaps/dlume.png

post-patch:
	@${REINPLACE_CMD} -e 's|-O2||g' ${WRKSRC}/src/Makefile.in

.include <bsd.port.mk>
