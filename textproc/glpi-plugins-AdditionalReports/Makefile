# New ports collection makefile for:   glpi-plugins-AdditionalReports
# Date created:        01 November 2009
# Whom:                ddurieux <d.durieux@siprossii.com>
#
# $FreeBSD: ports/textproc/glpi-plugins-AdditionalReports/Makefile,v 1.2 2012/11/17 06:01:56 svnexp Exp $
#

PORTNAME=	AdditionalReports
DISTVERSION=	1.3.0
CATEGORIES=	textproc
MASTER_SITES=	https://forge.indepnet.net/attachments/download/136/ \
		http://glpi.siprossii.com/distfiles/
PKGNAMEPREFIX=	glpi-plugins-
DISTNAME=	glpi-reports-1.3.0

MAINTAINER=	d.durieux@siprossii.com
COMMENT=	This plugin enables additional reports

RUN_DEPENDS=	glpi>=0.72:${PORTSDIR}/www/glpi

WRKSRC=		${WRKDIR}/reports
NO_BUILD=	yes
PKGMESSAGE=	${WRKDIR}/pkg-message
CPIOARGS=	--quiet -pdum -R

GLPIPLUGINDIR?=	www/glpi/plugins/reports

.include <bsd.port.pre.mk>

do-install:
	@${MKDIR} -m 0755 ${PREFIX}/${GLPIPLUGINDIR}
	@cd ${WRKSRC} && ${FIND} * -print | ${CPIO} ${CPIOARGS} ${WWWOWN}:${WWWGRP} ${PREFIX}/${GLPIPLUGINDIR}
	@${CHOWN} -R ${WWWOWN}:${WWWGRP} ${PREFIX}/${GLPIPLUGINDIR}

.include <bsd.port.post.mk>
