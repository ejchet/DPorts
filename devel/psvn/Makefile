# Created by: Kimura Fuyuki <fuyuki@hadaly.org>
# $FreeBSD: devel/psvn/Makefile 315598 2013-03-30 05:13:30Z ashish $

PORTNAME=	psvn
PORTVERSION=	20120326.212349
PORTREVISION=	2
CATEGORIES=	devel elisp
MASTER_SITES=	http://www.xsteve.at/prg/emacs/
PKGNAMESUFFIX=	-${EMACS_PORT_NAME}
DISTNAME=	psvn.el
EXTRACT_SUFX=	# empty

MAINTAINER=	yasu@utahime.org
COMMENT=	Subversion interface for Emacs

LICENSE=	GPLv2

RUN_DEPENDS=	svn:${PORTSDIR}/devel/subversion

USE_EMACS=	yes

NO_WRKSUBDIR=	yes
EXTRACT_CMD=	${CP}
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS=	${WRKSRC}/psvn.el

PLIST_FILES=	${EMACS_VERSION_SITE_LISPDIR}/${PORTNAME}/psvn.el \
		${EMACS_VERSION_SITE_LISPDIR}/${PORTNAME}/psvn.elc
PLIST_DIRS=	${EMACS_VERSION_SITE_LISPDIR}/${PORTNAME}

ELISPDIR=	${PREFIX}/${EMACS_VERSION_SITE_LISPDIR}/${PORTNAME}

do-build:
	cd ${WRKSRC}; ${EMACS_CMD} -batch -q -f batch-byte-compile psvn.el

do-install:
	${MKDIR} ${ELISPDIR}
	${INSTALL_DATA} ${WRKSRC}/psvn.* ${ELISPDIR}

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
