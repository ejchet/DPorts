# Ports collection makefile for:  horde-hermes
# Date created:			  Jul 20, 2008
# Whom:				  Beech Rintoul <horde@FreeBSD.org
#
# $FreeBSD: deskutils/horde3-hermes/Makefile 316464 2013-04-24 18:10:30Z ak $
#

PORTNAME=	hermes
PORTVERSION=	1.0.1
PORTREVISION=	3
CATEGORIES=	deskutils www

MAINTAINER=	horde@FreeBSD.org
COMMENT=	Time tracking application

USE_HORDE=	base pkg-message
USES=		gettext
PORTDOCS=	README CHANGES CREDITS INSTALL TODO

BUILD_DEPENDS+=	${HORBAS}/turba/minisearch.php:${PORTSDIR}/mail/horde3-turba \
		${HORBAS}/nag/data.php:${PORTSDIR}/deskutils/horde3-nag \
		${HORBAS}/whups/index.php:${PORTSDIR}/devel/horde3-whups

.include "${.CURDIR}/../../www/horde3-base/bsd.horde.mk"
.include <bsd.port.mk>
