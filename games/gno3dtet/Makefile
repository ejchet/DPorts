# Created by: Will Andrews <andrews@technologist.com>
# $FreeBSD: games/gno3dtet/Makefile 318917 2013-05-24 07:21:23Z erwin $

PORTNAME=	gno3dtet
PORTVERSION=	1.96.1
PORTREVISION=	11
CATEGORIES=	games gnome
MASTER_SITES=	http://eseb.net/ftp/gno3dtet/
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	GNOME version of the classic 3D-ified T*tris

EXTRACT_DEPENDS=intltoolize:${PORTSDIR}/textproc/intltool

USES=        pathfix
USE_GNOME=	gnomeprefix intlhack libgnomeui librsvg2
USE_GMAKE=	yes
USE_AUTOTOOLS=	autoheader automake aclocal autoconf
ACLOCAL_ARGS=	-I m4 -I ${ACLOCAL_DIR} -I ${LOCALBASE}/share/aclocal
AUTOMAKE_ARGS=	-a -c -f
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
INSTALLS_OMF=	yes

run-autotools:: run-autotools-aclocal run-autotools-autoheader \
		run-autotools-automake run-autotools-autoconf

post-extract:
	@cd ${WRKSRC} && ${LOCALBASE}/bin/intltoolize -c -f

post-patch:
	@${REINPLACE_CMD} -e '/LIBTOOL/d ; \
		 s|gnome-games|gno3dtet|g' ${WRKSRC}/configure.in

pre-configure:
	@${INSTALL_SCRIPT} ${AUTOMAKE_DIR}/mkinstalldirs ${WRKSRC}

post-install:
	${CHOWN} root:games ${PREFIX}/bin/gno3dtet
	${CHMOD} 2555 ${PREFIX}/bin/gno3dtet
	${CHOWN} root:games ${PREFIX}/share/games/gno3dtet.hof
	${CHMOD} 664 ${PREFIX}/share/games/gno3dtet.hof

.include <bsd.port.mk>
