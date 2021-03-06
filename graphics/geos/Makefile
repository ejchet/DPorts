# Created by: Leonardo Martins <lmartins@nepe.eee.ufg.br>
# $FreeBSD: graphics/geos/Makefile 314479 2013-03-17 18:29:38Z beech $

PORTNAME=	geos
PORTVERSION=	3.3.8
CATEGORIES=	graphics geography
MASTER_SITES=	http://download.osgeo.org/geos/

MAINTAINER=	konstantin@saurbier.net
COMMENT=	GEOS implements all the OpenGIS "Simple Features for SQL"

LICENSE=	LGPL21

USE_AUTOTOOLS=	libtool
USE_BZIP2=	yes
USE_GMAKE=	yes
USE_LDCONFIG=	yes
GNU_CONFIGURE=	yes

OPTIONS_DEFINE=	PHP PYTHON RUBY

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MPHP} || ${PORT_OPTIONS:MPYTHON} || ${PORT_OPTIONS:MRUBY}
BUILD_DEPENDS+=	swig1.3:${PORTSDIR}/devel/swig13
.endif

.if ${PORT_OPTIONS:MPYTHON}
USE_PYTHON=		yes
CONFIGURE_ARGS+=	--enable-python
PLIST_SUB+=		WITH_PYTHON=""
.else
PLIST_SUB+=		WITH_PYTHON="@comment "
.endif

.if ${PORT_OPTIONS:MPHP}
BUILD_DEPENDS+=		${LOCALBASE}/bin/php-config:${PORTSDIR}/lang/php5
CONFIGURE_ARGS+=	--enable-php
PLIST_SUB+=		WITH_PHP=""
.else
PLIST_SUB+=		WITH_PHP="@comment "
.endif

.if ${PORT_OPTIONS:MRUBY}
USE_RUBY=		yes
CONFIGURE_ARGS+=	--enable-ruby
CONFIGURE_ENV+=		RUBY="${RUBY}"
PLIST_SUB+=		WITH_RUBY=""
.else
PLIST_SUB+=		WITH_RUBY="@comment "
.endif

post-install:
	@${LN} -s ${PREFIX}/lib/libgeos-${PORTVERSION}.so ${PREFIX}/lib/libgeos.so.0

.include <bsd.port.mk>
