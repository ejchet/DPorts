# Created by: KIMURA Yasuhiro <yasu@utahime.org>
# $FreeBSD: mail/c-sig/Makefile 315598 2013-03-30 05:13:30Z ashish $

PORTNAME=	c-sig
PORTVERSION=	3.8
PORTREVISION=	14
CATEGORIES=	mail elisp
MASTER_SITES=	LOCAL
MASTER_SITE_SUBDIR=	tota/${PORTNAME}
PKGNAMESUFFIX=	-${EMACS_PORT_NAME}
DISTNAME=	${PORTNAME}.${PORTVERSION}

MAINTAINER=	yasu@utahime.org
COMMENT=	Signature insertion tool for Emacs

LICENSE=	GPLv2

USE_EMACS=	yes

NO_WRKSUBDIR=	yes

OPTIONS_DEFINE=	DOCS

LISPDIR=	${PREFIX}/${EMACS_VERSION_SITE_LISPDIR}/${PORTNAME}

.include <bsd.port.options.mk>

do-build:
	cd ${WRKSRC}; ${EMACS_CMD} -batch -q -f batch-byte-compile c-sig.el

do-install:
	${MKDIR} ${LISPDIR}
	${INSTALL_DATA} ${WRKSRC}/c-sig.el* ${LISPDIR}
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
.for file in c-sig-eng.faq c-sig-eng.man c-sig-jp.faq c-sig-jp.man
	${INSTALL_MAN} ${WRKSRC}/${file} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
