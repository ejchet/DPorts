# Created by: grog
# $FreeBSD: sysutils/dirdiff/Makefile 318100 2013-05-13 15:08:04Z gahr $

PORTNAME=	dirdiff
PORTVERSION=	2.1
PORTREVISION=	3
CATEGORIES=	sysutils tcl tk
MASTER_SITES=	ftp://ftp.samba.org/pub/paulus/

MAINTAINER=	tcltk@FreeBSD.org
COMMENT=	Graphical diff tool

LICENSE=	GPLv2 # (or later)
LICENSE_FILE=	${WRKSRC}/COPYING

USE_TCL_BUILD=	yes
USE_LDCONFIG=	yes
USE_TK=		yes

PLIST_FILES=	bin/dirdiff lib/libfilecmp.so.0

CFLAGS+=	-fPIC -I${TCL_INCLUDEDIR}

post-patch:
	@${REINPLACE_CMD} -e \
		's|.0.0|.0|g ; \
		 s|^CFLAGS=|CFLAGS?=|g' ${WRKSRC}/Makefile
	@${REINPLACE_CMD} -e \
		's|^exec wish |exec ${WISH:T} |' ${WRKSRC}/dirdiff

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/dirdiff ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/libfilecmp.so.0 ${PREFIX}/lib

.include <bsd.port.mk>
