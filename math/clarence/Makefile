# ex:ts=8
# Ports collection makefile for:	clarence
# Date created:			Jan 30, 2002
# Whom:				ijliao
#
# $FreeBSD: ports/math/clarence/Makefile,v 1.28 2012/11/17 05:59:19 svnexp Exp $
#

PORTNAME=	clarence
PORTVERSION=	0.4.4
PORTREVISION=	8
CATEGORIES=	math python
MASTER_SITES=	http://www.sourcefiles.org/Productivity_Tools/Calculators/ \
		ftp://ftp.tu-chemnitz.de/.SAN0/pub/linux/sunsite.unc-mirror/distributions/sourcemage/grimoire/fallback/fallback/

MAINTAINER=	psh@iki.fi
COMMENT=	Programmer's calculator

USE_GNOME=	pygtk2
USE_PYTHON=	yes
NO_BUILD=	yes
MAN1=		clarence.1
PLIST_FILES=	bin/clarence

post-patch:
	@${REINPLACE_CMD} -e "s,#!/usr/bin/python,#!/usr/bin/env python,g" ${WRKSRC}/clarence.py

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/clarence.py ${PREFIX}/bin/clarence
	${INSTALL_MAN} ${WRKSRC}/${MAN1} ${MAN1PREFIX}/man/man1

.include <bsd.port.mk>
