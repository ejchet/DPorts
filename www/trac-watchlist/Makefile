# Created by: Hung-Yi Chen <gaod@hychen.org>
# $FreeBSD: www/trac-watchlist/Makefile 323090 2013-07-16 05:43:56Z miwi $

PORTNAME=	watchlist
PORTVERSION=	1.0.${SVN_REV}
CATEGORIES=	www devel python
MASTER_SITES=	http://distfiles.cse.tw/ \
		http://trac-hacks.org/changeset/${SVN_REV}/watchlistplugin?old_path=/&format=zip&filename=/
PKGNAMEPREFIX=	trac-
DISTNAME=	${PORTNAME}plugin-r${SVN_REV}

MAINTAINER=	gaod@hychen.org
COMMENT=	Provide watchlist feature for wikis and tickets of Trac

LICENSE=	BSD

SVN_REV=	11526

RUN_DEPENDS+=	tracd:${PORTSDIR}/www/trac

WRKSRC=		${WRKDIR}/${PORTNAME}plugin/0.12
USE_ZIP=	yes
USE_PYTHON=	-2.7
USE_PYDISTUTILS=	easy_install

FETCH_BEFORE_ARGS=	-o ${DISTFILES}
PYDISTUTILS_PKGNAME=	TracWatchlistPlugin
PYDISTUTILS_PKGVERSION=	${PORTVERSION:C/.${SVN_REV}//g}
#PLIST_FILES=		%%PYTHON_SITELIBDIR%%/%%PYEASYINSTALL_EGG%%

.include <bsd.port.mk>
