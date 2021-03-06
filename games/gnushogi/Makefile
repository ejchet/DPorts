# New ports collection makefile for:   gnushogi
# Date created:        9 October 1996
# Whom:                Yukihiro Nakai <Nakai@Mlab.t.u-tokyo.ac.jp>
#
# $FreeBSD: ports/games/gnushogi/Makefile,v 1.18 2012/11/17 05:57:40 svnexp Exp $
#

PORTNAME=	${GNUSHOGI_PORTNAME}
PORTVERSION=	${GNUSHOGI_PORTVERSION}
CATEGORIES=	games
MASTER_SITES=	${GNUSHOGI_MASTER_SITES}
MASTER_SITE_SUBDIR=	${GNUSHOGI_MASTER_SITE_SUBDIR}
DISTNAME=	${GNUSHOGI_DISTNAME}

MAINTAINER=	johans@FreeBSD.org
COMMENT=	GNU version of Shogi

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--without-x --without-xshogi
MAKE_JOBS_UNSAFE=	yes

MAN6=		gnushogi.6
INFO=		gnushogi

.include "${.CURDIR}/../../games/gnushogi/Makefile.common"
.include <bsd.port.pre.mk>

post-extract:
	-@${RM} ${WRKSRC}/doc/gnushogi.info*

post-patch:
	@${REINPLACE_CMD} -e 's|/lib/gnushogi|/share/gnushogi|g' \
		${WRKSRC}/gnushogi/Makefile.in
	@${REINPLACE_CMD} -e '/HAVE_SETLINEBUF/s|ifdef|ifndef|' \
		${WRKSRC}/gnushogi/gnushogi.h

pre-build:
	cd ${WRKSRC}/doc && makeinfo --no-split gnushogi

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gnushogi/gnushogi ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/gnushogi.6 ${MANPREFIX}/man/man6
	@${MKDIR} ${DATADIR}
	${INSTALL_DATA} ${WRKSRC}/gnushogi/gnushogi.bbk ${DATADIR}
	${INSTALL_DATA} ${WRKSRC}/doc/gnushogi.info ${PREFIX}/info
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/BOOKFILES ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/PORTING ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/*.gam ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/*.rules ${DOCSDIR}
.endif

.include <bsd.port.post.mk>
