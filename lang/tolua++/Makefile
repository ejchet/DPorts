# Created by: aaron@FreeBSD.org
# $FreeBSD: lang/tolua++/Makefile 322840 2013-07-12 15:01:45Z amdmi3 $

PORTNAME=	tolua++
PORTVERSION=	1.0.93
CATEGORIES=	lang devel
MASTER_SITES=	http://www.codenix.com/~tolua/ \
		http://mirror.amdmi3.ru/distfiles/

MAINTAINER=	amdmi3@FreeBSD.org
COMMENT=	An extended version of tolua, a tool to integrate C/C++ code with Lua

USE_BZIP2=	yes
USE_LUA=	5.1
USE_SCONS=	yes
SCONS_ARGS=	prefix=${PREFIX} SONAME="libtolua++-${LUA_VER}.so"

CFLAGS+=	-I${LUA_INCDIR}
LDFLAGS+=	-L${LUA_LIBDIR}

post-patch:
	@${REINPLACE_CMD} -e "s|'lualib',||" ${WRKSRC}/config_posix.py

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/tolua++ ${LUA_BINDIR}
	${LN} -sf ${LUA_SUBDIR}/tolua++ ${PREFIX}/bin/tolua++-${LUA_VER}
	${INSTALL_DATA} ${WRKSRC}/include/tolua++.h ${LUA_INCDIR}
	${INSTALL_DATA} ${WRKSRC}/lib/libtolua++.a ${LUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/lib/libtolua++.so ${LUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/lib/libtolua++.so ${PREFIX}/lib/libtolua++-${LUA_VER}.so

.include <bsd.port.pre.mk>

.if ${ARCH} == "sparc64" && ${OSVERSION} > 900000
BROKEN=		Does not install on sparc64-9
.endif

.include <bsd.port.post.mk>
