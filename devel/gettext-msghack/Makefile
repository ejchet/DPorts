# New ports collection makefile for:	gettext-msghack
# Date created:		30 August 2007
# Whom:			Andrew Pantyukhin <infofarmer@FreeBSD.org>
#
# $FreeBSD: ports/devel/gettext-msghack/Makefile,v 1.3 2012/11/17 05:55:45 svnexp Exp $
#

PORTNAME=	msghack
PORTVERSION=	0.2
CATEGORIES=	devel
MASTER_SITES=	CENKES
PKGNAMEPREFIX=	gettext-
# Bundled in fedora gettext srpm

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Alter gettext po files in special ways

NO_BUILD=	yes
USE_BZIP2=	yes
USE_PYTHON=	yes
PLIST_FILES=	bin/${PORTNAME}

post-patch:
	@${REINPLACE_CMD} -e '1s|/usr/bin/python|${PYTHON_CMD}|'\
		${WRKSRC}/${PORTNAME}.py

do-install:
	@${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME}.py ${PREFIX}/bin/${PORTNAME}

.include <bsd.port.mk>
