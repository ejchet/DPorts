# Created by: Maxim Sobolev <sobomax@FreeBSD.org>
# $FreeBSD: x11-toolkits/scintilla/Makefile 321587 2013-06-22 20:07:48Z rakuco $

PORTNAME=	scintilla
PORTVERSION=	3.3.3
CATEGORIES=	x11-toolkits
MASTER_SITES=	SF/scintilla/SciTE/${PORTVERSION}
DISTNAME=	scite${PORTVERSION:S/.//g}
EXTRACT_SUFX=	.tgz

MAINTAINER=	cyberbotx@cyberbotx.com
COMMENT=	Full-featured free source code editing component for GTK+

WRKSRC=		${WRKDIR}/${PORTNAME}/gtk

USES=		iconv
USE_GMAKE=	yes
MAKEFILE=	makefile
USE_LDCONFIG=	yes
USE_GNOME=	gtk20
MAKE_JOBS_SAFE=	yes
MAKE_ENV+=	LDFLAGS="${LDFLAGS}"
CFLAGS+=	-DPIC ${PICFLAG}

.include <bsd.port.pre.mk>

.if ${ARCH} == "sparc64"
PICFLAG?=	-fPIC
.else
PICFLAG?=	-fpic
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|[(]CC[)]|(CXX)|g ; s|[(]CCOMP[)]|(CC)|g' \
		${WRKSRC}/makefile

do-install:
	${MKDIR} ${PREFIX}/include/scintilla
	${INSTALL_DATA} ${WRKSRC}/../include/*.h ${PREFIX}/include/scintilla
	${INSTALL_PROGRAM} ${WRKSRC}/../bin/libscintilla.so.2 ${PREFIX}/lib
	${LN} -sf ${PREFIX}/lib/libscintilla.so.2 ${PREFIX}/lib/libscintilla.so
	${INSTALL_PROGRAM} ${WRKSRC}/../bin/libscintilla_lexers.so.2 ${PREFIX}/lib
	${LN} -sf ${PREFIX}/lib/libscintilla_lexers.so.2 ${PREFIX}/lib/libscintilla_lexers.so

.include <bsd.port.post.mk>
