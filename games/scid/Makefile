# ex:ts=8
# Ports collection makefile for:	scid
# Date created:			Mar 4, 2002
# Whom:				ijliao
#
# $FreeBSD: ports/games/scid/Makefile,v 1.18 2013/02/06 19:12:11 svnexp Exp $
#

PORTNAME=	scid
PORTVERSION=	4.3
CATEGORIES=	games databases
MASTER_SITES=	SF/${PORTNAME}/Scid/Scid%204.3/

MAINTAINER=	bsd@volki.at
COMMENT=	A free chess database application

USE_TK=		84+
INVALID_TCL_VER=	86

HAS_CONFIGURE=	yes
USE_BZIP2=	yes
USE_PYTHON=	yes
USE_GMAKE=	yes
MAKE_JOBS_SAFE=	yes

TCL_LIBRARY=	-L${LOCALBASE}/lib -ltcl${USE_TCL}

CONFIGURE_ARGS=	\
    BINDIR="${PREFIX}/bin" \
    SHAREDIR="${PREFIX}/share/scid" \
    TCL_VERSION="${TCL_VER}" \
    TCL_INCLUDE="-I${TCL_INCLUDEDIR} -I${TK_INCLUDEDIR} -I${LOCALBASE}/include" \
    TCL_LIBRARY="${TCL_LIBRARY}" \
    TK_LIBRARY="${TCL_LIBRARY} -ltk${USE_TK} -lX11" \
    OPTIMIZE="${CXXFLAGS} -fno-rtti -fno-exceptions" \
    WARNINGS=""

ALL_TARGET=	all strip

WRKSRC=		${WRKDIR}/${PORTNAME}

.include <bsd.port.mk>
