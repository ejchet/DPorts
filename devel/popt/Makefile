# Created by: Yuan-Chen Cheng <ycheng@sinica.edu.tw>
# $FreeBSD: devel/popt/Makefile 317521 2013-05-06 15:18:38Z bapt $

PORTNAME=	popt
PORTVERSION=	1.16
CATEGORIES=	devel
MASTER_SITES=	http://rpm5.org/files/popt/

MAINTAINER=	jpaetzel@FreeBSD.org
COMMENT=	A getopt(3) like library with a number of enhancements, from Redhat

CONFIGURE_ARGS=	--with-libiconv-prefix=${LOCALBASE} \
		--program-prefix=""
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
GNU_CONFIGURE=	yes
USE_AUTOTOOLS=	libtool
USES=		pathfix iconv
USE_LDCONFIG=	yes

MAN3=		popt.3

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
CONFIGURE_ARGS+=--enable-nls
PLIST_SUB+=	NLS=""
USES+=		gettext
.else
CONFIGURE_ARGS+=--disable-nls
PLIST_SUB+=	NLS="@comment "
.endif

.include <bsd.port.mk>
