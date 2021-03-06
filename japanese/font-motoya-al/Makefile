# New ports collection makefile for:	font-motoya-al
# Date created:		7 January 2011
# Whom:			hrs
# $FreeBSD: ports/japanese/font-motoya-al/Makefile,v 1.2 2012/11/17 05:58:33 svnexp Exp $
#

PORTNAME=	font-motoya-al
PORTVERSION=	0.0.20100921
CATEGORIES=	japanese x11-fonts
MASTER_SITES=	LOCAL
MASTER_SITE_SUBDIR=	hrs
DISTNAME=	motoya-al-fonts-${PORTVERSION:S,^0.0.,,}

MAINTAINER=	hrs@FreeBSD.org
COMMENT=	Free Japanese fonts by MOTOYA

RUN_DEPENDS=	fc-cache:${PORTSDIR}/x11-fonts/fontconfig

USE_BZIP2=	yes
NO_BUILD=	yes
PKGINSTALL=	${WRKDIR}/pkg-install
PKGDEINSTALL=	${WRKDIR}/pkg-install
SUB_FILES=	pkg-install
SUB_LIST=	X_FONTSDIR=${PREFIX}/${X_FONTSDIR}
PLIST_SUB=	X_FONTSDIR=${X_FONTSDIR} \
		LOCAL_FONTSDIR=${LOCAL_FONTSDIR}
PORTDOCS=	newsrelease20100921.pdf

LOCAL_FONTSDIR=	share/fonts
X_FONTSDIR=	lib/X11/fonts

do-install:
	${MKDIR} ${DATADIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${DATADIR}
	${MKDIR} ${PREFIX}/${LOCAL_FONTSDIR}/TTF
	${LN} -s -f \
		${DATADIR}/MTL*.ttf \
		${PREFIX}/${LOCAL_FONTSDIR}/TTF/
	${MKDIR} ${PREFIX}/${X_FONTSDIR}/TTF
	${LN} -s -f \
		${DATADIR}/MTL*.ttf \
		${PREFIX}/${X_FONTSDIR}/TTF/
	${INSTALL_DATA} ${FILESDIR}/20-unhint-motoya-al.conf \
		${FILESDIR}/62-fonts-motoya-al.conf \
		${PREFIX}/etc/fonts/conf.avail
	${LN} -s -f ../conf.avail/20-unhint-motoya-al.conf \
		${PREFIX}/etc/fonts/conf.d/20-unhint-motoya-al.conf
	${LN} -s -f ../conf.avail/62-fonts-motoya-al.conf \
		${PREFIX}/etc/fonts/conf.d/62-fonts-motoya-al.conf
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${PORTDOCS} ${DOCSDIR}
.endif

post-install:
	${LOCALBASE}/bin/fc-cache -f -v ${PREFIX}/${X_FONTSDIR}/TTF
	${SETENV} PKG_PREFIX=${PREFIX} ${SH} ${PKGINSTALL} ${PKGNAME} POST-INSTALL

.include <bsd.port.mk>
