# New ports collection makefile for:	fileschanged
# Date created:				18 May 2004
# Whom:					Konstantin Reznichenko <kot@premierbank.dp.ua>
#
# $FreeBSD: ports/sysutils/fileschanged/Makefile,v 1.12 2012/11/17 06:01:30 svnexp Exp $
#

PORTNAME=	fileschanged
PORTVERSION=	0.6.5
PORTREVISION=	1
CATEGORIES=	sysutils
MASTER_SITES=	SF

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Utility that reports when files have been altered

BUILD_DEPENDS=	${LOCALBASE}/include/argp.h:${PORTSDIR}/devel/argp-standalone \
		help2man:${PORTSDIR}/misc/help2man

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_FAM=	yes
CONFIGURE_ENV+=	LIBS="-largp"
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
CONFIGURE_ARGS=	--datadir=${PREFIX}/share/doc --disable-nls

INFO=		fileschanged
MAN1=		fileschanged.1
PORTDOCS=	AUTHORS ChangeLog INSTALL NEWS README
PLIST_FILES=	bin/fileschanged

.if !defined(NOPORTDOCS)
post-install:
	${MKDIR} ${DOCSDIR}
.for DOCFILE in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${DOCFILE} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
