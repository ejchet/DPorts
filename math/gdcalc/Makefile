# New ports collection makefile for:	gdcalc
# Date created:				2002-06-29
# Whom:				Jan Srocker <Jan.Stocker@t-online.de>
#
# $FreeBSD: ports/math/gdcalc/Makefile,v 1.18 2012/11/17 05:59:20 svnexp Exp $
#    $MCom: ports/math/gdcalc/Makefile,v 1.1 2006/10/04 15:51:37 ahze Exp $

PORTNAME=	gdcalc
PORTVERSION=	2.15
PORTREVISION=	6
CATEGORIES=	math
MASTER_SITES=	http://bhepple.freeshell.org/dcalc/unix/

MAINTAINER=	araujo@FreeBSD.org
COMMENT=	Gnome-based scientific calculator

RUN_DEPENDS=	${LOCALBASE}/bin/gunits:${PORTSDIR}/math/units

USE_GNOME=	gnomehier libgnomeui
GNU_CONFIGURE=	yes

.include <bsd.port.mk>
