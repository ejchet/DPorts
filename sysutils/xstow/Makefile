# Created by: Alan Eldridge <alane@geeksrus.net>
# $FreeBSD: sysutils/xstow/Makefile 305477 2012-10-07 13:59:39Z rakuco $

PORTNAME=	xstow
PORTVERSION=	1.0.0
CATEGORIES=	sysutils
MASTER_SITES=	SF/${PORTNAME}/

MAINTAINER=	rakuco@FreeBSD.org
COMMENT=	Enhanced replacement for GNU stow written in C++

USE_BZIP2=	yes
GNU_CONFIGURE=	yes
MAKE_JOBS_SAFE=	yes

.if defined(WITH_DEBUG)
CONFIGURE_ARGS+=	--enable-debug
.endif

PLIST_FILES=	bin/merge-info bin/xstow bin/xstow-static bin/xstow-stow
MAN1=		merge-info.1 xstow.1
MAN5=		xstow.ini.5

# This port always installs documentation, so we cannot respect NOPORTDOCS
PORTDOCS=	AUTHORS COPYING ChangeLog NEWS README TODO xstow.html xstow.ini xstow.ini.html

post-install:
	(cd ${WRKSRC} && \
	 ${INSTALL_MAN} AUTHORS COPYING ChangeLog NEWS README TODO ${DOCSDIR})

.include <bsd.port.mk>
