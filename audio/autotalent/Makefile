# Created by: Rich Neese <r.neese@gmail.com>
# $FreeBSD: audio/autotalent/Makefile 324093 2013-08-01 06:37:46Z bapt $

PORTNAME=	autotalent
PORTVERSION=	0.2
CATEGORIES=	audio
MASTER_SITES=	http://web.mit.edu/tbaran/www/
DISTNAME=	${PORTNAME}-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Real-time pitch correction plugin for LADSPA

BUILD_DEPENDS=	${LOCALBASE}/include/ladspa.h:${PORTSDIR}/audio/ladspa
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_GMAKE=	yes

MAKE_ARGS=	CXX="${CXX}" CC=${CC} CPP=${CPP} \
		CXXFLAGS="${CXXFLAGS} -fPIC -I${LOCALBASE}/include"

ALL_TARGET=	targets

PLIST_FILES=	lib/ladspa/autotalent.so

post-patch:
	@${FIND} ${BUILD_WRKSRC} -name '*.cpp' | ${XARGS} \
		${REINPLACE_CMD} -e "s|<malloc.h>|<stdlib.h>|g"
	${REINPLACE_CMD} -e "s,-O3 -Wall -fomit-frame-pointer -fstrength-reduce -funroll-loops -ffast-math,${CFLAGS}," ${WRKSRC}/Makefile

do-install:
	@${MKDIR} ${PREFIX}/lib/ladspa
	${INSTALL_DATA} ${WRKSRC}/autotalent.so ${PREFIX}/lib/ladspa

.include <bsd.port.mk>
