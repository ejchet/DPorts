# New ports collection Makefile for: esecanna
# Date created:		24 February 2000
# Whom:			Akinori MUSHA aka knu <knu@idaemons.org>
#
# $FreeBSD: japanese/esecanna/Makefile 300896 2012-07-14 13:54:48Z beat $
#

PORTNAME=	esecanna
PORTVERSION=	1.0.1
PORTREVISION=	5
CATEGORIES=	japanese
MASTER_SITES=	http://esecanna.netfort.gr.jp/ \
		${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	knu
DISTNAME=	${PORTNAME}_${PORTVERSION}
DIST_SUBDIR=	esecanna

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Pseudo cannaserver which wraps some other input engines

USE_RC_SUBR=	esecanna

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS=	--with-piddir="/var/run/esecanna"

DOCS=		CREDITS CHANGES.jp README.First.jp README.jp

post-patch:
	${REINPLACE_CMD} -e " \
		s,!!PREFIX!!,${PREFIX},g; \
		" \
		${WRKSRC}/README.jp \
		${WRKSRC}/esecannarc

post-install:
	${MKDIR} ${PREFIX}/lib/esecanna
.if !defined(NOPORTDOCS)
	${MKDIR} ${PREFIX}/share/doc/esecanna
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/esecanna/
.endif
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
