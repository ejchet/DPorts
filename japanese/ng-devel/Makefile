# New ports collection makefile for:	Ng-devel
# Date created:				18 June 2003
# Whom:					Kawaguti Ginga <ginga-freebsd@ginganet.org>
#
# $FreeBSD: ports/japanese/ng-devel/Makefile,v 1.17 2012/11/17 05:58:37 svnexp Exp $
#

PORTNAME=	ng
PORTVERSION=	1.5.b1
CATEGORIES=	japanese editors
MASTER_SITES=	http://tomato.sakura.ne.jp/~amura/archives/ng/
DISTNAME=	${PORTNAME}-1.5beta1

MAINTAINER?=	ginga-freebsd@ginganet.org
COMMENT=	A very light Emacs-clone with Japanese support

ALL_TARGET=	ng
GNU_CONFIGURE=	yes

MYPORTDOCS=	CHANGES.1_3 CHANGES.1_4 CHANGES.doc Ng.FAQ Ng.doc Ng.ref Ng.tut \
		README.Ng README.SKG
LATEST_LINK=	ng-devel
DOCSDIR=	${PREFIX}/share/doc/ja/${PORTNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ng ${PREFIX}/bin
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
.for file in ${MYPORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/docs/${file} ${DOCSDIR}/${file}.euc-jp
.endfor
.endif

.include <bsd.port.mk>
