# Created by: Alexander Logvinov <ports@logvinov.com>
# $FreeBSD: misc/cdcollect/Makefile 316407 2013-04-24 07:35:40Z ak $

PORTNAME=	cdcollect
PORTVERSION=	0.6.0
PORTREVISION=	6
CATEGORIES=	misc gnome
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTVERSION}_source

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Simple CD catalog for GNOME

BUILD_DEPENDS=	sqlite3>=3.0:${PORTSDIR}/databases/sqlite3
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_BZIP2=	yes
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USES=        pathfix gettext
USE_GNOME=	gnomeprefix intlhack libgnome gnomesharp20
GCONF_SCHEMAS=	cdcollect.schemas
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

post-extract:
	${REINPLACE_CMD} -e 's,SqliteClient,Sqlite,' \
	    ${WRKSRC}/src/Makefile.in \
	    ${WRKSRC}/src/CDIcon.cs \
	    ${WRKSRC}/src/CDItem.cs \
	    ${WRKSRC}/src/CompPluginWindow.cs \
	    ${WRKSRC}/src/DBsql.cs

.include <bsd.port.mk>
