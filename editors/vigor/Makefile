# Created by: Bill Fumerola <billf@chc-chimes.com>
# $FreeBSD: editors/vigor/Makefile 319831 2013-06-04 08:23:11Z miwi $

PORTNAME=	vigor
PORTVERSION=	0.016
PORTREVISION=	4
CATEGORIES=	editors tcl tk
MASTER_SITES=	SF

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Vi clone inspired by the userfriendly comic strip

LICENSE=	BSD
LICENSE_FILE=	${WRKSRC}/../LICENSE

WRKSRC=		${WRKDIR}/${DISTNAME}/build

USE_TCL=	yes
USE_TCL_BUILD=	yes
USE_TK=		yes
USE_TK_BUILD=	yes
USE_XORG=	x11
GNU_CONFIGURE=	yes
MAKE_JOBS_SAFE=	yes

CPPFLAGS+=	-I${TCL_INCLUDEDIR} -I${TK_INCLUDEDIR}
LDFLAGS+=	-L${LOCALBASE}/lib

post-patch:
	${REINPLACE_CMD} -e 's|tcl80|tcl${TCL_VER:S/.//}|; \
		s|tk80|tk${TK_VER:S/.//}|; \
		s|^grantpt|XXXgrantpt|;' \
			${WRKSRC}/configure

.include <bsd.port.mk>
