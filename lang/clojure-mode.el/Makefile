# New ports collection makefile for:   clojure-mode.el
# Date created:		22 Dec 2008
# Whom:			Peter Schuller <peter.schuller@infidyne.com>
#
# $FreeBSD: lang/clojure-mode.el/Makefile 315598 2013-03-30 05:13:30Z ashish $
#

PORTNAME=	clojure-mode.el
PORTVERSION=	20090718
PORTREVISION=	10
CATEGORIES=	lang elisp
MASTER_SITES=	http://distfiles.scode.org/ports/
DISTNAME=	clojure-mode-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Emacs lisp module for the Clojure language

USE_EMACS=	yes

NO_BUILD=	yes
WRKSRC=		${WRKDIR}/clojure-mode

do-install:
	${INSTALL_DATA} ${WRKSRC}/clojure-mode.el ${PREFIX}/${EMACS_SITE_LISPDIR}/clojure-mode.el
	${INSTALL_DATA} ${WRKSRC}/clojure-test-mode.el ${PREFIX}/${EMACS_SITE_LISPDIR}/clojure-test-mode.el

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
