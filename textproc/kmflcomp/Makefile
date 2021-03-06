# New ports collection makefile for:    kmflcomp
# Date created:		10 October 2007
# Whom:			Nikola Lecic <nikola.lecic@anthesphoria.net>
#
# $FreeBSD: textproc/kmflcomp/Makefile 316683 2013-04-27 18:25:24Z mva $
#

PORTNAME=	kmflcomp
PORTVERSION=	0.9.9
CATEGORIES=	textproc
MASTER_SITES=	SF/kmfl/kmfl/${PORTVERSION}:1 \
		SF/kmfl/kmfl/Documentation:2 \
		http://anthesphoria.net/FreeBSD/ports/distfiles/${DIST_SUBDIR}/:1,2
DISTFILES=	${PORTNAME}-${PORTVERSION}.tar.gz:1 \
		KMFL-Compiler.sxw:2
DIST_SUBDIR=	kmfl
EXTRACT_ONLY=	${PORTNAME}-${PORTVERSION}.tar.gz

MAINTAINER=	nikola.lecic@anthesphoria.net
COMMENT=	Compiler of Keyman KMFL keyboard sources to use with SCIM/IBus

BUILD_DEPENDS=	bison:${PORTSDIR}/devel/bison

USE_XORG=	x11
USE_LDCONFIG=	yes
USES=		iconv
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib -liconv

DOCSDIR=	${PREFIX}/share/doc/kmfl/${PORTNAME}
DOCS=		${DISTDIR}/${DIST_SUBDIR}/KMFL-Compiler.sxw \
		${WRKSRC}/AUTHORS \
		${WRKSRC}/COPYING \
		${WRKSRC}/ChangeLog

SUB_FILES=	pkg-message

post-patch:
	@${REINPLACE_CMD} -e 's|^install-data-am: install-kmflcompdocDATA|install-data-am:|' \
		${WRKSRC}/Makefile.in
	@${REINPLACE_CMD} -e 's|-L/usr/X11R6/lib|-L${LOCALBASE}/lib|' \
		${WRKSRC}/kmfl_compiler/Makefile.in
	@${REINPLACE_CMD} -E 's,(VERSION= *)"0\.9\.7",\1"0.9.9",' \
		${WRKSRC}/kmfl_compiler/kmfl_compiler.c

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} -v ${DOCS} ${DOCSDIR}
.endif
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
