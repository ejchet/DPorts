# Created by: sutra
# $FreeBSD: ports/www/trac-spam-filter/Makefile,v 1.8 2012/11/17 06:03:08 svnexp Exp $

PORTNAME=	TracSpamFilter
PORTVERSION=	0.2.1
PORTREVISION=	5
CATEGORIES=	www devel python
MASTER_SITES=	http://zhoushuqun.com/files/ \
		http://freebsd.unixfreunde.de/sources/
PKGNAMEPREFIX=	trac-

MAINTAINER=	zhoushuqun@gmail.com
COMMENT=	Allow different ways to reject contributions that contain spam

RUN_DEPENDS=	tracd:${PORTSDIR}/www/trac

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}dev

USE_PYTHON=	-2.7
USE_PYDISTUTILS=	easy_install
PYDISTUTILS_PKGVERSION=	${PORTVERSION}dev
PLIST_FILES=		%%PYTHON_SITELIBDIR%%/%%PYEASYINSTALL_EGG%%

.include <bsd.port.mk>
