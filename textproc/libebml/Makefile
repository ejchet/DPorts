# Created by: Mario Sergio Fujikawa Ferreira <lioux@FreeBSD.org>
# $FreeBSD: textproc/libebml/Makefile 317559 2013-05-06 22:47:41Z ehaupt $

PORTNAME=	libebml
PORTVERSION=	1.3.0
CATEGORIES=	textproc
MASTER_SITES=	http://dl.matroska.org/downloads/libebml/ \
		http://www.bunkus.org/videotools/mkvtoolnix/sources/

MAINTAINER=	multimedia@FreeBSD.org
COMMENT=	EBML (Extensible Binary Meta Language), sort of binary version of XML

LICENSE=	LGPL21

USE_BZIP2=	yes
USE_GMAKE=	yes
BUILD_WRKSRC=	${WRKSRC}/make/linux
INSTALL_WRKSRC=	${WRKSRC}/make/linux
USE_LDCONFIG=	yes
MAKE_JOBS_SAFE=	yes

# Installs dir with proper permissions
INSTALL_DATA_DIR=	${INSTALL} -d -o ${SHAREOWN} -g ${SHAREGRP} -m 755

do-configure:
	@${REINPLACE_CMD} -E \
		-e 's|^(prefix)[[:space:]]*=.*$$|\1=${PREFIX}|; \
			s,^(CXX|LD)[[:space:]]*=.*$$,\1=${CXX},; \
			s|^(CXXFLAGS)[[:space:]]*=(.*)$$|\1+=\2|; \
			s|^(INSTALL)[[:space:]]*=.*$$|\1=|; \
			s|^(INSTALL_DIR_OPTS)[[:space:]]*=.*$$|\1=${INSTALL_DATA_DIR}|; \
			s,^(INSTALL_OPTS_LIB|INSTALL_OPTS)[[:space:]]*=.*$$,\1=${INSTALL_DATA},' \
		${WRKSRC}/make/linux/Makefile

.include <bsd.port.mk>
