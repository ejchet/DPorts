# Created by: Grzegorz Blach <gblach@FreeBSD.org>
# $FreeBSD: www/egueb/Makefile 316813 2013-04-29 12:59:35Z bapt $

PORTNAME=	egueb
PORTVERSION=	20121003
CATEGORIES=	www enlightenment
MASTER_SITES=	http://files.roorback.net/e17/extra/

MAINTAINER=	gblach@FreeBSD.org
COMMENT=	Egueb provides support for www standards

LICENSE=	LGPL21

BUILD_DEPENDS=	${LOCALBASE}/bin/flex:${PORTSDIR}/textproc/flex

DIST_SUBDIR=	e17
USE_BZIP2=	yes
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USES=		bison pathfix
USE_EFL=	eina enesim ender etch libtool_hack
USE_GNOME=	pkgconfig
USE_LDCONFIG=	yes

CONFIGURE_ARGS=	--disable-static

post-patch:
	@${REINPLACE_CMD} -e "s|@LEX@|${LOCALBASE}/bin/flex|" \
		${WRKSRC}/ecss/lib/Makefile.in

.include <bsd.port.mk>
