# New ports collection makefile for:	unfoo
# Date created:		13 August 2007
# Whom:			Andrew Pantyukhin <infofarmer@FreeBSD.org>
#
# $FreeBSD: ports/archivers/unfoo/Makefile,v 1.3 2012/11/17 05:54:24 svnexp Exp $
#

PORTNAME=	unfoo
PORTVERSION=	1.0.6
CATEGORIES=	archivers
MASTER_SITES=	CENKES
#http://obsoleet.org/code/unfoo/unfoo-1.0.6.sh

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Tiny sh(1) wrapper to simplify decompression of files

RUN_DEPENDS=	unace:${PORTSDIR}/archivers/unace \
		unrar:${PORTSDIR}/archivers/unrar \
		unzip:${PORTSDIR}/archivers/unzip \
		7z:${PORTSDIR}/archivers/p7zip

NO_BUILD=	yes
USE_BZIP2=	yes
PLIST_FILES=	bin/${PORTNAME}

post-patch:
	@${REINPLACE_CMD} -e '1s|/.*|/bin/sh|;s|==|=|' ${WRKSRC}/${PORTNAME}

do-install:
	@${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin/

.include <bsd.port.mk>
