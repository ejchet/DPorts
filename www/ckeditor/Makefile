# Created by: Joe Horn <joehorn@gmail.com>
#
# $FreeBSD: ports/www/ckeditor/Makefile,v 1.4 2012/12/05 01:21:42 svnexp Exp $

PORTNAME=	CKEditor
PORTVERSION=	4.0
CATEGORIES=	www
MASTER_SITES=	http://download.cksource.com/${PORTNAME}/${PORTNAME}/${PORTNAME}%20${PORTVERSION}/
DISTNAME=	ckeditor_${PORTVERSION}_full

MAINTAINER=	joehorn@gmail.com
COMMENT=	WYSIWYG editor to be used inside web page

LICENSE=	MPL

NO_BUILD=	yes
WRKSRC=		${WRKDIR}/ckeditor

do-install:
	@${INSTALL} -d -m 0755 ${WWWDIR}
	@(cd ${WRKSRC} && ${FIND} . | ${CPIO} -pdmu -R${WWWOWN}:${WWWGRP} ${WWWDIR})

.include <bsd.port.mk>
