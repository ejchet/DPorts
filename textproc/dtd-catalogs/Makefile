# New ports collection makefile for:	dtd-catalogs
# Date created:		23 January 1999
# Whom:			shige
#
# $FreeBSD: ports/textproc/dtd-catalogs/Makefile,v 1.12 2012/11/17 06:01:55 svnexp Exp $
#

PORTNAME=	dtd-catalogs
PORTVERSION=	1.2
CATEGORIES=	textproc
MASTER_SITES=	#
DISTFILES=	#

MAINTAINER=	ports@FreeBSD.org
COMMENT=	SGML DTDs catalogs

RUN_DEPENDS=	${ISO8879_CAT}:${PORTSDIR}/textproc/iso8879 \
		${ISO12083_CAT}:${PORTSDIR}/textproc/iso12083 \
		${HTML_CAT}:${PORTSDIR}/textproc/html \
		${LINUXDOC_CAT}:${PORTSDIR}/textproc/linuxdoc

NO_BUILD=	yes

# The following catalogs are listed in catalog-list-file actually.
ISO8879_CAT=	${LOCALBASE}/share/sgml/iso8879/catalog
ISO12083_CAT=	${LOCALBASE}/share/sgml/iso12083/catalog
HTML_CAT=	${LOCALBASE}/share/sgml/html/catalog
LINUXDOC_CAT=	${LOCALBASE}/share/sgml/linuxdoc/catalog

do-install:
	@${DO_NADA}

.include <bsd.port.mk>
