# New ports collection makefile for:	FEAPpv
# Date created:		29 Feb 2006
# Whom:			Pedro F. Giffuni
#
# $FreeBSD: ports/cad/feappv/Makefile,v 1.14 2012/11/17 05:54:53 svnexp Exp $
#

PORTNAME=	feappv
PORTVERSION=	3.1
PORTREVISION=	1
CATEGORIES=	cad science
MASTER_SITES=	http://www.ce.berkeley.edu/projects/feap/feappv/
DISTFILES=	${PORTNAME}${PORTVERSION:S/.//}${EXTRACT_SUFX} ${PDF_MANUAL}
DIST_SUBDIR=	${PORTNAME}${PORTVERSION:S/.//}
EXTRACT_ONLY=	${PORTNAME}${PORTVERSION:S/.//}${EXTRACT_SUFX}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Finite Element Analysis Program "personal version"

OPTIONS_DEFINE=	DOCS

WRKSRC=		${WRKDIR}/ver${PORTVERSION:S/.//}

USE_ZIP=	yes
USE_XORG=	x11
USE_FORTRAN=	yes
USE_GMAKE=	yes
MAKEFILE=	makefile
MAKE_ENV=	FEAPPVHOME3_1="${WRKSRC}"
ALL_TARGET=	install
MAKE_JOBS_SAFE=	yes

CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib -lX11 -lm

PORTDOCS=	*
PLIST_FILES=	bin/feappv lib/Feappv_gnu.a

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDOCS}
PDF_MANUAL=	manual.pdf
.endif

post-patch:
	@${REINPLACE_CMD} -e \
		's| make | $$(MAKE) |' ${WRKSRC}/makefile
	@${REINPLACE_CMD} -e \
		'/^FF /s|=.*|= ${FC}| ; \
		 /^CC /s|=.*|= ${CC}| ; \
		 /^FFOPTFLAG /s|=.*|= ${FFLAGS}| ; \
		 /^CCOPTFLAG /s|=.*|= ${CFLAGS}| ; \
		 /^LDOPTIONS /s|=.*|= ${LDFLAGS}| ; \
		 s|Feappv.a|libfeappv.a|' ${WRKSRC}/makefile.in

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/main/feappv ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/Feappv_gnu.a ${PREFIX}/lib
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${DISTDIR}/${DIST_SUBDIR}/manual.pdf ${DOCSDIR}
.endif

.include <bsd.port.mk>
