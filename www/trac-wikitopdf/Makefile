# $FreeBSD: www/trac-wikitopdf/Makefile 313115 2013-02-28 17:06:36Z brooks $

PORTNAME=	${PYDISTUTILS_PKGNAME:S;^Trac;;S;Plugin$;;:tl}
PORTVERSION=	2.2.2
PORTREVISION=	5
CATEGORIES=	www devel python
MASTER_SITES=	${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	brooks
PKGNAMEPREFIX=	trac-
DISTNAME=	${PORTNAME}plugin-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Plugin to generate PDF documents from the Wiki

RUN_DEPENDS+=	htmldoc:${PORTSDIR}/textproc/htmldoc \
		tracd:${PORTSDIR}/www/trac

USE_PYTHON=	-2.7
USE_PYDISTUTILS=	easy_install
PYDISTUTILS_PKGNAME=	TracWikiToPdfPlugin
PLIST_FILES=		%%PYTHON_SITELIBDIR%%/%%PYEASYINSTALL_EGG%%
WRKSRC=			${WRKDIR}/${PORTNAME}plugin

.include <bsd.port.mk>
