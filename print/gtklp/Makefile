# Created by: Martin Klaffenboeck <martin.klaffenboeck@gmx.at>
# $FreeBSD: print/gtklp/Makefile 317503 2013-05-06 10:22:41Z bapt $

PORTNAME=	gtklp
PORTVERSION=	1.2.9
PORTREVISION=	1
DISTVERSIONSUFFIX=	.src
CATEGORIES=	print
MASTER_SITES=	SF

MAINTAINER=	sylvio@FreeBSD.org
COMMENT=	GTK interface to cups

LIB_DEPENDS=	cups.2:${PORTSDIR}/print/cups-client

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

USE_GNOME=	gtk20
USE_OPENSSL=	yes
USE_AUTOTOOLS=	automake:env
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

MAN1=		gtklp.1 gtklpq.1

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USES+=		gettext
PLIST_SUB+=	NLS=""
.endif

.include <bsd.port.mk>
